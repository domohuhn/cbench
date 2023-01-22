#!/usr/bin/python3
# A compile time benchmark for the ninja build system.
#
# SPDX-License-Identifier: MIT
# See LICENSE for the full text of the license

import os
import math
import json
import datetime
import argparse

# some global values
version_key ='cbench'
file_version_key ='cbench_file_version'
files_key = 'files'
version ='0.1.0'
file_version ='1'
output_key = 'output'
mean_key = 'mean'
stddev_key = 'stddev'
durations_key = 'durations'
tag_key = 'tag'
timestamp_key = 'timestamp'
output_filename = '.cbench_baseline.json'
jobs_key = 'jobs'
path_key = 'path'


class parsed_log:
    def __init__(self, files):
        """Constructs a new class instance for a parsed log"""
        self.files = files
    
    def total_time(self):
        """Returns the total compilation time in ms"""
        duration = 0
        for f in self.files:
            duration += self.files[f].duration
        return duration
    
    def executed_commands(self):
        """Returns the number of executed commands"""
        return len(self.files)

class file_data:
    def __init__(self, start: str, end: str, timestamp: str, output: str):
        """Constructs a new file record.

        Arguments:
        start -- Start time of compilation in ms
        end -- End time of compilation in ms
        timestamp -- timestamp of output in ns
        output -- output file
        """
        self.name = output
        self.start = int(start)
        self.end = int(end)
        self.timestamp = int(timestamp)
        self.duration = self.end - self.start
    
    def update(self, start: str, end: str, timestamp: str, output: str):
        new_ts = int(timestamp)
        if new_ts>self.timestamp and output==self.name:
            self.start = int(start)
            self.end = int(end)
            self.timestamp = int(timestamp)
            self.duration = self.end - self.start
        elif output!=self.name:
            raise RuntimeError("Cannot update file '{}' with '{}'!".format(self.name,output))
    
    def __str__(self) -> str:
        return "{{'duration_ms':{}}}".format(self.duration)
        
    def __repr__(self) -> str:
        return str(self)

def parse_ninja_log(path: str) -> parsed_log:
    """Parses the ninja log file and extracts the compilation times."""
    ninja_log = open(path, "r")
    lines = ninja_log.readlines()
    first = lines.pop(0)
    if not "# ninja log v5" in first:
        raise RuntimeError("Failed to open '{}': the file does not seem to be a ninja log!\nExpected '# ninja log v5', got '{}'".format(path, first))
    
    file_dict = {}
    for line in lines:
        data = line.split()
        if len(data)!=5:
            raise RuntimeError("Failed to open '{}': the file does not seem to be a ninja log!".format(path))

        start = data[0]
        end = data[1]
        timestamp = data[2]
        output = data[3]
        if timestamp=='0':
            continue
        if output in file_dict:
            file_dict[output].update(start,end,timestamp,output)
        else:
            file = file_data(start,end,timestamp,output)
            file_dict[output] = file

    return parsed_log(file_dict)

def process_baseline_data(args, passes : list):
    rv = []
    first = passes.pop(0)
    for f in first.files:
        mean = first.files[f].duration
        sqrmean = mean*mean
        count = 1.0
        durations = [mean]
        for p in passes:
            if f in p.files:
                mean += p.files[f].duration
                sqrmean += p.files[f].duration*p.files[f].duration
                count += 1.0
                durations.append(p.files[f].duration)
        vals = {}
        mean = mean/count
        vals[output_key] = f
        vals[mean_key] = mean
        vals[stddev_key] = math.sqrt( (sqrmean - count*(mean*mean))/(count-1.0))
        vals[durations_key] = durations
        rv.append(vals)
    rv.sort(key=lambda x : x[mean_key])
    dict = {}
    dict[version_key] = version
    dict[file_version_key] = file_version
    dict[tag_key] = args.tag
    dict[jobs_key] = args.jobs
    dict[path_key] = args.workdir
    dict[timestamp_key] = "{}".format(datetime.datetime.now())
    dict[files_key] = rv
    return dict

def write_json(report : dict, output_path : str ='cbench_baseline.json'):
    json_object = json.dumps(report, indent=4)
    with open(output_path, "w") as outfile:
        outfile.write(json_object)


def read_json(input_path : str ='cbench_baseline.json') -> dict:
    with open(input_path, "r") as infile:
        txt = infile.read()
        data = json.loads(txt)
        if not file_version_key in data or not files_key in data or not data[file_version_key]==file_version:
            raise RuntimeError("File '{}' is not a baseline dictionary!".format(input_path))
        return data

def run_compiler(jobs: int):
    os.system('ninja clean')
    os.system('ninja -j{}'.format(jobs))
    return parse_ninja_log('.ninja_log')

def create_baseline(args) -> dict:
    passes = []
    count = args.baseline
    for i in range(0,count):
        parsed = run_compiler(args.jobs)
        print("Run {}/{}     : Duration: {} ms for {} commands".format(i+1,count,parsed.total_time(),parsed.executed_commands()))
        passes.append(parsed)
    report = process_baseline_data(args,passes)
    print_baseline(report,args)
    write_json(report)
    return report

def print_baseline(baseline:dict, args):
    print("\n\n\n===========================================================")
    print("Compilation baseline:\n{}".format(datetime.datetime.now()))
    if args.tag is not None:
        print("Tag: '{}'".format(args.tag))
    print("{:30} : {}\n""".format('Duration (std dev)', 'File'))
    files = baseline['files']
    for f in files:
        print("{:10.2f} ms (+-{:10.2f} ms) : {}".format(f[mean_key],f[stddev_key],f[output_key]))

def find_in_baseline(baseline:dict, name):
    files = baseline['files']
    for f in files:
        if f[output_key] == name:
            return f
    return None

diff_ms_key = 'diff_ms'
diff_pct_key = 'diff_pct'
sig_key = 'sig'

def compare_baseline(baseline:dict, current):
    rv = []
    for f in current.files:
        file = current.files[f]
        bs = find_in_baseline(baseline,file.name)
        if bs is None:
            print("skipping "+file.name + " : not in baseline!")
            continue
        vals = {}
        diff_ms = file.duration - bs[mean_key]
        vals[output_key] = file.name
        vals[mean_key] = bs[mean_key]
        vals[stddev_key] = bs[stddev_key]
        vals[diff_ms_key] = diff_ms
        if bs[mean_key]>0:
            vals[diff_pct_key] = diff_ms/bs[mean_key]*100
        else:
             vals[diff_pct_key] = 0
        if bs[stddev_key]>0:
            vals[sig_key] = abs(diff_ms)/bs[stddev_key]
        else:
            vals[sig_key] = abs(diff_ms)
        rv.append(vals)
    rv.sort(key=lambda x : x[sig_key])
    return rv

def compute_total_changes(changes:list):
    """Computes the total change of the compile time and its significance.
    
    The assumption is that the uncertainties are not correlated.
    Returns the total time in s, change to previous in s, and standard dev of total."""
    total_sum = 0
    total_diff = 0
    total_var = 0
    for r in changes:
        total_sum += r[mean_key]
        total_diff += r[diff_ms_key]
        total_var += r[stddev_key]*r[stddev_key]
    total_var = math.sqrt(total_var)
    return total_sum/1000.0, total_diff/1000.0, total_var/1000.0

def compute_probability(x:float):
    """Compute the chance that a random value is outside of the interval [mean-x*sigma,mean+x*sigma]
    when assuming a gaussian distribution.
    
    Arguments:
    x -- diff from mean in standard deviations"""
    return 1.0 - math.erf(x/(math.sqrt(2)))


def print_significant_changes(baseline:dict, changes:list, args):
    limit = args.sigma
    print("""
Compile time benchmark report.
cbench {}
{}
Significant changes larger than {} stddevs
Change [ms]  (percent, stddevs) : file
================================================
""".format(version,datetime.datetime.now(),limit))
    for r in changes:
        if r[sig_key]>limit:
            print("{:10.1f} ms ({:5.1f} %, {:5.1f}) : {}".format(r[diff_ms_key],r[diff_pct_key],r[sig_key],r[output_key]))
    total, diff, stddev = compute_total_changes(changes)
    print("\n================================================")
    print("Baseline     : {:10.1f} s".format(total))
    print("Standard dev : {:10.1f} s".format(stddev))
    print("created      : {}".format(baseline[timestamp_key]))
    print("baseline jobs: {}".format(baseline[jobs_key]))
    if baseline[tag_key] is not None:
        print("old tag      : {:10}".format(baseline[tag_key]))
    print("New          : {:10.1f} s".format(total + diff))
    if args.tag is not None:
        print("New tag      : {:10}".format(args.tag))
    print("Change       : {:10.1f} s".format(diff))
    print("jobs         : {}".format(args.jobs))
    if stddev>0:
        sig = abs(diff)/stddev
        print("Change/stddev: {:10.1f}".format(sig))
        p = compute_probability(sig)
        print("p-value      : {:10.5f}".format(p))
        print("(a p-value smaller than 0.05 indicates a significant change)")
        if baseline[jobs_key]!=args.jobs:
            print("warning: different numbers of jobs may lead to noisy measurements!")
    else:
        print("Error while computing significance! Standard deviation is 0!")

def run_benchmark(args):
    try:
        baseline = read_json()
        current = run_compiler(args.jobs)
        result = compare_baseline(baseline, current)
        print_significant_changes(baseline, result, args)
    except FileNotFoundError:
        print("Failed to read baseline data.")

def get_def_job_count() -> int:
    """Returns the number of cpu cores minus 2 or 1 if there are too few cores."""
    cnt = os.cpu_count()
    if cnt>2:
        return cnt-2
    else:
        return 1


def dir_path(string: str):
    """Checks if a given string is a valid directory."""
    if os.path.isdir(string):
        return string
    else:
        raise NotADirectoryError(string)

def print_version():
    """Prints the version and exits the program."""
    print(version)
    exit(0)

def get_commandline_arguments():
    """"Parses the arguments from the command line and performs error checks.
    
    Returns the arguments as python object on success."""
    jobs = get_def_job_count()
    parser = argparse.ArgumentParser(prog = 'cbench',
                    description = 'A benchmark to measure and improve compilation times in conjunction with the ninja build system. The program will execute "ninja clean" and "ninja -j J" in the given working directory and parse the .ninja_log file afterwards. Create a baseline by running e.g. "cbench -b 5" first, then modify your code and see the compilation speed changes with "cbench".')
    parser.add_argument('workdir', type=dir_path, default='.',  nargs='?', help="the directory where the ninja commands are executed.") 
    parser.add_argument('-j', '--jobs', type=int, default=jobs, metavar='J',
                    help="""the number of jobs to spawn when compiling. Less parallel jobs reduce the noise. You should set this value to no more than your physical core count (no hyperthreading). J must be an integer larger than 1. [defaults to {}]""".format(jobs))
    parser.add_argument('-b', '--baseline', type=int, metavar='N', help='creates a baseline by running the compilation N times. N must be an integer larger than 2. If the argument is omitted, then the current compilation will be comared to the baseline.')
    parser.add_argument('-s', '--sigma', type=float, default=3.0, metavar='S', help='the required change to the compilation time as S*sigma (standard deviations) of a file so that it is added to the report. Must be a float. [defaults to 3.0]')
    parser.add_argument('--tag', type=str, metavar='TAG', help='Adds a tag to the generated report.')
    parser.add_argument('--version', action='store_true', default=False, help='prints the program version')
    try:
        args = parser.parse_args()
        if args.version:
            print_version()
        if args.jobs < 1:
            print("error: The argument to '-j' must be a positive integer!")
            exit(-1)
        os.chdir(args.workdir)
        if not os.path.exists('rules.ninja'):
            print("error: file {}/rules.ninja does no exist! given path is not a build directory for ninja!".format(args.workdir))
            exit(-1)
        return args
    except NotADirectoryError as inst:
        print("error: The given path '{}' is not a directory!".format(inst))
        exit(-1)

def main():
    args = get_commandline_arguments()
    if args.baseline is not None:
        print("Creating compilation baseline ...")
        if args.baseline<3:
            print("error: You should at least run the compilation 3 times to get an estimation of the variance of the baseline! Please pass '-b 3' as argument!")
            exit(-1)
        create_baseline(args)
    else:
        print("Running compilation benchmark ...")
        run_benchmark(args)

if __name__ == '__main__':
    main()

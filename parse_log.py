# A parser for the .ninja_log.
#
# SPDX-License-Identifier: MIT
# See LICENSE for the full text of the license

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




def parse_ninja_log(path):
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


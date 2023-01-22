# Example 'Slow mocks'

This example can be used to test the compilation benchmark with two different sets of source files.
The example code does nothing and simply exists as translation units that take some time to compile.

## Requirements
You will need the following programs to run the example:

 - ninja
 - CMake > 3.15
 - python 3
 - a working c++ compiler

## Set up the compilation for the example

Running the following command should set up the build:

    cmake -G"Ninja" -DCMAKE_BUILD_TYPE="Release" <path to example/slow_mocks>

CMake will download googletest and add it to the compilation.
Test if the compilation works by calling:

    ninja

## Create a baseline

Now that the example is set up, we will first create a baseline that will be used for the comparision later. Make sure to close all other programs, as they will add noise to the compilation times.

    cbench.py -b 5 --tag "slow_mocks"

Now its time to get a coffee, as this may take a few minutes. After the command has finished, you should see something like this:

    Creating compilation baseline ...
    [1/1] Cleaning all built files...
    Cleaning... 35 files.
    [35/35] Linking CXX executable test_example_lib.exe
    Run 1/5     : Duration: 141802 ms for 36 commands
    [1/1] Cleaning all built files...
    Cleaning... 35 files.
    [35/35] Linking CXX executable test_example_lib.exe
    Run 2/5     : Duration: 141447 ms for 36 commands
    [1/1] Cleaning all built files...
    Cleaning... 35 files.
    [35/35] Linking CXX executable test_example_lib.exe
    Run 3/5     : Duration: 141567 ms for 36 commands
    [1/1] Cleaning all built files...
    Cleaning... 35 files.
    [35/35] Linking CXX executable test_example_lib.exe
    Run 4/5     : Duration: 141788 ms for 36 commands
    [1/1] Cleaning all built files...
    Cleaning... 35 files.
    [35/35] Linking CXX executable test_example_lib.exe
    Run 5/5     : Duration: 141970 ms for 36 commands
    
    
    
    ===========================================================
    Compilation baseline:
    2023-01-22 19:14:49.734219
    Tag: 'slow_mocks'
    Duration (std dev)             : File
    
         46.20 ms (+-      0.45 ms) : lib/libgmock_main.a
         47.80 ms (+-      2.68 ms) : lib/libgtest_main.a
         50.00 ms (+-      1.73 ms) : lib/libgmock.a
         71.60 ms (+-      1.95 ms) : lib/libgtest.a
        185.40 ms (+-      2.30 ms) : libexample_lib.a
        684.00 ms (+-      2.74 ms) : test_example_lib.exe
        786.60 ms (+-     12.95 ms) : _deps/googletest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj
        801.40 ms (+-      4.56 ms) : CMakeFiles/test_example_lib.dir/test/test_a.cpp.obj
       1025.60 ms (+-      2.30 ms) : _deps/googletest-build/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.obj
       2742.80 ms (+-     35.45 ms) : _deps/googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.obj
       2920.00 ms (+-      3.67 ms) : CMakeFiles/example_lib.dir/src/eleven.cpp.obj
       2920.20 ms (+-      4.09 ms) : CMakeFiles/example_lib.dir/src/nine.cpp.obj
       2920.40 ms (+-      6.43 ms) : CMakeFiles/example_lib.dir/src/five.cpp.obj
       2921.00 ms (+-      6.48 ms) : CMakeFiles/example_lib.dir/src/twelve.cpp.obj
       2923.00 ms (+-      7.11 ms) : CMakeFiles/example_lib.dir/src/one.cpp.obj
       2923.00 ms (+-      1.87 ms) : CMakeFiles/example_lib.dir/src/ten.cpp.obj
       2923.60 ms (+-     10.60 ms) : CMakeFiles/example_lib.dir/src/two.cpp.obj
       2925.00 ms (+-      7.62 ms) : CMakeFiles/example_lib.dir/src/six.cpp.obj
       2925.60 ms (+-      2.07 ms) : CMakeFiles/example_lib.dir/src/eight.cpp.obj
       2926.20 ms (+-      4.21 ms) : CMakeFiles/example_lib.dir/src/seven.cpp.obj
       2926.80 ms (+-     13.42 ms) : CMakeFiles/example_lib.dir/src/three.cpp.obj
       2928.00 ms (+-      3.67 ms) : CMakeFiles/example_lib.dir/src/four.cpp.obj
       4006.00 ms (+-      0.00 ms) : build.ninja
       7319.20 ms (+-     17.84 ms) : CMakeFiles/test_example_lib.dir/test/test_four.cpp.obj
       7327.60 ms (+-     23.43 ms) : CMakeFiles/test_example_lib.dir/test/test_nine.cpp.obj
       7331.60 ms (+-     21.76 ms) : CMakeFiles/test_example_lib.dir/test/test_twelve.cpp.obj
       7337.00 ms (+-     12.41 ms) : CMakeFiles/test_example_lib.dir/test/test_three.cpp.obj
       7337.60 ms (+-     32.27 ms) : CMakeFiles/test_example_lib.dir/test/test_eleven.cpp.obj
       7341.80 ms (+-     32.73 ms) : CMakeFiles/test_example_lib.dir/test/test_ten.cpp.obj
       7343.40 ms (+-     58.95 ms) : CMakeFiles/test_example_lib.dir/test/test_seven.cpp.obj
       7348.40 ms (+-     51.99 ms) : CMakeFiles/test_example_lib.dir/test/test_eight.cpp.obj
       7349.00 ms (+-     31.86 ms) : CMakeFiles/test_example_lib.dir/test/test_one.cpp.obj
       7349.20 ms (+-     59.89 ms) : CMakeFiles/test_example_lib.dir/test/test_six.cpp.obj
       7349.60 ms (+-     46.68 ms) : CMakeFiles/test_example_lib.dir/test/test_five.cpp.obj
       7360.80 ms (+-     32.20 ms) : CMakeFiles/test_example_lib.dir/test/test_two.cpp.obj
       8089.40 ms (+-      9.86 ms) : _deps/googletest-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj

## How to reduce noise

If the baseline shows a lot of noise (high standard deviations, more than 100ms per file), there are certain steps you can try to reduce the noise:

 - Close all other programs
 - Using a virtual machine or windows subsystem for linux is discouraged, as they tend to cause noisy measurements as well.
 - Reduce the number of jobs (via -j). Try the number of physical cores (no hyperthreading), or reduce it further, maybe down to one job.

## Run the benchmark

Now, we can run the benchmark for the first time:

    cbench.py

You should see no significant changes in the compilation times. If a small p-value < 0.05 is reported, you should try to reduce the noise during the compilation. The previous section contains tips how you can reduce the noise.
We can now update the source files and make another benchmark by running:

    ./make_fast_code.sh
    cbench.py --tag "faster mocks"

Running the "make_fast_code.sh" script changes the code according to the advice in the [google mock cookbook - Making Compilation Faster](https://github.com/google/googletest/blob/main/docs/gmock_cook_book.md#making-the-compilation-faster). The benchmark report will now list the improved compilation times:

    Running compilation benchmark ...
    [1/1] Cleaning all built files...
    Cleaning... 35 files.
    [35/35] Linking CXX executable test_example_lib.exe
    
    Compile time benchmark report.
    cbench 0.1.0
    2023-01-22 19:22:02.855295
    Significant changes larger than 3.0 stddevs
    Change [ms]  (percent, stddevs) : file
    ================================================
    
       -1199.2 ms (-16.3 %,  20.0) : CMakeFiles/test_example_lib.dir/test/test_six.cpp.obj
       -1208.4 ms (-16.5 %,  20.5) : CMakeFiles/test_example_lib.dir/test/test_seven.cpp.obj
       -1294.4 ms (-17.6 %,  24.9) : CMakeFiles/test_example_lib.dir/test/test_eight.cpp.obj
       -1285.6 ms (-17.5 %,  27.5) : CMakeFiles/test_example_lib.dir/test/test_five.cpp.obj
       -1191.8 ms (-16.2 %,  36.4) : CMakeFiles/test_example_lib.dir/test/test_ten.cpp.obj
       -1238.8 ms (-16.8 %,  38.5) : CMakeFiles/test_example_lib.dir/test/test_two.cpp.obj
       -1229.0 ms (-16.7 %,  38.6) : CMakeFiles/test_example_lib.dir/test/test_one.cpp.obj
       -1331.6 ms (-18.1 %,  41.3) : CMakeFiles/test_example_lib.dir/test/test_eleven.cpp.obj
       -1199.6 ms (-16.4 %,  51.2) : CMakeFiles/test_example_lib.dir/test/test_nine.cpp.obj
       -1197.6 ms (-16.3 %,  55.0) : CMakeFiles/test_example_lib.dir/test/test_twelve.cpp.obj
       -1179.2 ms (-16.1 %,  66.1) : CMakeFiles/test_example_lib.dir/test/test_four.cpp.obj
        -261.0 ms (-38.2 %,  95.3) : test_example_lib.exe
       -1232.0 ms (-16.8 %,  99.3) : CMakeFiles/test_example_lib.dir/test/test_three.cpp.obj
        1976.6 ms (246.6 %, 433.4) : CMakeFiles/test_example_lib.dir/test/test_a.cpp.obj
    
    ================================================
    Baseline     :      141.7 s
    Standard dev :        0.1 s
    created      : 2023-01-22 19:14:49.734219
    baseline jobs: 4
    old tag      : slow_mocks
    New          :      128.7 s
    Change       :      -13.0 s
    jobs         : 4
    Change/stddev:       92.4
    p-value      :    0.00000
    (a p-value smaller than 0.05 indicates a significant change)

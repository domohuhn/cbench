# Compilation benchmark for ninja

This repository contains a benchmark for compilation times when using the build tool ninja.
Compiled languages like C and C++ often have problems with their build times. When a project reaches a certain size,
compilation times tend to slow down. At some point, developers will want to optimize the compilation times
to improve the compile-test workflow. The program "cbench" in this repository can help you to identify the files
that are slow to compile, and it also provides a tool to check if your changes have had an impact on the
build times without relying on rough estimations. The program will report not only the changes in the compile times, 
but also the significance of the changes using gaussian distributions. 

## Requirements

You will need the following programs to use this benchmark:

  - python 3
  - the ninja build system

## Getting started

If you don't want to read any docs, then just grab cbench.py and run it via:

    cbench.py -h

Checkout the [example directory](examples/README.md) for a usage example. 
There is a full example project with code to benchmark, instructions on how to use the program and expected outputs.

## License

The whole code in this repository is licensed under the MIT license. See LICENSE for the full text.

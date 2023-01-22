cmake_minimum_required(VERSION 3.15)

project(MyProject)

add_library(example_lib
  src/one.cpp
  src/two.cpp
  src/three.cpp
  src/four.cpp
  src/five.cpp
  src/six.cpp
  src/seven.cpp
  src/eight.cpp
  src/nine.cpp
  src/ten.cpp
  src/eleven.cpp
  src/twelve.cpp
)
target_include_directories(example_lib PUBLIC src)

include(FetchContent)
FetchContent_Declare(
    googletest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG        v1.13.0
)
FetchContent_MakeAvailable(googletest)

add_executable(test_example_lib 
    test/test_a.cpp
    test/test_one.cpp
    test/test_two.cpp
    test/test_three.cpp
    test/test_four.cpp
    test/test_five.cpp
    test/test_six.cpp
    test/test_seven.cpp
    test/test_eight.cpp
    test/test_nine.cpp
    test/test_ten.cpp
    test/test_eleven.cpp
    test/test_twelve.cpp
)
target_link_libraries(test_example_lib PRIVATE example_lib gtest gtest_main gmock)


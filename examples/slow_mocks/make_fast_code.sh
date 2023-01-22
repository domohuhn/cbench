#!/bin/bash

for NAME in one two three four five six seven eight nine ten eleven twelve
do
    echo "#pragma once

// This file serves as a test for the compilation benchmark.

#include <string>

class ${NAME} {
public:
    virtual ~${NAME}() {}
    virtual bool methodA(std::string a);
    virtual bool methodB(std::string a);
    virtual bool methodC(std::string a);
    virtual bool methodD(std::string a);
    virtual bool methodE(std::string a);
    virtual bool methodF(std::string a);
    virtual bool methodG(std::string a);
    virtual bool methodH(std::string a);
    virtual bool methodI(std::string a);
    virtual bool methodJ(std::string a);
    virtual bool methodK(std::string a);
    virtual bool methodL(std::string a);
    virtual bool methodM(std::string a);
};
" > src/${NAME}.hpp

    echo "#include \"${NAME}.hpp\"
#include <regex>

bool ${NAME}::methodA(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodB(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodC(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodD(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodE(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodF(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodG(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodH(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodI(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodJ(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodK(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodL(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}
bool ${NAME}::methodM(std::string a) {
    std::smatch m;
    return std::regex_search(a,m,std::regex(\".*(hello there|general kenobi)\"));
}

" > src/${NAME}.cpp


    echo "
#pragma once
#include \"${NAME}.hpp\"
#include \"gmock/gmock.h\"

class Mock${NAME} : public ${NAME} {
 public:
  Mock${NAME}();
  virtual ~Mock${NAME}();
  MOCK_METHOD(bool, methodA, (std::string a), (override));
  MOCK_METHOD(bool, methodB, (std::string a), (override));
  MOCK_METHOD(bool, methodC, (std::string a), (override));
  MOCK_METHOD(bool, methodD, (std::string a), (override));
  MOCK_METHOD(bool, methodE, (std::string a), (override));
  MOCK_METHOD(bool, methodF, (std::string a), (override));
  MOCK_METHOD(bool, methodG, (std::string a), (override));
  MOCK_METHOD(bool, methodH, (std::string a), (override));
  MOCK_METHOD(bool, methodI, (std::string a), (override));
  MOCK_METHOD(bool, methodJ, (std::string a), (override));
  MOCK_METHOD(bool, methodK, (std::string a), (override));
  MOCK_METHOD(bool, methodL, (std::string a), (override));
  MOCK_METHOD(bool, methodM, (std::string a), (override));
};

" > test/mocks/mock_${NAME}.hpp

    echo "
#include \"${NAME}.hpp\"
#include \"gtest/gtest.h\"
#include \"mocks/mock_one.hpp\"
#include \"mocks/mock_two.hpp\"
#include \"mocks/mock_three.hpp\"
#include \"mocks/mock_four.hpp\"
#include \"mocks/mock_five.hpp\"
#include \"mocks/mock_six.hpp\"
#include \"mocks/mock_seven.hpp\"
#include \"mocks/mock_eight.hpp\"
#include \"mocks/mock_nine.hpp\"
#include \"mocks/mock_ten.hpp\"
#include \"mocks/mock_eleven.hpp\"
#include \"mocks/mock_twelve.hpp\"

using namespace testing;

TEST(${NAME}, test1) {
    Mockone obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}


TEST(${NAME}, test2) {
    Mocktwo obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}

TEST(${NAME}, test3) {
    Mockthree obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}

TEST(${NAME}, test4) {
    Mockfour obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}

TEST(${NAME}, test5) {
    Mockfive obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}

TEST(${NAME}, test6) {
    Mocksix obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}

TEST(${NAME}, test7) {
    Mockseven obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}


TEST(${NAME}, test8) {
    Mockeight obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}


TEST(${NAME}, test9) {
    Mocknine obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}

TEST(${NAME}, test10) {
    Mockten obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}

TEST(${NAME}, test11) {
    Mockeleven obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}


TEST(${NAME}, test12) {
    Mocktwelve obj;
    EXPECT_CALL(obj, methodA(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodB(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodC(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodD(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodE(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodF(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodG(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodH(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodI(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodJ(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodK(\"moo\")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA(\"moo\"));
    EXPECT_TRUE(obj.methodB(\"moo\"));
    EXPECT_TRUE(obj.methodC(\"moo\"));
    EXPECT_TRUE(obj.methodD(\"moo\"));
    EXPECT_TRUE(obj.methodE(\"moo\"));
    EXPECT_TRUE(obj.methodF(\"moo\"));
    EXPECT_TRUE(obj.methodG(\"moo\"));
    EXPECT_TRUE(obj.methodH(\"moo\"));
    EXPECT_TRUE(obj.methodI(\"moo\"));
    EXPECT_TRUE(obj.methodJ(\"moo\"));
    EXPECT_TRUE(obj.methodK(\"moo\"));
    EXPECT_TRUE(obj.methodL(\"moo\"));
    EXPECT_TRUE(obj.methodM(\"moo\"));
}


" > test/test_${NAME}.cpp


done

echo "#include \"gtest/gtest.h\"

#include \"gtest/gtest.h\"
#include \"mocks/mock_one.hpp\"
#include \"mocks/mock_two.hpp\"
#include \"mocks/mock_three.hpp\"
#include \"mocks/mock_four.hpp\"
#include \"mocks/mock_five.hpp\"
#include \"mocks/mock_six.hpp\"
#include \"mocks/mock_seven.hpp\"
#include \"mocks/mock_eight.hpp\"
#include \"mocks/mock_nine.hpp\"
#include \"mocks/mock_ten.hpp\"
#include \"mocks/mock_eleven.hpp\"
#include \"mocks/mock_twelve.hpp\"

Mockone::Mockone()=default;
Mocktwo::Mocktwo()=default;
Mockthree::Mockthree()=default;
Mockfour::Mockfour()=default;
Mockfive::Mockfive()=default;
Mocksix::Mocksix()=default;
Mockseven::Mockseven()=default;
Mockeight::Mockeight()=default;
Mocknine::Mocknine()=default;
Mockten::Mockten()=default;
Mockeleven::Mockeleven()=default;
Mocktwelve::Mocktwelve()=default;
Mockone::~Mockone()=default;
Mocktwo::~Mocktwo()=default;
Mockthree::~Mockthree()=default;
Mockfour::~Mockfour()=default;
Mockfive::~Mockfive()=default;
Mocksix::~Mocksix()=default;
Mockseven::~Mockseven()=default;
Mockeight::~Mockeight()=default;
Mocknine::~Mocknine()=default;
Mockten::~Mockten()=default;
Mockeleven::~Mockeleven()=default;
Mocktwelve::~Mocktwelve()=default;

TEST(Moo, test1) {
    // this is a test
}

" > test/test_a.cpp

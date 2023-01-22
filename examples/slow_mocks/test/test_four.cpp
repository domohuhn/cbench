
#include "four.hpp"
#include "gtest/gtest.h"
#include "mocks/mock_one.hpp"
#include "mocks/mock_two.hpp"
#include "mocks/mock_three.hpp"
#include "mocks/mock_four.hpp"
#include "mocks/mock_five.hpp"
#include "mocks/mock_six.hpp"
#include "mocks/mock_seven.hpp"
#include "mocks/mock_eight.hpp"
#include "mocks/mock_nine.hpp"
#include "mocks/mock_ten.hpp"
#include "mocks/mock_eleven.hpp"
#include "mocks/mock_twelve.hpp"

using namespace testing;

TEST(four, test1) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}


TEST(four, test2) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}

TEST(four, test3) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}

TEST(four, test4) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}

TEST(four, test5) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}

TEST(four, test6) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}

TEST(four, test7) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}


TEST(four, test8) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}


TEST(four, test9) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}

TEST(four, test10) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}

TEST(four, test11) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}


TEST(four, test12) {
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
    EXPECT_CALL(obj, methodK("moo")).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodL(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_CALL(obj, methodM(_)).Times(AtLeast(1)).WillOnce(Return(true));
    EXPECT_TRUE(obj.methodA("moo"));
    EXPECT_TRUE(obj.methodB("moo"));
    EXPECT_TRUE(obj.methodC("moo"));
    EXPECT_TRUE(obj.methodD("moo"));
    EXPECT_TRUE(obj.methodE("moo"));
    EXPECT_TRUE(obj.methodF("moo"));
    EXPECT_TRUE(obj.methodG("moo"));
    EXPECT_TRUE(obj.methodH("moo"));
    EXPECT_TRUE(obj.methodI("moo"));
    EXPECT_TRUE(obj.methodJ("moo"));
    EXPECT_TRUE(obj.methodK("moo"));
    EXPECT_TRUE(obj.methodL("moo"));
    EXPECT_TRUE(obj.methodM("moo"));
}




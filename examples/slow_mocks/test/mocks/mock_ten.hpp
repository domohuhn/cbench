
#pragma once
#include "ten.hpp"
#include "gmock/gmock.h"

class Mockten : public ten {
 public:
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



#include "gmock/gmock.h"
#include "Calculator.h"

using namespace testing;

class CalculatorTests: public Test {

public:
    Calculator calculator;
};

TEST_F(CalculatorTests, sum_two_numbers) {
    ASSERT_THAT(calculator.sum(2, 2), Eq(4));
}

TEST_F(CalculatorTests, multiply_two_numbers) {
    ASSERT_THAT(calculator.multiply(3, 3), Eq(9));
}
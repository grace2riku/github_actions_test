#include "CppUTest/TestHarness.h"
#include "Calculator.h"

TEST_GROUP(CalculatorTests)
{
    Calculator* calculator;

    void setup() {
        calculator = new Calculator();
    }

    void teardown() {
        delete calculator;
    }
};

TEST(CalculatorTests, TestAddition)
{
    LONGS_EQUAL(5, calculator->add(2, 3));
}

TEST(CalculatorTests, TestSubtraction)
{
    LONGS_EQUAL(1, calculator->subtract(3, 2));
}

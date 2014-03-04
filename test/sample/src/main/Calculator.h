#ifndef CALCULATOR_H_
#define CALCULATOR_H_

using namespace std;

class Calculator {

public: 
    int sum(const int number1, const int number2) const {
        return number1 + number2;
    }

    int multiply(const int number1, const int number2) const {
        return number1 * number2;
    }
};

#endif /* CALCULATOR_H_ */
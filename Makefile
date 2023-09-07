CPPFLAGS += -I$(CPPUTEST_HOME)/include
LDFLAGS += -L$(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt

all: CalculatorTest

AllTests.o: AllTests.cpp
	g++ -c AllTests.cpp

Calculator.o: Calculator.cpp Calculator.h
	g++ -c Calculator.cpp

CalculatorTests.o: CalculatorTests.cpp
	g++ $(CPPFLAGS) -c CalculatorTests.cpp

CalculatorTest: Calculator.o CalculatorTests.o AllTests.o
	g++ AllTests.o Calculator.o CalculatorTests.o $(LDFLAGS) -o CalculatorTest

test: CalculatorTest
	./CalculatorTest

clean:
	rm -f *.o CalculatorTest


CC=g++
CFLAGS=-c -Wall

all: library executable

executable: main.o libcalculator.a
	$(CC) main.o libcalculator.a -o MyCalculator_exe

library: calculator.o
	ar -rcs libcalculator.a calculator.o

calculator.o:
	$(CC) $(CFLAGS) calculator.cpp

main.o:
	$(CC) $(CFLAGS) main.cpp

clean:
	rm -f *.o *.a MyCalculator_exe

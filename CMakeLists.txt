cmake_minimum_required(VERSION 3.16.3)
project(MyCalculator)

add_library(calculator STATIC calculator.h calculator.cpp)
add_executable(MyCalculator
main.cpp 
calculator.h 
calculator.cpp
)

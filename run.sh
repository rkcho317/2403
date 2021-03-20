#!/bin/bash

#Author: Rosa Cho
#Program name: Sum of Array Demo

rm *.o, *.lis, *.out
echo " " #Blank line

echo "Compile the C file main.c"
gcc -c -m64 -Wall -fno-pie -no-pie -o main.o main.c

echo "Compile the X86 file fill.asm"
nasm -f elf64 -o fill.o fill.asm

echo "Compile the X86 file sum.asm"
nasm -f elf64 -o sum.o sum.asm

echo "Assemble the X86 file control.asm"
nasm -f elf64 -o control.o control.asm

echo "Compile the C++ file display.cpp"
g++ -c -m64 -Wall -fno-pie -no-pie -o display.o display.cpp -std=c++14


echo "Link the 'O' files main.o, fill.o, sum.o, control.o, and display.o"
g++ -m64 -std=c++14 -fno-pie -no-pie -o cars.out main.o fill.o sum.o control.o display.o

echo "Run the program Sum of Array"
./cars.out

echo "This Bash script file will now terminate.  Bye."

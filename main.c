;****************************************************************************************************************************
;Program name: "Sum of an Array".  This program accepts 64-bit floats  
;then stores them into an array and then adds all the elements within it.
;It also demonstrates how ctrl-d works in conjunction with a for-loop. 
;Copyright (C) 2021 Rosa Cho.                                                                           *
;                                                                                                                           *
;This file is part of the software program "Sum of an Array".                                                                   *
;Sum of an Array is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License   *
;version 3 as published by the Free Software Foundation.                                                                    *
;Sum of an Array is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied          *
;warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
;A copy of the GNU General Public License v3 is available here:  <https:;www.gnu.org/licenses/>.                            *
;****************************************************************************************************************************

;Author information
;  Author name: Rosa Cho
;  Author email: rkcho317@csu.fullerton.edu
;
;Program information
;  Program name:Sum of an Array
;  Programming languages: Three modules in x86, one in C, and one in C++
;  Date program began: 2021-Mar-3
;  Date of last update: 2021-Mar-21
;  Files in this program: main.c, control.asm, sum.asm, fill.asm, display.cpp, run.sh
;  Status: Finished
;
;This file
;   File name: main.c
;   Language: C
;   Max page width:
;   Assemble: gcc -c -m64 -Wall -fno-pie -no-pie -o main.o main.c

#include <stdint.h>
#include <stdio.h>

double control();

int main(){
	double sum_con = 0.0;
	
	printf("%s\n", "Welcome to High Speed Array Summation by Rosa Cho"); 
	printf("%s\n", "Software Licensed by GNU GPL 3.0"); 
	printf("%s\n", "Version 1.0 released on January 28, 2021."); 
   
    sum_con = control();

	printf("\nThe main has received this number that is the sum of the array %5.8lf and will keep it.", sum_con);
	printf("%s\n", "\nThank you for using High Speed Array Software.");
	printf("%s\n", "For system support contact Rosa Cho at rkcho317@csu.fullerton.edu");
	printf("%s\n", "A zero will be returned to the operating system.");

	return 0;
}
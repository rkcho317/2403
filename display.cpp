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
;   File name: display.cpp
;   Language: C++
;   Max page width:
;   Assemble: g++ -c -m64 -Wall -fno-pie -no-pie -o display.o display.cpp -std=c++14

#include <stdlib.h>
#include <cstdio>

extern "C" void display(double arr[], long index);

void display(double arr[], long index){
	for (int i = 0; i<index;++i){
		printf("%5.8lf", arr[i]); 
		printf("%s", " ");
	}
	printf("\n");
}
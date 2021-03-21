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
;   File name: fill.asm
;   Language: X86 with Intel syntax.
;   Max page width:
;   Assemble: nasm -f elf64 -o fill.o fill.asm

extern printf
extern scanf

global fill

segment .data
	outputenternum db "Please enter floating point numbers separated by ws."
	               db " When finished, press enter followed by cntl+d.", 10,0
	
	stringf db "%s",0
	
	inputf db "%lf", 0

segment .bss

segment .text

fill:

;To receive inputs and fill the arrays

;Back up all registers
push rbp
mov rbp, rsp
push rdi
push rsi
push rdx
push rcx
push r8
push r9
push r10
push r11
push r12
push r13
push r14
push r15
push rbx

push qword -1

;Initialize parameters
mov r15, rdi
mov r14, rsi
mov r13, 0

;Display the instructional message
mov qword rax, 0
mov rdi, stringf
mov rsi, outputenternum
call printf
pop rax 

;Begin the loop
init_loop:

;Accept input
mov rax, 0
mov rdi, inputf 
push qword 0
mov rsi, rsp 
call scanf

;If ctrl-d is pressed, exit loop 
cdqe
cmp rax,-1
je end_loop
pop r12

;Enter input into array
mov [r15 + 8 * r13], r12 
inc r13

;If it reaches the end of the array, end loop
cmp r13, r14
je end_loop
jmp init_loop

;End of the loop
end_loop:
mov rax, r13


;Exit
pop rax
mov qword rax, r13
pop rbx                                                     
pop r15                                                     
pop r14                                                      
pop r13                                                      
pop r12                                                      
pop r11                                                     
pop r10                                                     
pop r9                                                      
pop r8                                                      
pop rcx                                                     
pop rdx                                                     
pop rsi                                                     
pop rdi                                                     
pop rbp

ret
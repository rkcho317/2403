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
;   File name: control.asm
;   Language: X86 with Intel syntax.
;   Max page width:
;   Assemble: nasm -f elf64 -o control.o control.asm

extern printf
extern scanf
extern display
extern fill
extern sum

array_size equ 100

global control
  
segment .data
	outputwelcome db "Welcome to HSAS.  The accuracy and reliability of this program is guaranteed by Rosa Cho", 10,0
	outputnumbers db "The numbers you entered are these: ", 10,0
	outputsumb db "The sum of these values is %5.8lf", 10,0
	outputcontrol db "The control module will now return the sum to the caller module.", 10,0
	stringf db "%s",0
	
segment .bss
	inparray: resq 100
	
segment .text

control:

;Backup registers


;We are going to build an array
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
pushf

push qword -1

;Initialize parameters
mov r13, 0
mov r14, 0

;Show initial message
mov qword rax, 0
mov rdi, outputwelcome
call printf
pop rax

;Call the array from fill.asm
mov rdi, inparray
mov rsi, array_size
mov rax, 0
call fill
mov r14, rax

;Confirm the output of the inputted values
mov rdi, stringf
mov rsi, outputnumbers
mov rax, 0
call printf

;Display array
mov rdi, inparray
mov rsi, r14
mov rax, 0
call display

;Get the sum from sum.asm
push qword 0
mov rdi, inparray
mov rsi, r14
mov rax, 0
call sum
movsd xmm10, xmm0

;Print the sum prompt
push qword 0
mov rax, 1
mov rdi, outputsumb
call printf
pop rax

;Conclusion messages
mov qword rax, 0
mov qword rdi, outputcontrol
call printf


;Restore registers
pop rax
movsd xmm0, xmm10
popf                                                 
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
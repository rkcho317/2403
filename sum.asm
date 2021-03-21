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
;   File name: sum.asm
;   Language: X86 with Intel syntax.
;   Max page width:
;   Assemble: nasm -f elf64 -o sum.o sum.asm

global sum

segment .data

segment .bss

segment .text

sum:

;Somehow you are going to have to take in the input of hte array
;from control.asm and add them up

;Backup the registers
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

push qword 0

mov r15, rdi
mov r14, rsi
mov r13, 0
mov r12, 0

;Begin loop
init_loop:

;Compare r12 (the counter) with r14 (the number of elements in the array)
cmp r12, r14
jge end_loop

;Copy into array and add the elements
addsd xmm10, [r15 + 8 * r12]
inc r12

jmp init_loop

;Ends the loop
end_loop:

;return the sum
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

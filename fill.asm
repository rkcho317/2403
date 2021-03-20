;This is fill.asm

extern printf
extern scanf


global fill

segment .data
	outputenternum db "Please enter floating point numbers separated by ws.", 10,0
	outputwhen db "When finished press enter followed by cntl+D.", 10,0
	
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
mov rdi, outputenternum
mov rsi, outputwhen
call printf 

;Begin the loop
init_loop:

;Accept input
push qword 0
mov rax, 0
mov rdi, inputf
push qword 0
mov  rsi, rsp
call scanf

;If ctrl-d is pressed, exit loop 
cdqe
cmp rax,-1
je end_loop
pop r12

;Copy into array
mov [r15 + 8 * r13], r12 
inc r13

;Array Capacity test
;cmp r13, r14
;je end_loop
;jmp init_loop


;End of the loop
end_loop:
pop r8
pop rax

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
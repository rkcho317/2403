;This is sum.asm

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

push qword -1

mov r15, rdi
mov r14, rsi
mov r13, 0
mov r12, 0

;Begin loop
init_loop:

cmp r12, r14
jge end_loop

;Copy into array
add r13, [r15 + 8 * r12]
inc r12

jmp init_loop

;Ends the loop
end_loop:

pop rax
mov qword rax, r13
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

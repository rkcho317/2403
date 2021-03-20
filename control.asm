;This is is control.asm
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
	outputsumb db "The sum of these values is ", 10,0
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
mov rax, 0
mov rdi, inparray
mov rsi, r14
call display

;Get the sum from sum.asm
mov rdi, inparray
mov rsi, r14
mov rax, 0
call sum
mov r13, rax

;Print the sum
mov rdi, stringf
mov rsi, outputsumb
mov rax, 0
call printf

;Conclusion messages
mov qword rax, 0
mov qword rdi, outputcontrol
call printf


;Restore registers
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
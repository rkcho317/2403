;This is is control.asm
 
segment data:
extern printf
extern scanf

global control

	outputwelcome db "Welcome to HSAS.  The accuracy and reliability of this program is guaranteed by Rosa Cho", 10,0
	outputnumbers db "The numbers you entered are these: ", 10,0
	outputsumb db "The sum of these values is ", 10,0
	outputcontrol db "The control module will now return the sum to the caller module.", 10,0
	
	
segment bss:

segment text:

control:

;We are going to build an array

push rbp
mov rbp,rsp

mov r13, rdi
mov r14, rdi

;Show initial message

mov qword rax,0
mov rdi, outputwelcome
call printf

;Prompt for an input to the array
;You'll need to loop it

mov qword rax,0

;Conclusion messages

;Send float array to be added up in sum
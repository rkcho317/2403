;This is is control.asm
 
segment data:
	outputwelcome db "Welcome to HSAS.  The accuracy and reliability of this program is guaranteed by Rosa Cho", 10,0
	outputnumbers db "The numbers you entered are these: ", 10,0
	outputsumb db "The sum of these values is ", 10,0
	outputcontrol db "The control module will now return the sum to the caller module.", 10,0
	
segment bss:

segment text:
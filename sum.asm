;This is sum.asm

segment data:
extern printf
extern scanf

global sum_tools


segment bss:

segment text:

sum_tools:

;Somehow you are going to have to take in the input of hte array
;from control.asm and add them up
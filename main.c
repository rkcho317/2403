//This is main.c

#include <stdint.h>
#include <stdio.h>

long int control();

int main(){
	long int con = -999;
	
	printf("%s\n", "Welcome to High Speed Array Summation by Rosa Cho"); 
	printf("%s\n", "Software Licensed by GNU GPL 3.0"); 
	printf("%s\n", "Version 1.0 released on January 28, 2021."); 
   
    con = control();

	printf("%s%ld%s","\nThe main has received this number",con, " and will keep it.");
	printf("%s\n", "Thank you for using High Speed Array Software.");
	printf("%s\n", "For system support contact Rosa Cho at rkcho317@csu.fullerton.edu");
	printf("%s\n", "A zero will be returned to the operating system.");

	return 0;
}
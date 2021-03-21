//This is main.c

#include <stdint.h>
#include <stdio.h>

//long int control();

double control();

int main(){
	double sum_con = 0.0;
	
	printf("%s\n", "Welcome to High Speed Array Summation by Rosa Cho"); 
	printf("%s\n", "Software Licensed by GNU GPL 3.0"); 
	printf("%s\n", "Version 1.0 released on January 28, 2021."); 
   
    sum_con = control();

	printf("\nThe main has received this number that is the sum of the array %5.8lf and will keep it.", sum_con);
	printf("%s\n", "\nThank you for using High Speed Array Software.");
	printf("%s\n", "For system support contact Rosa Cho at rkcho317@csu.fullerton.edu");
	printf("%s\n", "A zero will be returned to the operating system.");

	return 0;
}
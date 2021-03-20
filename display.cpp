//This is display.cpp

#include <iostream>
#include <stdlib.h>

extern "C" void display(long array[], long index);

void display(long array[], long index){
	for (long i = 0; i<index;++i){
		printf("%ld", array[i]);
		printf("%s", " ");
	}
	printf("\n\n");
}
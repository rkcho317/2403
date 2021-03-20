//This is display.cpp

#include <stdlib.h>
#include <cstdio>

extern "C" void display(double arr[], long index);

void display(double arr[], long index){
	for (int i = 0; i<index;++i){
		printf("%lf", arr[i]); 
		printf("%s", " ");
	}
	printf("\n");
}
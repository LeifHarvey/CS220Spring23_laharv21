#include <stdio.h>
#include <stdlib.h>

extern int sum3or5(int n);

int main(int argc, char *argv[]){

	printf("%d\n", sum3or5(atoi(argv[1])));

}

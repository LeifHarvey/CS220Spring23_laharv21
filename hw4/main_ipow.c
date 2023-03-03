#include <stdio.h>
#include <stdlib.h>
#include "ipow.h"

int main(int argc, char *argv[]) {
	printf("%d\n", ipow(atoi(argv[1]), atoi(argv[2])));
}

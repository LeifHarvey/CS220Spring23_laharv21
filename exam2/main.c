#include <stdio.h>
#include <stdlib.h>

/*
        char buff[4];
        unsigned int *seed = (unsigned int *) buff;
        getrandom(buff, 4, 0);
        srand(*seed);
*/

extern int cointoss(int n);

int main(int argc, char *argv[]) {

	printf("%d\n", cointoss(atoi(argv[1])));

}

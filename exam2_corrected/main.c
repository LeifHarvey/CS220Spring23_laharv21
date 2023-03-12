#include <stdio.h>
#include <stdlib.h>
#include <sys/random.h>

extern int cointoss(int n);

int main(int argc, char *argv[]) {

	char buff[4];
        unsigned int *seed = (unsigned int *) buff;
        getrandom(buff, 4, 0);
        srand(*seed);

	printf("%d\n", cointoss(atoi(argv[1])));

}

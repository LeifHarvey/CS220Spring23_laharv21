#include <stdio.h>
#include "count_fives_nines.h"

int main() {

	int a = 0;
	printf("Please enter a positive number: ");
	scanf("%d", &a);

	while(a >= 0) {
		printf("%d\n", fives_and_nines(a));
		printf("Please enter a positive number: ");
		scanf("%d", &a);
	}
}

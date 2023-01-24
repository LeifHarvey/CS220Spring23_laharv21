#include <stdio.h>

void diamond(int n) {

	int s = 1;
	int b = n - 1;
	int count = 0;

	while (count < n) {
		for (int i = 0; i < b/2; i++) {
			printf(" ");
		}
		for (int j = 0; j < s; j++) {
			printf("*");
		}
		for (int k = 0; k < b/2; k++) {
			printf(" ");
		}

		if (count < (n/2) + 1) {
			s = s + 2;
			b = b - 2;
		} else {
			s = s - 2;
			b = b + 2;
		}
		printf("\n");
		count++;
	}
}

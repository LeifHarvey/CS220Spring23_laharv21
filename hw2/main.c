#include <stdio.h>
#include "to_hex.h"

int main() {
	unsigned long long n = 0;
	printf("Please enter a number to convert: ");
	scanf("%lld", &n);

	while (n > 0) {
		char buff [150];
		int2hex(n, buff);
		printf("0x%s\n", buff);

		printf("Please enter a number to convert: ");
		scanf("%lld", &n);
	}
}

#include <stdio.h>

int sequence(int n) {

	int count = 1;

	if (n < 0) {
		printf("Invalid integer, must be greater than 0\n");
	}

	while (n > 1) {
		if (n % 2 == 0) {
			n = (n/2); 
		} else {
			n = ((3 * n) + 1);
		}
		count++;

		if (count > 1000000) {
			n = 1;
			printf("Error: overflow\n");
			break;
		}
	}

	return count;

}


int longest() {
	int index = 0;
	int longest = 0;
	for(int i = 1; i <= 1000000; i++) {
		int curr = sequence(i);
		if (curr > longest) {
			longest = curr;
			index = i;
		}
	}
	return index;
}

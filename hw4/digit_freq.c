#include <stdio.h>
void digit_freq(int n, int freq[]) {

	while(n != 0) {
		int curr = n % 10;
		freq[curr]++;
		n = n/10;
	}
}

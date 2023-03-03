#include <math.h>

int ipow(int x, int y) {

	if (y == 0) {
		return 1;
	} else if (y % 2 == 0) {
		return pow(ipow(x, y/2), 2);
	} else {
		return x * ipow(x, y-1);
	}
}

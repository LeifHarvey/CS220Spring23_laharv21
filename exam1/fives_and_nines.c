int fives_and_nines(unsigned int n) {

	int count = 0;

	while(n > 0) {

		if(n % 10 == 5 || n % 10 == 9) {
			count++;
		}
		n /= 10;
	}

	return count;
}

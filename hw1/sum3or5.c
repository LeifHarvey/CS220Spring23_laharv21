int sum3or5(int n) {
	int s = 0;
	int c = 0;
	while (c < n) {
		if (c % 3 == 0 || c % 5 == 0) {
			s = s + c;
		}
		c++;
	}
				
	return s;
}

/*
n - integer being converted
buff - the string that will hold the result (must be beig enough)
returns the hexidecimal form of the integer n provided
*/

void int2hex(unsigned long long n, char buff[]) {

    int i = 0;
    while(n) {

        unsigned long long h = n & 15;

        if (h >= 10) {
            buff[i] = h - 10 + 'A';
        } else {
            buff[i] = h + '0';
        }

        i++;
        n = n >> 4;
    }

    buff[i] = '\0';

    // reverse string order ('i - 1' is the length)
    for (int j = 0; j < i/2; j++) {
        char tmp = buff[j];
        buff[j] = buff[i - j - 1];
        buff[i - j - 1] = tmp;
    }
}

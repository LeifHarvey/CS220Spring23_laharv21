double myexp(double x) {

    // 20! for 64bits and 12! for 32bits
    // e^x = summation(x^k/k!) from 0 to inf

    // k acts like a count variable
    double k = 1.0;

    // sum is the total sum of the taylor series
    double sum = 1.0;

    // power is the value of the power portion
    double power = 1.0;

    // factorial is the value of the factorial portion
    double factorial = 1.0;

    while (k <= 20) {
        power = power * x;
        factorial = factorial * k;
        sum += power/factorial;
        k++;
    }
    return sum;
}

#include <stdio.h>
#include <stdlib.h>
#include "digit_freq.h"
extern void print_help(int freq[]);

int main(int argc, char *argv[]){

        int freq[10];
        for (int i = 0; i < 10; i++) {
                freq[i] = 0;
        }

        digit_freq(atoi(argv[1]), freq);
        print_help(freq);
}

// helper function for printing table like output
void print_help(int freq[]) {

        printf("0  1  2  3  4  5  6  7  8  9\n");

        for (int i = 0; i < 10; i++) {
                printf("%d  ", freq[i]);
        }
}


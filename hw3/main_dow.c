#include <stdio.h>
#include <stdlib.h>
#include "dow.h"

/*
Write a main function in main_dow.c that takes
the month, day, and year as command line arguments
and calls the assembly version of dow and
prints the day of the week.
*/

int main(int argc, char *argv[]) {

        if(argc != 4) {
                printf("Usage: <month> <day> <year>\n");
                printf("Please enter 3 valid values for the month, day, and year.");
        } else if (atoi(argv[1]) > 12 || atoi(argv[1]) < 1) {
                printf("Please enter a valid month (1-12)");
        } else if (atoi(argv[2]) > 31 || atoi(argv[2]) < 1) {
                printf("Please enter a valid day (1-31)");
        } else {
                switch (dayofweek(atoi(argv[1]), atoi(argv[2]), atoi(argv[3]))) {
                        case 0:
                                printf("Sunday\n");
                                break;
                        case 1:
                                printf("Monday\n");
                                break;
                        case 2:
                                printf("Tuesday\n");
                                break;
                        case 3:
                                printf("Wednesday\n");
                                break;
                        case 4:
                                printf("Thursday\n");
                                break;
                        case 5:
                                printf("Friday\n");
                                break;
                        case 6:
                                printf("Saturday\n");
                                break;
                        default:
                                printf("Error: calculation out of bounds\n");
                                break;
		}
	}
}

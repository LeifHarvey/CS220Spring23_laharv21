
.cpu cortex-a53
.global dayofweek


/*
int dow(int m, int d, int y) {
    int y0 = y - (14 - m) / 12;
    int x = y0 + y0 / 4 - y0 / 100 + y0 / 400;
    int m0 = m + 12 * ((14 - m)/12) - 2;
    int d0 = (d + x + (31 * m0) / 12) % 7;
    return d0;
}
*/


.text

dayofweek:
	push { r4, r5, r6 }	// save on the runtime stack
	mov r3, #14		// r3 = 14
	sub r3, r3, r0		// 14-m
	mov r4, #12		// r4 = 12
	sdiv r3, r3, r4		// r3/12
	sub r2, r2, r3		// y0 = y - r3

	mov r5, #400		// r5 = 400
	sdiv r5, r2, r5		// r5 = y0/400
	mov r6, #100		// r6 = 100
	sdiv r6, r2, r6		// r6 = y0/100
	sub r5, r5, r6		// r5 = y0/400 - y0/100
	mov r6, #4		// r6 = 4
	sdiv r6, r2, r6		// r6 = y0/4
	add r2, r2, r6		// r2 = y0 + y0/4
	add r2, r2, r5		// r2 = y0 + y0/4 - y0/100 + y0/400

	mov r6, #12		// r6 = 12
	mul r5, r6, r3		// r5 = 12 * ((14-m)/12)
	mov r6, #2		// r6 = 2
	sub r5, r5, r6		// r5 = (12 * ((14-m)/12)) - 2
	add r0, r0, r5		// r0 = m + r5

	mov r6, #31		// r6 = 31
	mul r5, r6, r0		// r5 = 31*m0
	sdiv r5, r5, r4		// r5 = r5 / 12
	add r6, r1, r2		// r6 = d + x
	add r4, r6, r5		// r4 = (d + x + (31 * m0) / 12)
	mov r6, #7		// r6 = 7
	sdiv r5, r4, r6		// r5 = r4/7
	mul r5, r5, r6		// r5 = r5 * 7
	sub r0, r4, r5		// r5 = r4 % 7

	pop { r4, r5, r6 }
	bx lr

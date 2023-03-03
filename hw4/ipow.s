/*
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
*/

.cpu cortex-a53
.global ipow
.text

ipow:
	push { r4-r7, lr }

	mov r4, r0
	mov r5, r1

        cmp r5, #0
        beq base

	mov r0, r1
	mov r1, #2
	bl mod

	cmp r0, #0
	beq even

	sub r3, r5, #1
	mov r0, r4
	mov r1, r3
	bl ipow
	mul r0, r0, r4
	pop { r4-r7, lr }
	bx lr

base:
	mov r0, #1
	pop { r4-r7, lr }
	bx lr

even:
	mov r6, #2
	sdiv r3, r5, r6
	mov r0, r4
	mov r1, r3
	bl ipow
	mul r0, r0, r0
	pop { r4-r7, lr }
	bx lr

odd:


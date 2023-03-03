/*
#include <stdio.h>
void digit_freq(int n, int freq[]) {

        while(n != 0) {
                int curr = n % 10;
                freq[curr]++;
                n = n/10;
        }
}
*/

.cpu cortex-a53
.global digit_freq
.text

digit_freq:

	push { r4-r7, lr }
	mov r5, r1		// r5 -> pointer to freq[] head

while:
	mov r4, r0
	cmp r0, #0
	beq endwhile

	mov r1, #10
	bl mod			// n % 10

	mov r6, #4		// r6 = 4
	mul r3, r0, r6		// curr * 4(bytes)
	add r3, r5, r3		// ^ + r5(head)
	ldr r2, [r3]		// load into r2 what was at r3 in memory
	mov r7, #1
	add r2, r2, r7		// ++
	str r2, [r3]		// store r2 into r3 in memory

	mov r0, r4
	sdiv r0, r0, r1		// n = n/10
	b while

endwhile:
	pop { r4-r7, lr }
	bx lr

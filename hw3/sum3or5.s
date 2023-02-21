.cpu cortex-a53
.global sum3or5
.text

sum3or5:
	push { r4 }		// save r4 on runtime stack
	mov r1, #0		// s = 0
	mov r2, #0		// c = 0

while:
	cmp r2, r0
	beq endwhile		// while (c < n)

	mov r3, #3
	sdiv r4, r2, r3		// r4 = c/3
	mul r4, r4, r3		// r4 = r4 * 3
	sub r4, r2, r4		// r4 = c % 3
	cmp r4, #0
	beq threefive		// goto threefive if c % 3 == 0

	mov r3, #5
	sdiv r4, r2, r3
	mul r4, r4, r3
	sub r4, r2, r4
	cmp r4, #0
	beq threefive		// goto threefive if c % 5 == 0

	mov r3, #1
	add r2, r2, r3		// c++
	b while			// restart while

endwhile:
	mov r0, r1		// r0 = c
	pop { r4 }
	bx lr			// return

threefive:
	add r1, r1, r2		// s = s + c
	mov r3, #1		// r3 = 1
	add r2, r2, r3		// c++
	b while			// goto while

.global cointoss
.text

cointoss:
	push { r4-r5, lr }
	//mov r2, #0	// set r2 to 0 - r2 will be the counter for how many times we have flipped coin
	mov r5, r0	// set r3 to r0 - r3 will hold the number of times we want to flip coin
	mov r4, #0	// set r1 to 0 - r1 will count the number of head tossed
while:
	cmp r5, #0
	ble endwhile
	sub r5, r5, #1

	bl rand
	and r0, r0, #1

	cmp r0, #1
	beq increment
	b while

increment:
	add r4, r4, #1
	b while

endwhile:
	mov r0, r4
	pop { r4-r5, pc }

.global cointoss
.text

cointoss:
	push { lr }
	mov r2, #0
	mov r3, r0
	mov r1, #0
while:
	cmp r3, #0
	beq endwhile
	sub r3, r3, #1

	bl rand

	cmp r0, #0
	beq increment
	b while

increment:
	add r1, r1, #1
	b while

endwhile:
	pop { pc }

.global myexp

.fpu vfp
.cpu cortex-a53

.align 3
one: .double 1.0
twenty: .double 20.0

.align 2

.text

myexp:
	vpush { d4, d5, d6, d7 }

	// load 1.0 for starting values
	ldr r0, =one
	vldr.f64 d1, [r0]
	vldr.f64 d2, [r0]
	vldr.f64 d3, [r0]
	vldr.f64 d4, [r0]
	vldr.f64 d7, [r0]

	// load 12 into d5 for calculation bound
	ldr r0, =twenty
	vldr.f64 d5, [r0]

while:
	// condition check (k <= 12)
	vcmp.f64 d1, d5
	vmrs APSR_nzvc, FPSCR
	bgt endwhile

	vmul.f64 d3, d3, d0
	vmul.f64 d4, d4, d1
	vdiv.f64 d6, d3, d4
	vadd.f64 d2, d2, d6
	vadd.f64 d1, d1, d7
	b while

endwhile:
	vmov.f64 d0, d2
	vpop { d4, d5, d6, d7 }
	bx lr


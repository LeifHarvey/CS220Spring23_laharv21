.cpu cortex-a53
.global mod
.text

mod:
        sdiv r2, r0, r1
        mul r2, r2, r1
        sub r0, r0, r2
        bx lr


asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080298e0 \n\
/* 080298e0 */ PUSH {R4, LR} \n\
/* 080298e2 */ LDR R4, =D_030046a8 \n\
/* 080298e4 */ LDR R0, [R4] \n\
/* 080298e6 */ MOVS R1, 0xB9 @ Set R1 to 0xB9 \n\
/* 080298e8 */ LSLS R1, R1, 0x2 \n\
/* 080298ea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080298ec */ BL func_08011bec \n\
/* 080298f0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080298f2 */ BEQ branch_08029924 \n\
/* 080298f4 */ LDR R0, [R4] \n\
/* 080298f6 */ MOVS R1, 0xB9 @ Set R1 to 0xB9 \n\
/* 080298f8 */ LSLS R1, R1, 0x2 \n\
/* 080298fa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080298fc */ BL func_08011bf8 \n\
/* 08029900 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029902 */ BLT branch_08029924 \n\
/* 08029904 */ LDR R0, =D_030055d0 \n\
/* 08029906 */ LDR R0, [R0] \n\
/* 08029908 */ LDR R1, =0x00000416 \n\
/* 0802990a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802990c */ LDRH R0, [R0] \n\
/* 0802990e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029910 */ BEQ branch_08029924 \n\
/* 08029912 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08029914 */ B branch_08029926 \n\
\n\
.ltorg \n\
 \n\
branch_08029924: \n\
/* 08029924 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08029926: \n\
/* 08029926 */ POP {R4} \n\
/* 08029928 */ POP {R1} \n\
/* 0802992a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

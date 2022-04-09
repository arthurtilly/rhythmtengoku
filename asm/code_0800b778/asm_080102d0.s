asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080102d0 \n\
/* 080102d0 */ PUSH {LR} \n\
/* 080102d2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080102d4 */ LDR R1, =D_089ccccc \n\
/* 080102d6 */ B branch_080102e8 \n\
\n\
.ltorg \n\
 \n\
branch_080102dc: \n\
/* 080102dc */ LDR R0, [R1] \n\
/* 080102de */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080102e0 */ BNE branch_080102e6 \n\
/* 080102e2 */ LDR R0, [R1, 0x4] \n\
/* 080102e4 */ B branch_080102f0 \n\
 \n\
branch_080102e6: \n\
/* 080102e6 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
 \n\
branch_080102e8: \n\
/* 080102e8 */ LDR R0, [R1] \n\
/* 080102ea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080102ec */ BNE branch_080102dc \n\
/* 080102ee */ MOVS R0, 0x8C @ Set R0 to 0x8C \n\
 \n\
branch_080102f0: \n\
/* 080102f0 */ POP {R1} \n\
/* 080102f2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

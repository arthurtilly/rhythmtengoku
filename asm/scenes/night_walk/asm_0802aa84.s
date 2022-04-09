asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802aa84 \n\
/* 0802aa84 */ PUSH {R4-R6, LR} \n\
/* 0802aa86 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802aa88 */ LDR R6, =D_03001568 \n\
/* 0802aa8a */ MOVS R4, 0x10 @ Set R4 to 0x10 \n\
 \n\
branch_0802aa8c: \n\
/* 0802aa8c */ LDR R0, [R6] \n\
/* 0802aa8e */ ADDS R2, R0, R4 @ Set R2 to R0 + R4 \n\
/* 0802aa90 */ LDRH R0, [R2, 0x6] \n\
/* 0802aa92 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802aa94 */ BEQ branch_0802aaac \n\
/* 0802aa96 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802aa98 */ STRH R0, [R2, 0x6] \n\
/* 0802aa9a */ LSLS R0, R0, 0x10 \n\
/* 0802aa9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802aa9e */ BNE branch_0802aaac \n\
/* 0802aaa0 */ LDRH R0, [R2] \n\
/* 0802aaa2 */ LDRH R1, [R2, 0x2] \n\
/* 0802aaa4 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802aaa6 */ LDRSH R2, [R2, R3] \n\
/* 0802aaa8 */ BL func_0802ab7c \n\
 \n\
branch_0802aaac: \n\
/* 0802aaac */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0802aaae */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0802aab0 */ CMP R5, 0x63 @ Compare R5 and 0x63 \n\
/* 0802aab2 */ BLS branch_0802aa8c \n\
/* 0802aab4 */ POP {R4-R6} \n\
/* 0802aab6 */ POP {R0} \n\
/* 0802aab8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

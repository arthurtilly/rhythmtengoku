asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026c1c \n\
/* 08026c1c */ PUSH {R4, LR} \n\
/* 08026c1e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08026c20 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08026c22 */ BL func_0800c3a4 \n\
/* 08026c26 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08026c28 */ BHI branch_08026c2e \n\
/* 08026c2a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08026c2c */ B branch_08026c30 \n\
 \n\
branch_08026c2e: \n\
/* 08026c2e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08026c30: \n\
/* 08026c30 */ POP {R4} \n\
/* 08026c32 */ POP {R1} \n\
/* 08026c34 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

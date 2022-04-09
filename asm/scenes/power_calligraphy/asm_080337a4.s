asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080337a4 \n\
/* 080337a4 */ PUSH {R4, LR} \n\
/* 080337a6 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080337a8 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 080337aa */ BL func_0800c3a4 \n\
/* 080337ae */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080337b0 */ BHI branch_080337b6 \n\
/* 080337b2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080337b4 */ B branch_080337b8 \n\
 \n\
branch_080337b6: \n\
/* 080337b6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080337b8: \n\
/* 080337b8 */ POP {R4} \n\
/* 080337ba */ POP {R1} \n\
/* 080337bc */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

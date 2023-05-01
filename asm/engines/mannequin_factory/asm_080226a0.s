asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080226a0 \n\
/* 080226a0 */ PUSH {R4-R6, LR} \n\
/* 080226a2 */ LDR R1, =gCurrentEngineData \n\
/* 080226a4 */ LDR R0, [R1] \n\
/* 080226a6 */ LDR R2, =0x0000040c \n\
/* 080226a8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080226aa */ LDRB R0, [R0] \n\
/* 080226ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080226ae */ BNE branch_080226c6 \n\
/* 080226b0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080226b2 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080226b4 */ MOVS R4, 0x14 @ Set R4 to 0x14 \n\
 \n\
branch_080226b6: \n\
/* 080226b6 */ LDR R0, [R6] \n\
/* 080226b8 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080226ba */ BL func_08022614 \n\
/* 080226be */ ADDS R4, 0x14 @ Add 0x14 to R4 \n\
/* 080226c0 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080226c2 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 080226c4 */ BLS branch_080226b6 \n\
 \n\
branch_080226c6: \n\
/* 080226c6 */ POP {R4-R6} \n\
/* 080226c8 */ POP {R0} \n\
/* 080226ca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

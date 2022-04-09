asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801338c \n\
/* 0801338c */ PUSH {R4-R7, LR} \n\
/* 0801338e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013390 */ LDR R7, =D_030046a4 \n\
/* 08013392 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08013394 */ MOVS R2, 0x1F @ Set R2 to 0x1F \n\
/* 08013396 */ MOVS R4, 0x1C @ Set R4 to 0x1C \n\
/* 08013398 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_0801339a: \n\
/* 0801339a */ LDR R0, [R7] \n\
/* 0801339c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801339e */ STRB R2, [R0, 0x3] \n\
/* 080133a0 */ STRB R2, [R0, 0x2] \n\
/* 080133a2 */ STRB R2, [R0, 0x1] \n\
/* 080133a4 */ STRB R2, [R0, 0x6] \n\
/* 080133a6 */ STRB R2, [R0, 0x5] \n\
/* 080133a8 */ STRB R2, [R0, 0x4] \n\
/* 080133aa */ STRB R6, [R0] \n\
/* 080133ac */ STRH R5, [R0, 0x8] \n\
/* 080133ae */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 080133b0 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080133b2 */ BNE branch_080133b6 \n\
/* 080133b4 */ MOVS R1, 0xFE @ Set R1 to 0xFE \n\
 \n\
branch_080133b6: \n\
/* 080133b6 */ STRH R1, [R0, 0xA] \n\
/* 080133b8 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 080133ba */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080133bc */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 080133be */ BLS branch_0801339a \n\
/* 080133c0 */ POP {R4-R7} \n\
/* 080133c2 */ POP {R0} \n\
/* 080133c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

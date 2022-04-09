asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800387c \n\
/* 0800387c */ PUSH {R4, R5, LR} \n\
/* 0800387e */ SUB SP, 0x4 \n\
/* 08003880 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08003882 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08003884 */ B branch_080038a0 \n\
 \n\
branch_08003886: \n\
/* 08003886 */ LDR R0, [R4] \n\
/* 08003888 */ LDRB R1, [R4, 0x4] \n\
/* 0800388a */ LSLS R1, R1, 0x5 \n\
/* 0800388c */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 0800388e */ LDRB R2, [R4, 0x5] \n\
/* 08003890 */ LSLS R2, R2, 0x5 \n\
/* 08003892 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08003894 */ LSLS R3, R3, 0x1 \n\
/* 08003896 */ STR R3, [SP] \n\
/* 08003898 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0800389a */ BL func_0800186c \n\
/* 0800389e */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
 \n\
branch_080038a0: \n\
/* 080038a0 */ LDR R0, [R4] \n\
/* 080038a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080038a4 */ BNE branch_08003886 \n\
/* 080038a6 */ ADD SP, 0x4 \n\
/* 080038a8 */ POP {R4, R5} \n\
/* 080038aa */ POP {R0} \n\
/* 080038ac */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

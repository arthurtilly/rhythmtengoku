asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080130b0 \n\
/* 080130b0 */ PUSH {R4, LR} \n\
/* 080130b2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080130b4 */ LDR R3, =D_089cdf24 \n\
/* 080130b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_080130b8: \n\
/* 080130b8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080130ba */ LDRSB R0, [R3, R0] \n\
/* 080130bc */ CMP R0, R4 @ Check R0 - R4 \n\
/* 080130be */ BNE branch_080130d0 \n\
/* 080130c0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080130c2 */ LDRSB R0, [R3, R0] \n\
/* 080130c4 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080130c6 */ BNE branch_080130d0 \n\
/* 080130c8 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080130ca */ B branch_080130dc \n\
\n\
.ltorg \n\
 \n\
branch_080130d0: \n\
/* 080130d0 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080130d2 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 080130d4 */ CMP R2, 0x2F @ Compare R2 and 0x2F \n\
/* 080130d6 */ BLE branch_080130b8 \n\
/* 080130d8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080130da */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_080130dc: \n\
/* 080130dc */ POP {R4} \n\
/* 080130de */ POP {R1} \n\
/* 080130e0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

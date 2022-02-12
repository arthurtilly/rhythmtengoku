asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08028978 \n\
/* 08028978 */ PUSH {R4, LR} \n\
/* 0802897a */ LDR R4, =D_089e2a08 \n\
/* 0802897c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802897e */ BL func_0800c604 \n\
/* 08028982 */ LDR R0, =D_030055d0 \n\
/* 08028984 */ LDR R0, [R0] \n\
/* 08028986 */ LDRB R0, [R0] \n\
/* 08028988 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802898a */ BNE branch_0802898e \n\
/* 0802898c */ LDR R4, =D_089e2a50 \n\
 \n\
branch_0802898e: \n\
/* 0802898e */ BL func_0800c3b8 \n\
/* 08028992 */ LSLS R0, R0, 0x10 \n\
/* 08028994 */ LSRS R0, R0, 0x10 \n\
/* 08028996 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08028998 */ LSLS R2, R2, 0x6 \n\
/* 0802899a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802899c */ BL func_08002ee0 \n\
/* 080289a0 */ LDR R1, =(func_08028954 + 1) \n\
/* 080289a2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080289a4 */ BL func_08005d38 \n\
/* 080289a8 */ POP {R4} \n\
/* 080289aa */ POP {R0} \n\
/* 080289ac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

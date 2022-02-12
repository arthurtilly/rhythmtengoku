asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b214 \n\
/* 0802b214 */ LDR R1, =D_030055d0 \n\
/* 0802b216 */ LDR R3, [R1] \n\
/* 0802b218 */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 0802b21a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b21c */ LSLS R0, R0, 0x1 \n\
/* 0802b21e */ LDRB R2, [R3, 0x1] \n\
/* 0802b220 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 0802b222 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0802b224 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0802b226 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0802b228 */ STRB R1, [R3, 0x1] \n\
/* 0802b22a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

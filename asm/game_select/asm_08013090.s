asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013090 \n\
/* 08013090 */ PUSH {LR} \n\
/* 08013092 */ LDR R1, =D_089cdf24 \n\
/* 08013094 */ LSLS R0, R0, 0x3 \n\
/* 08013096 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08013098 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801309a */ LDRSB R2, [R0, R2] \n\
/* 0801309c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801309e */ LDRSB R1, [R0, R1] \n\
/* 080130a0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080130a2 */ BL func_0801316c \n\
/* 080130a6 */ LDR R0, [R0, 0x4] \n\
/* 080130a8 */ POP {R1} \n\
/* 080130aa */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

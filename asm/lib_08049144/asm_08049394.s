asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049394 \n\
/* 08049394 */ LDR R1, =D_03005b88 \n\
/* 08049396 */ LDR R1, [R1] \n\
/* 08049398 */ LSLS R0, R0, 0x5 \n\
/* 0804939a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804939c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804939e */ STR R1, [R0, 0xC] \n\
/* 080493a0 */ LDRB R1, [R0] \n\
/* 080493a2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080493a4 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 080493a6 */ STRB R1, [R0] \n\
/* 080493a8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025c4c \n\
/* 08025c4c */ PUSH {R4, R5, LR} \n\
/* 08025c4e */ LDR R0, =D_030055d0 \n\
/* 08025c50 */ LDR R4, [R0] \n\
/* 08025c52 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08025c54 */ LSLS R0, R0, 0x2 \n\
/* 08025c56 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025c58 */ LDR R5, =D_03005380 \n\
/* 08025c5a */ LDR R0, [R5] \n\
/* 08025c5c */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08025c5e */ LDRSH R1, [R4, R2] \n\
/* 08025c60 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025c62 */ BL func_0804cebc \n\
/* 08025c66 */ LDR R0, [R5] \n\
/* 08025c68 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08025c6a */ LDRSH R1, [R4, R2] \n\
/* 08025c6c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025c6e */ BL func_0804cebc \n\
/* 08025c72 */ LDR R0, [R5] \n\
/* 08025c74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025c76 */ LDRSH R1, [R4, R2] \n\
/* 08025c78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025c7a */ BL func_0804cebc \n\
/* 08025c7e */ POP {R4, R5} \n\
/* 08025c80 */ POP {R0} \n\
/* 08025c82 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025c8c \n\
/* 08025c8c */ PUSH {R4, R5, LR} \n\
/* 08025c8e */ LDR R0, =gCurrentEngineData \n\
/* 08025c90 */ LDR R4, [R0] \n\
/* 08025c92 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08025c94 */ LSLS R0, R0, 0x2 \n\
/* 08025c96 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025c98 */ LDR R5, =D_03005380 \n\
/* 08025c9a */ LDR R0, [R5] \n\
/* 08025c9c */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08025c9e */ LDRSH R1, [R4, R2] \n\
/* 08025ca0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025ca2 */ BL func_0804cebc \n\
/* 08025ca6 */ LDR R0, [R5] \n\
/* 08025ca8 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08025caa */ LDRSH R1, [R4, R2] \n\
/* 08025cac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025cae */ BL func_0804cebc \n\
/* 08025cb2 */ LDR R0, [R5] \n\
/* 08025cb4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025cb6 */ LDRSH R1, [R4, R2] \n\
/* 08025cb8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025cba */ BL func_0804cebc \n\
/* 08025cbe */ POP {R4, R5} \n\
/* 08025cc0 */ POP {R0} \n\
/* 08025cc2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

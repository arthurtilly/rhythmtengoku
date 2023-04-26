asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040c2c \n\
/* 08040c2c */ LDR R2, =gCurrentEngineData \n\
/* 08040c2e */ LDR R0, [R2] \n\
/* 08040c30 */ LDR R1, =0x2fe \n\
/* 08040c32 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040c34 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040c36 */ STRB R3, [R0] \n\
/* 08040c38 */ LDR R0, [R2] \n\
/* 08040c3a */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08040c3c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040c3e */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08040c40 */ STRB R1, [R0] \n\
/* 08040c42 */ LDR R0, [R2] \n\
/* 08040c44 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08040c46 */ LSLS R1, R1, 0x2 \n\
/* 08040c48 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040c4a */ STRB R3, [R0] \n\
/* 08040c4c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

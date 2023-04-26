asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024ed0 \n\
/* 08024ed0 */ LDR R2, =gCurrentEngineData \n\
/* 08024ed2 */ LDR R0, [R2] \n\
/* 08024ed4 */ MOVS R1, 0xE1 @ Set R1 to 0xE1 \n\
/* 08024ed6 */ LSLS R1, R1, 0x2 \n\
/* 08024ed8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08024eda */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08024edc */ STRB R1, [R0] \n\
/* 08024ede */ LDR R2, [R2] \n\
/* 08024ee0 */ MOVS R3, 0xE3 @ Set R3 to 0xE3 \n\
/* 08024ee2 */ LSLS R3, R3, 0x2 \n\
/* 08024ee4 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08024ee6 */ STR R1, [R0] \n\
/* 08024ee8 */ ADDS R3, 0x4 @ Add 0x4 to R3 \n\
/* 08024eea */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08024eec */ STR R1, [R0] \n\
/* 08024eee */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

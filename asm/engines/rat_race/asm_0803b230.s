asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803b230 \n\
/* 0803b230 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803b232 */ LDR R0, =gCurrentEngineData \n\
/* 0803b234 */ LDR R1, [R0] \n\
/* 0803b236 */ LDR R0, [R3, 0x8] \n\
/* 0803b238 */ LDR R1, [R1, 0x30] \n\
/* 0803b23a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0803b23c */ LDR R2, =D_089e68ac \n\
/* 0803b23e */ LDRB R1, [R3, 0x5] \n\
/* 0803b240 */ LSLS R1, R1, 0x2 \n\
/* 0803b242 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803b244 */ LDR R1, [R1] \n\
/* 0803b246 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0803b248 */ LSLS R2, R2, 0x7 \n\
/* 0803b24a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803b24c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803b24e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

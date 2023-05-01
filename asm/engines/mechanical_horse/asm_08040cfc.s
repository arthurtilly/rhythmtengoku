asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040cfc \n\
/* 08040cfc */ LDR R0, =gCurrentEngineData \n\
/* 08040cfe */ LDR R0, [R0] \n\
/* 08040d00 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08040d02 */ LSLS R1, R1, 0x2 \n\
/* 08040d04 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040d06 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08040d08 */ STRB R1, [R0] \n\
/* 08040d0a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f12c \n\
/* 0803f12c */ LDR R0, =gCurrentEngineData \n\
/* 0803f12e */ LDR R0, [R0] \n\
/* 0803f130 */ LDR R1, =0x39a \n\
/* 0803f132 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f134 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f136 */ STRH R1, [R0] \n\
/* 0803f138 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

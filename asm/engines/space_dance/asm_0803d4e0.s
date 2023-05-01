asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d4e0 \n\
/* 0803d4e0 */ LDR R0, =gCurrentEngineData \n\
/* 0803d4e2 */ LDR R0, [R0] \n\
/* 0803d4e4 */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
/* 0803d4e6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803d4e8 */ STRB R1, [R0] \n\
/* 0803d4ea */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

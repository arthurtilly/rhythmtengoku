asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022ba0 \n\
/* 08022ba0 */ LDR R1, =gCurrentEngineData \n\
/* 08022ba2 */ LDR R1, [R1] \n\
/* 08022ba4 */ MOVS R2, 0x86 @ Set R2 to 0x86 \n\
/* 08022ba6 */ LSLS R2, R2, 0x3 \n\
/* 08022ba8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08022baa */ STRB R0, [R1] \n\
/* 08022bac */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

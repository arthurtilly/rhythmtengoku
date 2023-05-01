asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a1d4 \n\
/* 0803a1d4 */ LDR R1, =gCurrentEngineData \n\
/* 0803a1d6 */ LDR R1, [R1] \n\
/* 0803a1d8 */ ADDS R1, 0x2C @ Add 0x2C to R1 \n\
/* 0803a1da */ STRB R0, [R1] \n\
/* 0803a1dc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

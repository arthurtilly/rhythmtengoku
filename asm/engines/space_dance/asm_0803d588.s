asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d588 \n\
/* 0803d588 */ LDR R1, =gCurrentEngineData \n\
/* 0803d58a */ LDR R1, [R1] \n\
/* 0803d58c */ ADDS R1, 0x35 @ Add 0x35 to R1 \n\
/* 0803d58e */ STRB R0, [R1] \n\
/* 0803d590 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

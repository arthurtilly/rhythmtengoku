asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035314 \n\
/* 08035314 */ LDR R1, =gCurrentEngineData \n\
/* 08035316 */ LDR R1, [R1] \n\
/* 08035318 */ STR R0, [R1, 0x38] \n\
/* 0803531a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

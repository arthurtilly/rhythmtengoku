asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a1f8 \n\
/* 0803a1f8 */ LDR R1, =gCurrentEngineData \n\
/* 0803a1fa */ LDR R1, [R1] \n\
/* 0803a1fc */ STR R0, [R1, 0x70] \n\
/* 0803a1fe */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ad50 \n\
/* 0803ad50 */ LDR R1, =gCurrentEngineData \n\
/* 0803ad52 */ LDR R1, [R1] \n\
/* 0803ad54 */ ADDS R1, 0xE8 @ Add 0xE8 to R1 \n\
/* 0803ad56 */ STR R0, [R1] \n\
/* 0803ad58 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

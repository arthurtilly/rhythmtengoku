asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037d1c \n\
/* 08037d1c */ LDR R0, =gCurrentEngineData \n\
/* 08037d1e */ LDR R0, [R0] \n\
/* 08037d20 */ LDR R0, [R0, 0x40] \n\
/* 08037d22 */ LDR R0, [R0, 0x4] \n\
/* 08037d24 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

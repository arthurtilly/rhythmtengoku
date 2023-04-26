asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037d0c \n\
/* 08037d0c */ LDR R0, =gCurrentEngineData \n\
/* 08037d0e */ LDR R0, [R0] \n\
/* 08037d10 */ LDR R0, [R0, 0x40] \n\
/* 08037d12 */ LDR R0, [R0] \n\
/* 08037d14 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

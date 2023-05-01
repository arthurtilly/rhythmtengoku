asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a158 \n\
/* 0803a158 */ LDR R1, =gCurrentEngineData \n\
/* 0803a15a */ LDR R1, [R1] \n\
/* 0803a15c */ STRB R0, [R1, 0x1C] \n\
/* 0803a15e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

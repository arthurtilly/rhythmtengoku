asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d3fc \n\
/* 0803d3fc */ LDR R1, =gCurrentEngineData \n\
/* 0803d3fe */ LDR R1, [R1] \n\
/* 0803d400 */ STRB R0, [R1, 0x1A] \n\
/* 0803d402 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

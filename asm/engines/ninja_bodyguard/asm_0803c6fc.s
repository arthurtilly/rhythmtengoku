asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c6fc \n\
/* 0803c6fc */ LDR R1, =gCurrentEngineData \n\
/* 0803c6fe */ LDR R1, [R1] \n\
/* 0803c700 */ LDR R2, =0x2ee \n\
/* 0803c702 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c704 */ STRB R0, [R1] \n\
/* 0803c706 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

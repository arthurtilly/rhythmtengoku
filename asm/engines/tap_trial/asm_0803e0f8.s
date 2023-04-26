asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e0f8 \n\
/* 0803e0f8 */ LDR R2, =gCurrentEngineData \n\
/* 0803e0fa */ LDR R0, [R2] \n\
/* 0803e0fc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803e0fe */ STRB R1, [R0, 0x1E] \n\
/* 0803e100 */ LDR R0, [R2] \n\
/* 0803e102 */ STRH R1, [R0, 0x20] \n\
/* 0803e104 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

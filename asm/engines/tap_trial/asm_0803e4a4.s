asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e4a4 \n\
/* 0803e4a4 */ PUSH {LR} \n\
/* 0803e4a6 */ LDR R0, =gCurrentEngineData \n\
/* 0803e4a8 */ LDR R1, [R0] \n\
/* 0803e4aa */ LDRH R0, [R1, 0x16] \n\
/* 0803e4ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e4ae */ BEQ branch_0803e4b4 \n\
/* 0803e4b0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803e4b2 */ STRH R0, [R1, 0x16] \n\
 \n\
branch_0803e4b4: \n\
/* 0803e4b4 */ POP {R0} \n\
/* 0803e4b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

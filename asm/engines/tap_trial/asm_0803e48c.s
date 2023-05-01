asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e48c \n\
/* 0803e48c */ PUSH {LR} \n\
/* 0803e48e */ LDR R0, =gCurrentEngineData \n\
/* 0803e490 */ LDR R1, [R0] \n\
/* 0803e492 */ LDRH R0, [R1, 0xA] \n\
/* 0803e494 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e496 */ BEQ branch_0803e49c \n\
/* 0803e498 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803e49a */ STRH R0, [R1, 0xA] \n\
 \n\
branch_0803e49c: \n\
/* 0803e49c */ POP {R0} \n\
/* 0803e49e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

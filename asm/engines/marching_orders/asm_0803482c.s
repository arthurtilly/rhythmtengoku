asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803482c \n\
/* 0803482c */ PUSH {LR} \n\
/* 0803482e */ LDR R0, =gCurrentEngineData \n\
/* 08034830 */ LDR R0, [R0] \n\
/* 08034832 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 08034834 */ LDRB R0, [R0] \n\
/* 08034836 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034838 */ BEQ branch_08034842 \n\
/* 0803483a */ LDR R1, =D_03004b10 \n\
/* 0803483c */ LDRH R0, [R1, 0x18] \n\
/* 0803483e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08034840 */ STRH R0, [R1, 0x18] \n\
 \n\
branch_08034842: \n\
/* 08034842 */ POP {R0} \n\
/* 08034844 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

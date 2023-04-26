asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e4bc \n\
/* 0803e4bc */ PUSH {LR} \n\
/* 0803e4be */ LDR R0, =gCurrentEngineData \n\
/* 0803e4c0 */ LDR R1, [R0] \n\
/* 0803e4c2 */ LDRH R0, [R1, 0x1C] \n\
/* 0803e4c4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e4c6 */ BEQ branch_0803e4d6 \n\
/* 0803e4c8 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803e4ca */ STRH R0, [R1, 0x1C] \n\
/* 0803e4cc */ LSLS R0, R0, 0x10 \n\
/* 0803e4ce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e4d0 */ BNE branch_0803e4d6 \n\
/* 0803e4d2 */ BL func_0803e160 \n\
 \n\
branch_0803e4d6: \n\
/* 0803e4d6 */ POP {R0} \n\
/* 0803e4d8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

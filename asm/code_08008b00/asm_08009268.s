asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009268 \n\
/* 08009268 */ PUSH {LR} \n\
/* 0800926a */ LDR R0, =D_03001108 \n\
/* 0800926c */ LDR R0, [R0] \n\
/* 0800926e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009270 */ BEQ branch_0800927e \n\
/* 08009272 */ LDR R0, =func_08009240 \n\
/* 08009274 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009276 */ BL func_080091c4 \n\
/* 0800927a */ BL func_0800915c \n\
 \n\
branch_0800927e: \n\
/* 0800927e */ POP {R0} \n\
/* 08009280 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

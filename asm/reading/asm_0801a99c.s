asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a99c \n\
/* 0801a99c */ PUSH {LR} \n\
/* 0801a99e */ LDR R0, =D_030046a4 \n\
/* 0801a9a0 */ LDR R0, [R0] \n\
/* 0801a9a2 */ LDR R0, [R0] \n\
/* 0801a9a4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a9a6 */ BNE branch_0801a9b0 \n\
/* 0801a9a8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a9aa */ B branch_0801a9b2 \n\
\n\
.ltorg \n\
 \n\
branch_0801a9b0: \n\
/* 0801a9b0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801a9b2: \n\
/* 0801a9b2 */ POP {R1} \n\
/* 0801a9b4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

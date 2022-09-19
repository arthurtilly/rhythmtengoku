asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d08c \n\
/* 0801d08c */ PUSH {LR} \n\
/* 0801d08e */ LDR R0, =D_030046a4 \n\
/* 0801d090 */ LDR R0, [R0] \n\
/* 0801d092 */ LDR R0, [R0] \n\
/* 0801d094 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d096 */ BNE branch_0801d0a0 \n\
/* 0801d098 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d09a */ B branch_0801d0a2 \n\
\n\
.ltorg \n\
 \n\
branch_0801d0a0: \n\
/* 0801d0a0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801d0a2: \n\
/* 0801d0a2 */ POP {R1} \n\
/* 0801d0a4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

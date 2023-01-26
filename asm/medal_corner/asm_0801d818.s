asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d818 \n\
/* 0801d818 */ PUSH {LR} \n\
/* 0801d81a */ LDR R0, =D_030046a4 \n\
/* 0801d81c */ LDR R0, [R0] \n\
/* 0801d81e */ LDR R0, [R0] \n\
/* 0801d820 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d822 */ BNE branch_0801d82c \n\
/* 0801d824 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d826 */ B branch_0801d82e \n\
\n\
.ltorg \n\
 \n\
branch_0801d82c: \n\
/* 0801d82c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801d82e: \n\
/* 0801d82e */ POP {R1} \n\
/* 0801d830 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

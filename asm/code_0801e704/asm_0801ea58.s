asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801ea58 \n\
/* 0801ea58 */ PUSH {LR} \n\
/* 0801ea5a */ LDR R0, =D_030046a4 \n\
/* 0801ea5c */ LDR R0, [R0] \n\
/* 0801ea5e */ LDR R0, [R0, 0x8] \n\
/* 0801ea60 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ea62 */ BNE branch_0801ea6c \n\
/* 0801ea64 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ea66 */ B branch_0801ea6e \n\
\n\
.ltorg \n\
 \n\
branch_0801ea6c: \n\
/* 0801ea6c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801ea6e: \n\
/* 0801ea6e */ POP {R1} \n\
/* 0801ea70 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

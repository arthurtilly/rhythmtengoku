asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a354 \n\
/* 0801a354 */ PUSH {LR} \n\
/* 0801a356 */ LDR R0, =D_030046a4 \n\
/* 0801a358 */ LDR R0, [R0] \n\
/* 0801a35a */ LDR R0, [R0, 0x8] \n\
/* 0801a35c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a35e */ BNE branch_0801a368 \n\
/* 0801a360 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a362 */ B branch_0801a36a \n\
\n\
.ltorg \n\
 \n\
branch_0801a368: \n\
/* 0801a368 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801a36a: \n\
/* 0801a36a */ POP {R1} \n\
/* 0801a36c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

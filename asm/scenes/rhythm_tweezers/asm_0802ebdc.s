asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ebdc \n\
/* 0802ebdc */ PUSH {LR} \n\
/* 0802ebde */ LDR R1, =D_03004b10 \n\
/* 0802ebe0 */ LDRH R2, [R1, 0x12] \n\
/* 0802ebe2 */ MOVS R3, 0x12 @ Set R3 to 0x12 \n\
/* 0802ebe4 */ LDRSH R0, [R1, R3] \n\
/* 0802ebe6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ebe8 */ BEQ branch_0802ebee \n\
/* 0802ebea */ SUBS R0, R2, 0x1 @ Set R0 to R2 - 0x1 \n\
/* 0802ebec */ STRH R0, [R1, 0x12] \n\
 \n\
branch_0802ebee: \n\
/* 0802ebee */ POP {R0} \n\
/* 0802ebf0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

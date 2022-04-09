asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b12c \n\
/* 0800b12c */ PUSH {LR} \n\
/* 0800b12e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b130 */ BEQ branch_0800b138 \n\
/* 0800b132 */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 0800b134 */ LDRSH R0, [R0, R1] \n\
/* 0800b136 */ B branch_0800b13a \n\
 \n\
branch_0800b138: \n\
/* 0800b138 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800b13a: \n\
/* 0800b13a */ POP {R1} \n\
/* 0800b13c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e8d8 \n\
/* 0800e8d8 */ PUSH {LR} \n\
/* 0800e8da */ B branch_0800e8e6 \n\
 \n\
branch_0800e8dc: \n\
/* 0800e8dc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e8de */ LDRSB R0, [R2, R0] \n\
/* 0800e8e0 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0800e8e2 */ BEQ branch_0800e8ee \n\
/* 0800e8e4 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
 \n\
branch_0800e8e6: \n\
/* 0800e8e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e8e8 */ LDRSB R0, [R2, R0] \n\
/* 0800e8ea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e8ec */ BGE branch_0800e8dc \n\
 \n\
branch_0800e8ee: \n\
/* 0800e8ee */ POP {R0} \n\
/* 0800e8f0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

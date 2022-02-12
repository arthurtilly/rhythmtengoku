asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020f48 \n\
/* 08020f48 */ PUSH {LR} \n\
/* 08020f4a */ LDR R0, =D_030055d0 \n\
/* 08020f4c */ LDR R0, [R0] \n\
/* 08020f4e */ LDR R2, =0x00000864 \n\
/* 08020f50 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08020f52 */ LDRH R0, [R1] \n\
/* 08020f54 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020f56 */ BEQ branch_08020f6a \n\
/* 08020f58 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08020f5a */ STRH R0, [R1] \n\
/* 08020f5c */ LSLS R0, R0, 0x10 \n\
/* 08020f5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020f60 */ BNE branch_08020f6a \n\
/* 08020f62 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08020f64 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08020f66 */ BL func_08017338 \n\
 \n\
branch_08020f6a: \n\
/* 08020f6a */ BL func_08020834 \n\
/* 08020f6e */ LDR R0, =D_030055d0 \n\
/* 08020f70 */ LDR R0, [R0] \n\
/* 08020f72 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08020f74 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08020f76 */ LDRH R0, [R1] \n\
/* 08020f78 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020f7a */ BEQ branch_08020f80 \n\
/* 08020f7c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08020f7e */ STRH R0, [R1] \n\
 \n\
branch_08020f80: \n\
/* 08020f80 */ POP {R0} \n\
/* 08020f82 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

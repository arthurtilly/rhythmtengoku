asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006f84 \n\
/* 08006f84 */ PUSH {R4, R5, LR} \n\
/* 08006f86 */ SUB SP, 0x4 \n\
/* 08006f88 */ LDR R4, =D_03004b10 \n\
/* 08006f8a */ LDR R0, =0x854 \n\
/* 08006f8c */ ADDS R5, R4, R0 @ Set R5 to R4 + R0 \n\
/* 08006f8e */ LDRH R1, [R5] \n\
/* 08006f90 */ LDR R0, =0xfff2 \n\
/* 08006f92 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006f94 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006f96 */ BEQ branch_08006fae \n\
/* 08006f98 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006f9a */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 08006f9c */ LDR R1, =D_030046c0 \n\
/* 08006f9e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08006fa0 */ LSLS R2, R2, 0x3 \n\
/* 08006fa2 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08006fa4 */ LSLS R3, R3, 0x1 \n\
/* 08006fa6 */ STR R3, [SP] \n\
/* 08006fa8 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08006faa */ BL func_0800186c \n\
 \n\
branch_08006fae: \n\
/* 08006fae */ LDRH R1, [R5] \n\
/* 08006fb0 */ LDR R0, =0xFFF0 \n\
/* 08006fb2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006fb4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006fb6 */ BEQ branch_08006fc8 \n\
/* 08006fb8 */ LDR R1, =0x858 \n\
/* 08006fba */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08006fbc */ LDR R1, [R0] \n\
/* 08006fbe */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08006fc0 */ BEQ branch_08006fc8 \n\
/* 08006fc2 */ LDR R0, =D_030046c0 \n\
/* 08006fc4 */ BL _call_via_r1 \n\
 \n\
branch_08006fc8: \n\
/* 08006fc8 */ BL func_0800724c \n\
/* 08006fcc */ ADD SP, 0x4 \n\
/* 08006fce */ POP {R4, R5} \n\
/* 08006fd0 */ POP {R0} \n\
/* 08006fd2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008f74 \n\
/* 08008f74 */ PUSH {LR} \n\
/* 08008f76 */ SUB SP, 0x4 \n\
/* 08008f78 */ LDR R1, =D_0e000003 \n\
/* 08008f7a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08008f7c */ STRB R0, [R1] \n\
/* 08008f7e */ SUBS R1, 0x3 @ Subtract 0x3 from R1 \n\
/* 08008f80 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08008f82 */ STRB R0, [R1] \n\
/* 08008f84 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08008f86 */ STRB R0, [R1] \n\
/* 08008f88 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008f8a */ STR R0, [SP] \n\
/* 08008f8c */ LDR R0, [SP] \n\
/* 08008f8e */ LDR R2, =D_030010f8 \n\
/* 08008f90 */ LDR R3, =D_030010f9 \n\
/* 08008f92 */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 08008f94 */ BHI branch_08008fa2 \n\
 \n\
branch_08008f96: \n\
/* 08008f96 */ LDR R0, [SP] \n\
/* 08008f98 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08008f9a */ STR R0, [SP] \n\
/* 08008f9c */ LDR R0, [SP] \n\
/* 08008f9e */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 08008fa0 */ BLS branch_08008f96 \n\
 \n\
branch_08008fa2: \n\
/* 08008fa2 */ LDR R1, =D_0e000002 \n\
/* 08008fa4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008fa6 */ STRB R0, [R1] \n\
/* 08008fa8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008faa */ B branch_08008fc0 \n\
\n\
.ltorg \n\
 \n\
branch_08008fbc: \n\
/* 08008fbc */ LDR R0, [SP] \n\
/* 08008fbe */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
 \n\
branch_08008fc0: \n\
/* 08008fc0 */ STR R0, [SP] \n\
/* 08008fc2 */ LDR R0, [SP] \n\
/* 08008fc4 */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 08008fc6 */ BLS branch_08008fbc \n\
/* 08008fc8 */ LDR R1, =D_0e000002 \n\
/* 08008fca */ LDRB R0, [R1] \n\
/* 08008fcc */ STRB R0, [R2] \n\
/* 08008fce */ LDRB R0, [R1] \n\
/* 08008fd0 */ STRB R0, [R3] \n\
/* 08008fd2 */ BL func_08008f1c \n\
/* 08008fd6 */ ADD SP, 0x4 \n\
/* 08008fd8 */ POP {R1} \n\
/* 08008fda */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

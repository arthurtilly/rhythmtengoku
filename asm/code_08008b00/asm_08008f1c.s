asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008f1c \n\
/* 08008f1c */ PUSH {R4-R7, LR} \n\
/* 08008f1e */ LDR R0, =0xf4240 \n\
/* 08008f20 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08008f22 */ MOVS R1, 0xE0 @ Set R1 to 0xE0 \n\
/* 08008f24 */ LSLS R1, R1, 0x14 \n\
/* 08008f26 */ MOVS R0, 0x70 @ Set R0 to 0x70 \n\
/* 08008f28 */ STRB R0, [R1] \n\
/* 08008f2a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08008f2c */ LDR R7, =D_030010f4 \n\
/* 08008f2e */ LDR R6, =D_0e000002 \n\
/* 08008f30 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08008f32 */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
/* 08008f34 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_08008f36: \n\
/* 08008f36 */ LDRB R0, [R6] \n\
/* 08008f38 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08008f3a */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08008f3c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08008f3e */ BEQ branch_08008f54 \n\
/* 08008f40 */ STR R2, [R4] \n\
/* 08008f42 */ ANDS R1, R5 @ Set R1 to R1 & R5 \n\
/* 08008f44 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08008f46 */ B branch_08008f60 \n\
\n\
.ltorg \n\
 \n\
branch_08008f54: \n\
/* 08008f54 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08008f56 */ CMP R2, R12 @ Compare R2 and R12 \n\
/* 08008f58 */ BCC branch_08008f36 \n\
/* 08008f5a */ STR R2, [R7] \n\
/* 08008f5c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08008f5e */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08008f60: \n\
/* 08008f60 */ POP {R4-R7} \n\
/* 08008f62 */ POP {R1} \n\
/* 08008f64 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

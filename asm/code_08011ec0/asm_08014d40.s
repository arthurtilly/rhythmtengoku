asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014d40 \n\
/* 08014d40 */ PUSH {R4-R6, LR} \n\
/* 08014d42 */ LDR R6, =D_030046a4 \n\
/* 08014d44 */ LDR R1, [R6] \n\
/* 08014d46 */ LDR R3, =0x4ee \n\
/* 08014d48 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 08014d4a */ LDRH R4, [R2] \n\
/* 08014d4c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08014d4e */ BEQ branch_08014d94 \n\
/* 08014d50 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08014d52 */ STRH R4, [R2] \n\
/* 08014d54 */ LSLS R4, R4, 0x10 \n\
/* 08014d56 */ LSRS R4, R4, 0x14 \n\
/* 08014d58 */ MVNS R4, R4 @ Set R4 to ~R4 \n\
/* 08014d5a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08014d5c */ LDR R5, =D_03005380 \n\
/* 08014d5e */ LDR R0, [R5] \n\
/* 08014d60 */ SUBS R3, 0x6 @ Subtract 0x6 from R3 \n\
/* 08014d62 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08014d64 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08014d66 */ LDRSH R1, [R1, R3] \n\
/* 08014d68 */ ANDS R4, R2 @ Set R4 to R4 & R2 \n\
/* 08014d6a */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08014d6c */ BL func_0804d770 \n\
/* 08014d70 */ LDR R0, [R5] \n\
/* 08014d72 */ LDR R1, [R6] \n\
/* 08014d74 */ LDR R2, =0x4ea \n\
/* 08014d76 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014d78 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08014d7a */ LDRSH R1, [R1, R3] \n\
/* 08014d7c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08014d7e */ BL func_0804d770 \n\
/* 08014d82 */ LDR R0, [R5] \n\
/* 08014d84 */ LDR R1, [R6] \n\
/* 08014d86 */ LDR R2, =0x4ec \n\
/* 08014d88 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014d8a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08014d8c */ LDRSH R1, [R1, R3] \n\
/* 08014d8e */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08014d90 */ BL func_0804d770 \n\
 \n\
branch_08014d94: \n\
/* 08014d94 */ POP {R4-R6} \n\
/* 08014d96 */ POP {R1} \n\
/* 08014d98 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

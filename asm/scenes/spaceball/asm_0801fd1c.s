asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801fd1c \n\
/* 0801fd1c */ PUSH {R4-R7, LR} \n\
/* 0801fd1e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801fd20 */ PUSH {R7} \n\
/* 0801fd22 */ LDR R0, =D_030055d0 \n\
/* 0801fd24 */ LDR R1, [R0] \n\
/* 0801fd26 */ LDR R1, [R1, 0x4] \n\
/* 0801fd28 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801fd2a */ LSLS R2, R2, 0x1 \n\
/* 0801fd2c */ ADDS R7, R1, R2 @ Set R7 to R1 + R2 \n\
/* 0801fd2e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801fd30 */ LSLS R2, R2, 0x3 \n\
/* 0801fd32 */ ADDS R6, R1, R2 @ Set R6 to R1 + R2 \n\
/* 0801fd34 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801fd36 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801fd38 */ MOVS R5, 0x98 @ Set R5 to 0x98 \n\
 \n\
branch_0801fd3a: \n\
/* 0801fd3a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801fd3c */ LDR R1, [R0] \n\
/* 0801fd3e */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0801fd40 */ LDRH R0, [R1, 0x4] \n\
/* 0801fd42 */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 0801fd44 */ STRH R0, [R1, 0x4] \n\
/* 0801fd46 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0801fd48 */ LDRSH R0, [R1, R2] \n\
/* 0801fd4a */ CMP R0, R7 @ Check R0 - R7 \n\
/* 0801fd4c */ BLT branch_0801fd52 \n\
/* 0801fd4e */ CMP R0, R6 @ Check R0 - R6 \n\
/* 0801fd50 */ BLE branch_0801fd58 \n\
 \n\
branch_0801fd52: \n\
/* 0801fd52 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801fd54 */ BL func_0801fc44 \n\
 \n\
branch_0801fd58: \n\
/* 0801fd58 */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 0801fd5a */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801fd5c */ CMP R4, 0x17 @ Compare R4 and 0x17 \n\
/* 0801fd5e */ BLS branch_0801fd3a \n\
/* 0801fd60 */ POP {R3} \n\
/* 0801fd62 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801fd64 */ POP {R4-R7} \n\
/* 0801fd66 */ POP {R0} \n\
/* 0801fd68 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

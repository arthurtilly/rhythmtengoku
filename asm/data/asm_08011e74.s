asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011e74 \n\
/* 08011e74 */ PUSH {R4-R7, LR} \n\
/* 08011e76 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08011e78 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08011e7a */ LDR R5, =D_03005380 \n\
/* 08011e7c */ LDR R0, [R5] \n\
/* 08011e7e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011e80 */ LDRSH R1, [R7, R2] \n\
/* 08011e82 */ LSLS R4, R4, 0x10 \n\
/* 08011e84 */ LSRS R6, R4, 0x10 \n\
/* 08011e86 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08011e88 */ BL func_0804d770 \n\
/* 08011e8c */ LDR R0, [R5] \n\
/* 08011e8e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08011e90 */ LDRSH R1, [R7, R2] \n\
/* 08011e92 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08011e94 */ BL func_0804d770 \n\
/* 08011e98 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08011e9a: \n\
/* 08011e9a */ LDR R0, =D_03005380 \n\
/* 08011e9c */ LDR R0, [R0] \n\
/* 08011e9e */ LSLS R2, R5, 0x1 \n\
/* 08011ea0 */ ADDS R1, R7, 0x4 @ Set R1 to R7 + 0x4 \n\
/* 08011ea2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08011ea4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011ea6 */ LDRSH R1, [R1, R2] \n\
/* 08011ea8 */ LSRS R2, R4, 0x10 \n\
/* 08011eaa */ BL func_0804d770 \n\
/* 08011eae */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08011eb0 */ CMP R5, 0x9 @ Compare R5 and 0x9 \n\
/* 08011eb2 */ BLS branch_08011e9a \n\
/* 08011eb4 */ POP {R4-R7} \n\
/* 08011eb6 */ POP {R0} \n\
/* 08011eb8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

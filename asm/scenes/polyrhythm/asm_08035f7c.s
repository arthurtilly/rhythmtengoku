asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035f7c \n\
/* 08035f7c */ PUSH {R4-R7, LR} \n\
/* 08035f7e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08035f80 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08035f82 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08035f84 */ PUSH {R5-R7} \n\
/* 08035f86 */ SUB SP, 0x18 \n\
/* 08035f88 */ LDR R0, =D_03005380 \n\
/* 08035f8a */ LDR R0, [R0] \n\
/* 08035f8c */ LDR R1, =D_088f61ec \n\
/* 08035f8e */ MOVS R2, 0x70 @ Set R2 to 0x70 \n\
/* 08035f90 */ STR R2, [SP] \n\
/* 08035f92 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08035f94 */ LSLS R2, R2, 0x7 \n\
/* 08035f96 */ STR R2, [SP, 0x4] \n\
/* 08035f98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035f9a */ STR R2, [SP, 0x8] \n\
/* 08035f9c */ STR R2, [SP, 0xC] \n\
/* 08035f9e */ STR R2, [SP, 0x10] \n\
/* 08035fa0 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08035fa2 */ BL func_0804d160 \n\
/* 08035fa6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035fa8 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08035faa */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_08035fac: \n\
/* 08035fac */ LDR R0, =D_089e5c00 \n\
/* 08035fae */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08035fb0 */ LSLS R1, R2, 0x1 \n\
/* 08035fb2 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 08035fb4 */ LDRH R4, [R0] \n\
/* 08035fb6 */ LDR R0, =D_089e5c04 \n\
/* 08035fb8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08035fba */ LDRH R5, [R1] \n\
/* 08035fbc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08035fbe */ SUBS R3, R3, R2 @ Set R3 to R3 - R2 \n\
/* 08035fc0 */ LSLS R3, R3, 0x1A \n\
/* 08035fc2 */ LDR R0, =0x44040000 \n\
/* 08035fc4 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08035fc6 */ LDR R0, =D_03005380 \n\
/* 08035fc8 */ LDR R0, [R0] \n\
/* 08035fca */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035fcc */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08035fce */ SUBS R2, R2, R1 @ Set R2 to R2 - R1 \n\
/* 08035fd0 */ LSLS R2, R2, 0x18 \n\
/* 08035fd2 */ ASRS R2, R2, 0x18 \n\
/* 08035fd4 */ MOVS R1, 0x6F @ Set R1 to 0x6F \n\
/* 08035fd6 */ STR R1, [SP] \n\
/* 08035fd8 */ LSRS R7, R3, 0x10 \n\
/* 08035fda */ LDR R1, =0xffff0000 \n\
/* 08035fdc */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 08035fde */ LSRS R3, R3, 0x10 \n\
/* 08035fe0 */ STR R3, [SP, 0x4] \n\
/* 08035fe2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08035fe4 */ STR R1, [SP, 0x8] \n\
/* 08035fe6 */ STR R1, [SP, 0xC] \n\
/* 08035fe8 */ STR R1, [SP, 0x10] \n\
/* 08035fea */ LDR R1, =D_088f62e4 \n\
/* 08035fec */ MOVS R3, 0x7A @ Set R3 to 0x7A \n\
/* 08035fee */ BL func_0804d160 \n\
/* 08035ff2 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08035ff4 */ LSLS R0, R2, 0x7 \n\
/* 08035ff6 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08035ff8 */ LDR R2, =D_030055d0 \n\
/* 08035ffa */ LDR R1, [R2] \n\
/* 08035ffc */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 08035ffe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036000 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08036002 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08036004 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08036006 */ STR R1, [SP, 0x14] \n\
 \n\
branch_08036008: \n\
/* 08036008 */ LDR R0, =D_03005380 \n\
/* 0803600a */ LDR R0, [R0] \n\
/* 0803600c */ LSLS R4, R4, 0x10 \n\
/* 0803600e */ ASRS R4, R4, 0x10 \n\
/* 08036010 */ LSLS R5, R5, 0x10 \n\
/* 08036012 */ ASRS R5, R5, 0x10 \n\
/* 08036014 */ STR R5, [SP] \n\
/* 08036016 */ STR R7, [SP, 0x4] \n\
/* 08036018 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803601a */ STR R2, [SP, 0x8] \n\
/* 0803601c */ STR R2, [SP, 0xC] \n\
/* 0803601e */ STR R2, [SP, 0x10] \n\
/* 08036020 */ LDR R1, =D_088f61fc \n\
/* 08036022 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036024 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08036026 */ BL func_0804d160 \n\
/* 0803602a */ STRH R0, [R6, 0x4] \n\
/* 0803602c */ LDRB R0, [R6] \n\
/* 0803602e */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08036030 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08036032 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08036034 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036036 */ SUBS R2, 0x31 @ Subtract 0x31 from R2 \n\
/* 08036038 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803603a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803603c */ STRB R0, [R6] \n\
/* 0803603e */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08036040 */ LSLS R4, R4, 0x10 \n\
/* 08036042 */ LSRS R4, R4, 0x10 \n\
/* 08036044 */ SUBS R5, 0x8 @ Subtract 0x8 from R5 \n\
/* 08036046 */ LSLS R5, R5, 0x10 \n\
/* 08036048 */ LSRS R5, R5, 0x10 \n\
/* 0803604a */ ADDS R0, R7, 0x4 @ Set R0 to R7 + 0x4 \n\
/* 0803604c */ LSLS R0, R0, 0x10 \n\
/* 0803604e */ LSRS R7, R0, 0x10 \n\
/* 08036050 */ ADDS R6, 0x8 @ Add 0x8 to R6 \n\
/* 08036052 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08036054 */ ADD R9, R0 @ Add R0 to R9 \n\
/* 08036056 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08036058 */ CMP R1, 0xF @ Compare R1 and 0xF \n\
/* 0803605a */ BLS branch_08036008 \n\
/* 0803605c */ LDR R2, =D_030055d0 \n\
/* 0803605e */ LDR R0, [R2] \n\
/* 08036060 */ MOVS R1, 0x82 @ Set R1 to 0x82 \n\
/* 08036062 */ LSLS R1, R1, 0x1 \n\
/* 08036064 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08036066 */ ADD R0, R10 @ Add R10 to R0 \n\
/* 08036068 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803606a */ STRB R2, [R0] \n\
/* 0803606c */ LDR R0, [SP, 0x14] \n\
/* 0803606e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08036070 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08036072 */ BLS branch_08035fac \n\
/* 08036074 */ ADD SP, 0x18 \n\
/* 08036076 */ POP {R3-R5} \n\
/* 08036078 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803607a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803607c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803607e */ POP {R4-R7} \n\
/* 08036080 */ POP {R0} \n\
/* 08036082 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

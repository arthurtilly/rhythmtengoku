asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046e78 \n\
/* 08046e78 */ PUSH {R4-R6, LR} \n\
/* 08046e7a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08046e7c */ PUSH {R6} \n\
/* 08046e7e */ SUB SP, 0x14 \n\
/* 08046e80 */ LDR R6, =D_030055d0 \n\
/* 08046e82 */ LDR R1, [R6] \n\
/* 08046e84 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08046e86 */ STRB R0, [R1] \n\
/* 08046e88 */ BL func_08046e48 \n\
/* 08046e8c */ BL func_0800e0ec \n\
/* 08046e90 */ STR R4, [SP] \n\
/* 08046e92 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08046e94 */ STR R0, [SP, 0x4] \n\
/* 08046e96 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08046e98 */ STR R0, [SP, 0x8] \n\
/* 08046e9a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08046e9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046e9e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08046ea0 */ BL func_0800e0a0 \n\
/* 08046ea4 */ LDR R0, =D_03005380 \n\
/* 08046ea6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08046ea8 */ LDR R0, [R0] \n\
/* 08046eaa */ LDR R1, =D_088b35dc \n\
/* 08046eac */ MOVS R2, 0xA2 @ Set R2 to 0xA2 \n\
/* 08046eae */ STR R2, [SP] \n\
/* 08046eb0 */ STR R4, [SP, 0x4] \n\
/* 08046eb2 */ STR R4, [SP, 0x8] \n\
/* 08046eb4 */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 08046eb6 */ STR R5, [SP, 0xC] \n\
/* 08046eb8 */ STR R4, [SP, 0x10] \n\
/* 08046eba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046ebc */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 08046ebe */ BL func_0804d160 \n\
/* 08046ec2 */ LDR R1, [R6] \n\
/* 08046ec4 */ STRH R0, [R1, 0x2] \n\
/* 08046ec6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08046ec8 */ LDR R0, [R1] \n\
/* 08046eca */ LDR R1, =D_088b35a4 \n\
/* 08046ecc */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08046ece */ STR R2, [SP] \n\
/* 08046ed0 */ STR R4, [SP, 0x4] \n\
/* 08046ed2 */ STR R4, [SP, 0x8] \n\
/* 08046ed4 */ STR R5, [SP, 0xC] \n\
/* 08046ed6 */ STR R4, [SP, 0x10] \n\
/* 08046ed8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046eda */ MOVS R3, 0x72 @ Set R3 to 0x72 \n\
/* 08046edc */ BL func_0804d160 \n\
/* 08046ee0 */ LDR R1, [R6] \n\
/* 08046ee2 */ STRH R0, [R1, 0x4] \n\
/* 08046ee4 */ ADD SP, 0x14 \n\
/* 08046ee6 */ POP {R3} \n\
/* 08046ee8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08046eea */ POP {R4-R6} \n\
/* 08046eec */ POP {R0} \n\
/* 08046eee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

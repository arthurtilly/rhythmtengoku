asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020a4c \n\
/* 08020a4c */ PUSH {R4-R7, LR} \n\
/* 08020a4e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08020a50 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08020a52 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08020a54 */ PUSH {R5-R7} \n\
/* 08020a56 */ SUB SP, 0x20 \n\
/* 08020a58 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08020a5a */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08020a5c */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08020a5e */ LDR R0, =D_030055d0 \n\
/* 08020a60 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08020a62 */ LSLS R0, R6, 0x1 \n\
/* 08020a64 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08020a66 */ LSLS R0, R0, 0x2 \n\
/* 08020a68 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 08020a6a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08020a6c */ LDR R1, [R2] \n\
/* 08020a6e */ ADDS R7, R1, R0 @ Set R7 to R1 + R0 \n\
/* 08020a70 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020a72 */ LDRSH R0, [R7, R3] \n\
/* 08020a74 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020a76 */ BLT branch_08020a9a \n\
/* 08020a78 */ LDR R0, [R1, 0x4] \n\
/* 08020a7a */ LDR R1, [R7, 0x4] \n\
/* 08020a7c */ BL func_08004d44 \n\
/* 08020a80 */ LDR R4, =D_03005380 \n\
/* 08020a82 */ LDR R0, [R4] \n\
/* 08020a84 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020a86 */ LDRSH R1, [R7, R2] \n\
/* 08020a88 */ BL func_0804d504 \n\
/* 08020a8c */ LDR R0, [R4] \n\
/* 08020a8e */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08020a90 */ LDRSH R1, [R7, R3] \n\
/* 08020a92 */ BL func_0804d504 \n\
/* 08020a96 */ LDR R0, =0x0000ffff \n\
/* 08020a98 */ STRH R0, [R7] \n\
 \n\
branch_08020a9a: \n\
/* 08020a9a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08020a9c */ BNE branch_08020aa0 \n\
/* 08020a9e */ B branch_08020bd4 \n\
 \n\
branch_08020aa0: \n\
/* 08020aa0 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08020aa2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08020aa4 */ BEQ branch_08020ace \n\
/* 08020aa6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08020aa8 */ BCC branch_08020abc \n\
/* 08020aaa */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08020aac */ BEQ branch_08020ae0 \n\
/* 08020aae */ B branch_08020af2 \n\
\n\
.ltorg \n\
 \n\
branch_08020abc: \n\
/* 08020abc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08020abe */ LDR R0, [R1] \n\
/* 08020ac0 */ LDR R0, [R0, 0x4] \n\
/* 08020ac2 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08020ac4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020ac6 */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 08020ac8 */ BL func_08004b98 \n\
/* 08020acc */ B branch_08020af0 \n\
 \n\
branch_08020ace: \n\
/* 08020ace */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08020ad0 */ LDR R0, [R2] \n\
/* 08020ad2 */ LDR R0, [R0, 0x4] \n\
/* 08020ad4 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08020ad6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020ad8 */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 08020ada */ BL func_08004c0c \n\
/* 08020ade */ B branch_08020af0 \n\
 \n\
branch_08020ae0: \n\
/* 08020ae0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08020ae2 */ LDR R0, [R3] \n\
/* 08020ae4 */ LDR R0, [R0, 0x4] \n\
/* 08020ae6 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08020ae8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020aea */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 08020aec */ BL func_08004c50 \n\
 \n\
branch_08020af0: \n\
/* 08020af0 */ STR R0, [SP, 0x1C] \n\
 \n\
branch_08020af2: \n\
/* 08020af2 */ LDR R0, =D_089deedc \n\
/* 08020af4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08020af6 */ LSLS R1, R2, 0x1 \n\
/* 08020af8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08020afa */ LSLS R4, R6, 0x1 \n\
/* 08020afc */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 08020afe */ LSLS R4, R4, 0x13 \n\
/* 08020b00 */ LDR R6, =D_03005380 \n\
/* 08020b02 */ LDR R0, [R6] \n\
/* 08020b04 */ LDRH R3, [R1] \n\
/* 08020b06 */ STR R3, [SP, 0x18] \n\
/* 08020b08 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020b0a */ LDRSH R2, [R1, R3] \n\
/* 08020b0c */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08020b0e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08020b10 */ LSLS R1, R1, 0xE \n\
/* 08020b12 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08020b14 */ ASRS R4, R4, 0x10 \n\
/* 08020b16 */ STR R4, [SP] \n\
/* 08020b18 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08020b1a */ LSLS R2, R2, 0x7 \n\
/* 08020b1c */ STR R2, [SP, 0x4] \n\
/* 08020b1e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08020b20 */ STR R5, [SP, 0x8] \n\
/* 08020b22 */ STR R5, [SP, 0xC] \n\
/* 08020b24 */ STR R5, [SP, 0x10] \n\
/* 08020b26 */ LDR R1, [SP, 0x1C] \n\
/* 08020b28 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020b2a */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08020b2c */ BL func_0804d160 \n\
/* 08020b30 */ STRH R0, [R7] \n\
/* 08020b32 */ LDR R0, [R6] \n\
/* 08020b34 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020b36 */ LDRSH R1, [R7, R3] \n\
/* 08020b38 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08020b3a */ BL func_0804d8c4 \n\
/* 08020b3e */ LDR R0, [R6] \n\
/* 08020b40 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020b42 */ LDRSH R1, [R7, R2] \n\
/* 08020b44 */ LDR R3, =D_030055d0 \n\
/* 08020b46 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08020b48 */ LDR R3, [R3] \n\
/* 08020b4a */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08020b4c */ ADDS R2, 0x3A @ Add 0x3A to R2 \n\
/* 08020b4e */ ADDS R3, 0x3C @ Add 0x3C to R3 \n\
/* 08020b50 */ BL func_0804db44 \n\
/* 08020b54 */ LDR R0, [R6] \n\
/* 08020b56 */ STR R4, [SP] \n\
/* 08020b58 */ MOVS R1, 0x82 @ Set R1 to 0x82 \n\
/* 08020b5a */ LSLS R1, R1, 0x7 \n\
/* 08020b5c */ STR R1, [SP, 0x4] \n\
/* 08020b5e */ STR R5, [SP, 0x8] \n\
/* 08020b60 */ STR R5, [SP, 0xC] \n\
/* 08020b62 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08020b64 */ LSLS R1, R1, 0x8 \n\
/* 08020b66 */ STR R1, [SP, 0x10] \n\
/* 08020b68 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08020b6a */ STR R1, [SP, 0x14] \n\
/* 08020b6c */ LDR R1, [SP, 0x1C] \n\
/* 08020b6e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020b70 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08020b72 */ BL func_0804d294 \n\
/* 08020b76 */ STRH R0, [R7, 0x2] \n\
/* 08020b78 */ LDR R0, [R6] \n\
/* 08020b7a */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08020b7c */ LDRSH R1, [R7, R2] \n\
/* 08020b7e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08020b80 */ LDR R3, [R2] \n\
/* 08020b82 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08020b84 */ ADDS R2, 0x3A @ Add 0x3A to R2 \n\
/* 08020b86 */ ADDS R3, 0x3C @ Add 0x3C to R3 \n\
/* 08020b88 */ BL func_0804db44 \n\
/* 08020b8c */ LDR R3, [SP, 0x1C] \n\
/* 08020b8e */ STR R3, [R7, 0x4] \n\
/* 08020b90 */ LDR R0, [R6] \n\
/* 08020b92 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020b94 */ LDRSH R1, [R7, R2] \n\
/* 08020b96 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08020b98 */ BL func_0804ddb0 \n\
/* 08020b9c */ STRH R0, [R7, 0xA] \n\
/* 08020b9e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08020ba0 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08020ba2 */ BEQ branch_08020bc6 \n\
/* 08020ba4 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08020ba6 */ BCC branch_08020bbc \n\
/* 08020ba8 */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 08020baa */ BEQ branch_08020bce \n\
/* 08020bac */ B branch_08020bd4 \n\
\n\
.ltorg \n\
 \n\
branch_08020bbc: \n\
/* 08020bbc */ LDRH R0, [R7, 0xA] \n\
/* 08020bbe */ LSRS R0, R0, 0x1 \n\
/* 08020bc0 */ LDR R1, [SP, 0x18] \n\
/* 08020bc2 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 08020bc4 */ B branch_08020bd2 \n\
 \n\
branch_08020bc6: \n\
/* 08020bc6 */ MOV R2, SP @ Set R2 to SP \n\
/* 08020bc8 */ LDRH R2, [R2, 0x18] \n\
/* 08020bca */ STRH R2, [R7, 0x8] \n\
/* 08020bcc */ B branch_08020bd4 \n\
 \n\
branch_08020bce: \n\
/* 08020bce */ LDR R3, [SP, 0x18] \n\
/* 08020bd0 */ SUBS R0, R3, R0 @ Set R0 to R3 - R0 \n\
 \n\
branch_08020bd2: \n\
/* 08020bd2 */ STRH R0, [R7, 0x8] \n\
 \n\
branch_08020bd4: \n\
/* 08020bd4 */ ADD SP, 0x20 \n\
/* 08020bd6 */ POP {R3-R5} \n\
/* 08020bd8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08020bda */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08020bdc */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08020bde */ POP {R4-R7} \n\
/* 08020be0 */ POP {R0} \n\
/* 08020be2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

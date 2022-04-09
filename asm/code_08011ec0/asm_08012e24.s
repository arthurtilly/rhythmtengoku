asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012e24 \n\
/* 08012e24 */ PUSH {R4-R7, LR} \n\
/* 08012e26 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08012e28 */ PUSH {R7} \n\
/* 08012e2a */ SUB SP, 0x8 \n\
/* 08012e2c */ LDR R1, =D_030046a4 \n\
/* 08012e2e */ LDR R0, [R1] \n\
/* 08012e30 */ MOVS R2, 0xD0 @ Set R2 to 0xD0 \n\
/* 08012e32 */ LSLS R2, R2, 0x2 \n\
/* 08012e34 */ ADDS R7, R0, R2 @ Set R7 to R0 + R2 \n\
/* 08012e36 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08012e38 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08012e3a */ LDRH R0, [R7, 0xA] \n\
/* 08012e3c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08012e3e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012e40 */ BEQ branch_08012ea2 \n\
/* 08012e42 */ CMP R0, 0x1E @ Compare R0 and 0x1E \n\
/* 08012e44 */ BNE branch_08012e4c \n\
/* 08012e46 */ LDR R0, =s_f_campaign_notice_seqData \n\
/* 08012e48 */ BL func_08002634 \n\
 \n\
branch_08012e4c: \n\
/* 08012e4c */ LDRH R0, [R7, 0xA] \n\
/* 08012e4e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08012e50 */ STRH R0, [R7, 0xA] \n\
/* 08012e52 */ LSLS R0, R0, 0x10 \n\
/* 08012e54 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012e56 */ BNE branch_08012e9e \n\
/* 08012e58 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 08012e5a */ LDRSH R0, [R7, R4] \n\
/* 08012e5c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08012e5e */ LDRSH R1, [R7, R2] \n\
/* 08012e60 */ BL func_08012fcc \n\
/* 08012e64 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08012e66 */ LDRSH R0, [R7, R3] \n\
/* 08012e68 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 08012e6a */ LDRSH R1, [R7, R4] \n\
/* 08012e6c */ MOV R4, SP @ Set R4 to SP \n\
/* 08012e6e */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08012e70 */ MOV R2, SP @ Set R2 to SP \n\
/* 08012e72 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08012e74 */ BL func_0801332c \n\
/* 08012e78 */ MOV R0, SP @ Set R0 to SP \n\
/* 08012e7a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08012e7c */ LDRSH R0, [R0, R1] \n\
/* 08012e7e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012e80 */ LDRSH R1, [R4, R2] \n\
/* 08012e82 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08012e84 */ BL func_080139b0 \n\
/* 08012e88 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08012e8a */ LSLS R1, R1, 0x1 \n\
/* 08012e8c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08012e8e */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08012e90 */ BL func_080139f4 \n\
/* 08012e94 */ LDR R2, [R5] \n\
/* 08012e96 */ LDRB R0, [R2, 0x8] \n\
/* 08012e98 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08012e9a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08012e9c */ STRB R0, [R2, 0x8] \n\
 \n\
branch_08012e9e: \n\
/* 08012e9e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08012ea0 */ MOV R8, R3 @ Set R8 to R3 \n\
 \n\
branch_08012ea2: \n\
/* 08012ea2 */ LDR R1, [R5] \n\
/* 08012ea4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08012ea6 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08012ea8 */ LDRB R0, [R0] \n\
/* 08012eaa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012eac */ BEQ branch_08012eb2 \n\
/* 08012eae */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08012eb0 */ MOV R8, R4 @ Set R8 to R4 \n\
 \n\
branch_08012eb2: \n\
/* 08012eb2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08012eb4 */ ADDS R0, 0x5C @ Add 0x5C to R0 \n\
/* 08012eb6 */ LDRB R0, [R0] \n\
/* 08012eb8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012eba */ BEQ branch_08012ec0 \n\
/* 08012ebc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012ebe */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_08012ec0: \n\
/* 08012ec0 */ LDR R0, [R7, 0xC] \n\
/* 08012ec2 */ BL func_0800ac58 \n\
/* 08012ec6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012ec8 */ BEQ branch_08012ece \n\
/* 08012eca */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08012ecc */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_08012ece: \n\
/* 08012ece */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08012ed0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08012ed2 */ BNE branch_08012fa4 \n\
/* 08012ed4 */ LDRH R0, [R7, 0x8] \n\
/* 08012ed6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012ed8 */ BEQ branch_08012f18 \n\
/* 08012eda */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08012edc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08012ede */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08012ee0 */ STRH R0, [R7, 0x8] \n\
/* 08012ee2 */ LSLS R0, R0, 0x10 \n\
/* 08012ee4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012ee6 */ BNE branch_08012f18 \n\
/* 08012ee8 */ LDR R0, [R7, 0xC] \n\
/* 08012eea */ ADD R4, SP, 0x4 \n\
/* 08012eec */ MOV R5, SP @ Set R5 to SP \n\
/* 08012eee */ ADDS R5, 0x6 @ Add 0x6 to R5 \n\
/* 08012ef0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08012ef2 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08012ef4 */ BL func_0800acf8 \n\
/* 08012ef8 */ LDR R6, =D_03005380 \n\
/* 08012efa */ LDR R0, [R6] \n\
/* 08012efc */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08012efe */ LDRSH R1, [R7, R2] \n\
/* 08012f00 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08012f02 */ LDRSH R2, [R4, R3] \n\
/* 08012f04 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08012f06 */ LDRSH R3, [R5, R4] \n\
/* 08012f08 */ BL func_0804d5d4 \n\
/* 08012f0c */ LDR R0, [R6] \n\
/* 08012f0e */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08012f10 */ LDRSH R1, [R7, R2] \n\
/* 08012f12 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08012f14 */ BL func_0804d770 \n\
 \n\
branch_08012f18: \n\
/* 08012f18 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08012f1a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08012f1c */ BNE branch_08012fa4 \n\
/* 08012f1e */ LDR R0, =D_03004afc \n\
/* 08012f20 */ LDRH R1, [R0] \n\
/* 08012f22 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012f24 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08012f26 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012f28 */ BEQ branch_08012fa4 \n\
/* 08012f2a */ LDR R5, =D_030046a4 \n\
/* 08012f2c */ LDR R1, [R5] \n\
/* 08012f2e */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08012f30 */ LDRSB R0, [R1, R0] \n\
/* 08012f32 */ LDRB R1, [R1, 0x11] \n\
/* 08012f34 */ LSLS R1, R1, 0x18 \n\
/* 08012f36 */ ASRS R1, R1, 0x18 \n\
/* 08012f38 */ MOV R4, SP @ Set R4 to SP \n\
/* 08012f3a */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08012f3c */ MOV R2, SP @ Set R2 to SP \n\
/* 08012f3e */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08012f40 */ BL func_0801332c \n\
/* 08012f44 */ MOV R0, SP @ Set R0 to SP \n\
/* 08012f46 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08012f48 */ LDRSH R0, [R0, R1] \n\
/* 08012f4a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012f4c */ LDRSH R1, [R4, R2] \n\
/* 08012f4e */ MOVS R2, 0xDC @ Set R2 to 0xDC \n\
/* 08012f50 */ BL func_080139b0 \n\
/* 08012f54 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08012f56 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08012f58 */ MOVS R2, 0xDC @ Set R2 to 0xDC \n\
/* 08012f5a */ BL func_080139f4 \n\
/* 08012f5e */ LDR R4, =D_03005380 \n\
/* 08012f60 */ LDR R0, [R4] \n\
/* 08012f62 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08012f64 */ LDRSH R1, [R7, R3] \n\
/* 08012f66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012f68 */ BL func_0804d770 \n\
/* 08012f6c */ LDR R0, [R4] \n\
/* 08012f6e */ LDR R1, [R5] \n\
/* 08012f70 */ MOVS R4, 0xC @ Set R4 to 0xC \n\
/* 08012f72 */ LDRSH R1, [R1, R4] \n\
/* 08012f74 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08012f76 */ BL func_0804d770 \n\
/* 08012f7a */ LDR R2, [R5] \n\
/* 08012f7c */ LDRB R1, [R2, 0x8] \n\
/* 08012f7e */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08012f80 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08012f82 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08012f84 */ STRB R0, [R2, 0x8] \n\
/* 08012f86 */ LDR R0, =s_menu_kettei2_seqData \n\
/* 08012f88 */ BL func_08002634 \n\
/* 08012f8c */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08012f8e */ LSLS R4, R4, 0x1 \n\
/* 08012f90 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08012f92 */ BL func_0800c3a4 \n\
/* 08012f96 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08012f98 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012f9a */ BL func_0800c138 \n\
/* 08012f9e */ LDR R1, [R5] \n\
/* 08012fa0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08012fa2 */ STRB R0, [R1] \n\
 \n\
branch_08012fa4: \n\
/* 08012fa4 */ LDR R0, [R7, 0xC] \n\
/* 08012fa6 */ BL func_0800a914 \n\
/* 08012faa */ ADD SP, 0x8 \n\
/* 08012fac */ POP {R3} \n\
/* 08012fae */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08012fb0 */ POP {R4-R7} \n\
/* 08012fb2 */ POP {R0} \n\
/* 08012fb4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

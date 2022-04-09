asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017ec8 \n\
/* 08017ec8 */ PUSH {R4-R7, LR} \n\
/* 08017eca */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08017ecc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08017ece */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08017ed0 */ PUSH {R5-R7} \n\
/* 08017ed2 */ SUB SP, 0x28 \n\
/* 08017ed4 */ STR R0, [SP, 0x8] \n\
/* 08017ed6 */ STR R1, [SP, 0xC] \n\
/* 08017ed8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017eda */ STR R0, [SP, 0x10] \n\
/* 08017edc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08017ede */ STR R1, [SP, 0x14] \n\
/* 08017ee0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08017ee2 */ STR R2, [SP, 0x20] \n\
/* 08017ee4 */ LDR R4, =D_030046a4 \n\
 \n\
branch_08017ee6: \n\
/* 08017ee6 */ LDR R3, [SP, 0xC] \n\
/* 08017ee8 */ LSLS R5, R3, 0x10 \n\
/* 08017eea */ LDR R0, [SP, 0x8] \n\
/* 08017eec */ ORRS R5, R0 @ Set R5 to R5 | R0 \n\
/* 08017eee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08017ef0 */ LSLS R0, R1 @ Set R0 to R0 << R1 (logical) \n\
/* 08017ef2 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 08017ef4 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08017ef6 */ STR R1, [SP, 0x24] \n\
/* 08017ef8 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08017efa */ BEQ branch_08017fc6 \n\
/* 08017efc */ LSLS R0, R5, 0x10 \n\
/* 08017efe */ LSRS R0, R0, 0x10 \n\
/* 08017f00 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08017f02 */ LSRS R1, R5, 0x10 \n\
/* 08017f04 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08017f06 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08017f08 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08017f0a */ STR R2, [SP, 0x18] \n\
/* 08017f0c */ LDR R6, =0x270f \n\
/* 08017f0e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08017f10 */ STR R3, [SP, 0x1C] \n\
/* 08017f12 */ LDR R0, [R4] \n\
/* 08017f14 */ LDR R4, [R0, 0x18] \n\
/* 08017f16 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08017f18 */ BEQ branch_08017f88 \n\
 \n\
branch_08017f1a: \n\
/* 08017f1a */ LDR R0, [R4, 0x4] \n\
/* 08017f1c */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08017f1e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017f20 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08017f22 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08017f24 */ ADD R3, SP, 0x4 \n\
/* 08017f26 */ BL func_08017c8c \n\
/* 08017f2a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08017f2c */ LDR R0, =D_030046a4 \n\
/* 08017f2e */ LDR R0, [R0] \n\
/* 08017f30 */ ADDS R0, 0x5E @ Add 0x5E to R0 \n\
/* 08017f32 */ LDRB R0, [R0] \n\
/* 08017f34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017f36 */ BEQ branch_08017f48 \n\
/* 08017f38 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08017f3a */ BEQ branch_08017f6a \n\
/* 08017f3c */ B branch_08017f82 \n\
\n\
.ltorg \n\
 \n\
branch_08017f48: \n\
/* 08017f48 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08017f4a */ BEQ branch_08017f82 \n\
/* 08017f4c */ LDR R2, [SP, 0x4] \n\
/* 08017f4e */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 08017f50 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08017f52 */ BGE branch_08017f56 \n\
/* 08017f54 */ NEGS R3, R2 @ Set R3 to -R2 \n\
 \n\
branch_08017f56: \n\
/* 08017f56 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08017f58 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08017f5a */ BGE branch_08017f5e \n\
/* 08017f5c */ NEGS R0, R6 @ Set R0 to -R6 \n\
 \n\
branch_08017f5e: \n\
/* 08017f5e */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08017f60 */ BGE branch_08017f80 \n\
/* 08017f62 */ STR R4, [SP, 0x18] \n\
/* 08017f64 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08017f66 */ STR R1, [SP, 0x1C] \n\
/* 08017f68 */ B branch_08017f80 \n\
 \n\
branch_08017f6a: \n\
/* 08017f6a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08017f6c */ BEQ branch_08017f82 \n\
/* 08017f6e */ LDR R2, [SP, 0x4] \n\
/* 08017f70 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08017f72 */ STR R3, [SP] \n\
/* 08017f74 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017f76 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08017f78 */ BL func_08017e2c \n\
/* 08017f7c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08017f7e */ STR R0, [SP, 0x10] \n\
 \n\
branch_08017f80: \n\
/* 08017f80 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08017f82: \n\
/* 08017f82 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08017f84 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08017f86 */ BNE branch_08017f1a \n\
 \n\
branch_08017f88: \n\
/* 08017f88 */ LDR R1, [SP, 0x18] \n\
/* 08017f8a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08017f8c */ BEQ branch_08017fa2 \n\
/* 08017f8e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08017f90 */ STR R2, [SP] \n\
/* 08017f92 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08017f94 */ LDR R1, [SP, 0x1C] \n\
/* 08017f96 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08017f98 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08017f9a */ BL func_08017e2c \n\
/* 08017f9e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08017fa0 */ STR R3, [SP, 0x10] \n\
 \n\
branch_08017fa2: \n\
/* 08017fa2 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08017fa4 */ BEQ branch_08017fb0 \n\
/* 08017fa6 */ LDR R0, [SP, 0x20] \n\
/* 08017fa8 */ ORRS R0, R5 @ Set R0 to R0 | R5 \n\
/* 08017faa */ STR R0, [SP, 0x20] \n\
/* 08017fac */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08017fae */ STR R1, [SP, 0x14] \n\
 \n\
branch_08017fb0: \n\
/* 08017fb0 */ LDR R2, =D_030046a4 \n\
/* 08017fb2 */ LDR R1, [R2] \n\
/* 08017fb4 */ LDRH R0, [R1, 0xA] \n\
/* 08017fb6 */ LDR R3, [SP, 0x8] \n\
/* 08017fb8 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 08017fba */ STR R3, [SP, 0x8] \n\
/* 08017fbc */ LDRH R0, [R1, 0xC] \n\
/* 08017fbe */ LDR R1, [SP, 0xC] \n\
/* 08017fc0 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08017fc2 */ STR R1, [SP, 0xC] \n\
/* 08017fc4 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
 \n\
branch_08017fc6: \n\
/* 08017fc6 */ LDR R1, [SP, 0x24] \n\
/* 08017fc8 */ CMP R1, 0x1F @ Compare R1 and 0x1F \n\
/* 08017fca */ BLS branch_08017ee6 \n\
/* 08017fcc */ LDR R2, [SP, 0x10] \n\
/* 08017fce */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08017fd0 */ BNE branch_08017fe0 \n\
/* 08017fd2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08017fd4 */ LSLS R3, R3, 0x10 \n\
/* 08017fd6 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08017fd8 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 08017fda */ STR R0, [SP, 0x20] \n\
/* 08017fdc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08017fde */ STR R1, [SP, 0x14] \n\
 \n\
branch_08017fe0: \n\
/* 08017fe0 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 08017fe2 */ LDR R0, [R5] \n\
/* 08017fe4 */ LDRH R1, [R0, 0xA] \n\
/* 08017fe6 */ LDRH R0, [R0, 0xC] \n\
/* 08017fe8 */ LSLS R0, R0, 0x10 \n\
/* 08017fea */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08017fec */ LDR R2, [SP, 0x20] \n\
/* 08017fee */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 08017ff0 */ STR R2, [SP, 0x20] \n\
/* 08017ff2 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08017ff4 */ BNE branch_08017ffa \n\
/* 08017ff6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08017ff8 */ STR R3, [SP, 0x14] \n\
 \n\
branch_08017ffa: \n\
/* 08017ffa */ LDR R0, [SP, 0x14] \n\
/* 08017ffc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017ffe */ BEQ branch_08018036 \n\
/* 08018000 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018002 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08018004 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018006 */ BL func_08017928 \n\
/* 0801800a */ LDR R0, [R5] \n\
/* 0801800c */ LDR R0, [R0, 0x10] \n\
/* 0801800e */ LDR R2, [R0, 0x1C] \n\
/* 08018010 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08018012 */ BEQ branch_08018020 \n\
/* 08018014 */ LDR R0, =0xffff \n\
/* 08018016 */ LDR R1, [SP, 0x20] \n\
/* 08018018 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801801a */ LSRS R1, R1, 0x10 \n\
/* 0801801c */ BL _call_via_r2 \n\
 \n\
branch_08018020: \n\
/* 08018020 */ LDR R0, [R4] \n\
/* 08018022 */ MOVS R2, 0x95 @ Set R2 to 0x95 \n\
/* 08018024 */ LSLS R2, R2, 0x3 \n\
/* 08018026 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08018028 */ LDRB R0, [R0] \n\
/* 0801802a */ BL func_0800c3a4 \n\
/* 0801802e */ LDR R1, [R4] \n\
/* 08018030 */ LDR R3, =0x4a7 \n\
/* 08018032 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08018034 */ STRB R0, [R1] \n\
 \n\
branch_08018036: \n\
/* 08018036 */ ADD SP, 0x28 \n\
/* 08018038 */ POP {R3-R5} \n\
/* 0801803a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801803c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801803e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08018040 */ POP {R4-R7} \n\
/* 08018042 */ POP {R0} \n\
/* 08018044 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

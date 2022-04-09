asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009de4 \n\
/* 08009de4 */ PUSH {R4-R7, LR} \n\
/* 08009de6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08009de8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08009dea */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08009dec */ PUSH {R5-R7} \n\
/* 08009dee */ SUB SP, 0x24 \n\
/* 08009df0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08009df2 */ STR R1, [SP, 0x10] \n\
/* 08009df4 */ STR R2, [SP, 0x14] \n\
/* 08009df6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08009df8 */ LDR R3, [SP, 0x44] \n\
/* 08009dfa */ LDR R5, [SP, 0x4C] \n\
/* 08009dfc */ LDR R2, [SP, 0x50] \n\
/* 08009dfe */ LDR R0, [SP, 0x54] \n\
/* 08009e00 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009e02 */ BEQ branch_08009e18 \n\
/* 08009e04 */ LSLS R0, R1, 0x3 \n\
/* 08009e06 */ LDR R1, [SP, 0x14] \n\
/* 08009e08 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08009e0a */ LDR R3, [R3] \n\
/* 08009e0c */ STR R2, [SP] \n\
/* 08009e0e */ STR R5, [SP, 0x4] \n\
/* 08009e10 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08009e12 */ BL func_080099a0 \n\
/* 08009e16 */ B branch_08009e32 \n\
 \n\
branch_08009e18: \n\
/* 08009e18 */ LDR R1, [SP, 0x10] \n\
/* 08009e1a */ LSLS R0, R1, 0x3 \n\
/* 08009e1c */ LDR R1, [SP, 0x14] \n\
/* 08009e1e */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08009e20 */ STR R2, [SP] \n\
/* 08009e22 */ STR R5, [SP, 0x4] \n\
/* 08009e24 */ LDR R2, [SP, 0x58] \n\
/* 08009e26 */ STR R2, [SP, 0x8] \n\
/* 08009e28 */ LDR R2, [SP, 0x5C] \n\
/* 08009e2a */ STR R2, [SP, 0xC] \n\
/* 08009e2c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08009e2e */ BL func_08009af4 \n\
 \n\
branch_08009e32: \n\
/* 08009e32 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08009e34 */ LDR R0, =D_030012f8 \n\
/* 08009e36 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08009e38 */ STR R2, [R0] \n\
/* 08009e3a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08009e3c */ ADDS R0, 0x7 @ Add 0x7 to R0 \n\
/* 08009e3e */ ASRS R6, R0, 0x3 \n\
/* 08009e40 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08009e42 */ STR R7, [SP, 0x20] \n\
/* 08009e44 */ LSLS R4, R4, 0x10 \n\
/* 08009e46 */ CMP R6, 0x3 @ Compare R6 and 0x3 \n\
/* 08009e48 */ BLE branch_08009e56 \n\
 \n\
branch_08009e4a: \n\
/* 08009e4a */ SUBS R6, 0x4 @ Subtract 0x4 from R6 \n\
/* 08009e4c */ LDR R0, [SP, 0x20] \n\
/* 08009e4e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08009e50 */ STR R0, [SP, 0x20] \n\
/* 08009e52 */ CMP R6, 0x3 @ Compare R6 and 0x3 \n\
/* 08009e54 */ BGT branch_08009e4a \n\
 \n\
branch_08009e56: \n\
/* 08009e56 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009e58 */ STR R1, [SP, 0x1C] \n\
/* 08009e5a */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08009e5c */ BLE branch_08009e6a \n\
 \n\
branch_08009e5e: \n\
/* 08009e5e */ SUBS R6, 0x2 @ Subtract 0x2 from R6 \n\
/* 08009e60 */ LDR R2, [SP, 0x1C] \n\
/* 08009e62 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08009e64 */ STR R2, [SP, 0x1C] \n\
/* 08009e66 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08009e68 */ BGT branch_08009e5e \n\
 \n\
branch_08009e6a: \n\
/* 08009e6a */ LDR R7, [SP, 0x1C] \n\
/* 08009e6c */ ADDS R0, R6, R7 @ Set R0 to R6 + R7 \n\
/* 08009e6e */ LDR R1, [SP, 0x20] \n\
/* 08009e70 */ ADDS R7, R0, R1 @ Set R7 to R0 + R1 \n\
/* 08009e72 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08009e74 */ BNE branch_08009ea0 \n\
/* 08009e76 */ LSRS R4, R4, 0x10 \n\
/* 08009e78 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08009e7a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08009e7c */ BL mem_heap_alloc_id \n\
/* 08009e80 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08009e82 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08009e84 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08009e86 */ BL mem_heap_alloc_id \n\
/* 08009e8a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08009e8c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009e8e */ STRH R7, [R5] \n\
/* 08009e90 */ STR R5, [R3] \n\
/* 08009e92 */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 08009e94 */ STRB R0, [R3, 0x4] \n\
/* 08009e96 */ STR R7, [R3, 0x8] \n\
/* 08009e98 */ STRB R1, [R3, 0xC] \n\
/* 08009e9a */ B branch_08009fe6 \n\
\n\
.ltorg \n\
 \n\
branch_08009ea0: \n\
/* 08009ea0 */ LSRS R4, R4, 0x10 \n\
/* 08009ea2 */ LSLS R1, R7, 0x1 \n\
/* 08009ea4 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08009ea6 */ LSLS R1, R1, 0x1 \n\
/* 08009ea8 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08009eaa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08009eac */ BL mem_heap_alloc_id \n\
/* 08009eb0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08009eb2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08009eb4 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08009eb6 */ BL mem_heap_alloc_id \n\
/* 08009eba */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08009ebc */ STR R5, [R3] \n\
/* 08009ebe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009ec0 */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 08009ec2 */ STRB R0, [R3, 0x4] \n\
/* 08009ec4 */ STR R1, [R3, 0x8] \n\
/* 08009ec6 */ STRB R1, [R3, 0xC] \n\
/* 08009ec8 */ STRH R7, [R5] \n\
/* 08009eca */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009ecc */ LDR R2, [SP, 0x48] \n\
/* 08009ece */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08009ed0 */ BEQ branch_08009eea \n\
/* 08009ed2 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08009ed4 */ BCC branch_08009ee0 \n\
/* 08009ed6 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 08009ed8 */ BEQ branch_08009f08 \n\
/* 08009eda */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 08009edc */ BEQ branch_08009f18 \n\
/* 08009ede */ B branch_08009f30 \n\
 \n\
branch_08009ee0: \n\
/* 08009ee0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08009ee2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08009ee4 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08009ee6 */ STR R7, [SP, 0x18] \n\
/* 08009ee8 */ B branch_08009f30 \n\
 \n\
branch_08009eea: \n\
/* 08009eea */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08009eec */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 08009eee */ ASRS R0, R0, 0x1 \n\
/* 08009ef0 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08009ef2 */ LDR R1, =D_089380ac \n\
/* 08009ef4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08009ef6 */ LSLS R0, R2, 0x1 \n\
/* 08009ef8 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08009efa */ LSLS R0, R0, 0x2 \n\
/* 08009efc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009efe */ LDRB R0, [R0, 0xA] \n\
/* 08009f00 */ B branch_08009f2c \n\
\n\
.ltorg \n\
 \n\
branch_08009f08: \n\
/* 08009f08 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08009f0a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08009f0c */ LDR R0, =D_089380ac \n\
/* 08009f0e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08009f10 */ LSLS R1, R7, 0x1 \n\
/* 08009f12 */ B branch_08009f24 \n\
\n\
.ltorg \n\
 \n\
branch_08009f18: \n\
/* 08009f18 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08009f1a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08009f1c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08009f1e */ LDR R0, =D_089380ac \n\
/* 08009f20 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08009f22 */ LSLS R1, R2, 0x1 \n\
 \n\
branch_08009f24: \n\
/* 08009f24 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 08009f26 */ LSLS R1, R1, 0x2 \n\
/* 08009f28 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08009f2a */ LDRB R0, [R1, 0xA] \n\
 \n\
branch_08009f2c: \n\
/* 08009f2c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08009f2e */ STR R0, [SP, 0x18] \n\
 \n\
branch_08009f30: \n\
/* 08009f30 */ LDR R4, [SP, 0x14] \n\
/* 08009f32 */ LSLS R0, R4, 0x5 \n\
/* 08009f34 */ LDR R7, [SP, 0x10] \n\
/* 08009f36 */ ADDS R1, R7, R0 @ Set R1 to R7 + R0 \n\
/* 08009f38 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08009f3a */ LDR R2, [SP, 0x18] \n\
/* 08009f3c */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08009f3e */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08009f40 */ LSLS R4, R4, 0x7 \n\
/* 08009f42 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08009f44 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 08009f46 */ LDR R7, [SP, 0x20] \n\
/* 08009f48 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08009f4a */ BLE branch_08009f78 \n\
/* 08009f4c */ LDR R0, =0x1ff \n\
/* 08009f4e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08009f50 */ LDR R4, =0xFFFF8000 \n\
/* 08009f52 */ MOV R10, R4 @ Set R10 to R4 \n\
/* 08009f54 */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
 \n\
branch_08009f56: \n\
/* 08009f56 */ STRH R2, [R5] \n\
/* 08009f58 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009f5a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08009f5c */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08009f5e */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08009f60 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08009f62 */ ORRS R0, R7 @ Set R0 to R0 | R7 \n\
/* 08009f64 */ STRH R0, [R5] \n\
/* 08009f66 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009f68 */ STRH R1, [R5] \n\
/* 08009f6a */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009f6c */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08009f6e */ ADD R9, R0 @ Add R0 to R9 \n\
/* 08009f70 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 08009f72 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08009f74 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009f76 */ BNE branch_08009f56 \n\
 \n\
branch_08009f78: \n\
/* 08009f78 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08009f7a */ LDR R2, [SP, 0x18] \n\
/* 08009f7c */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08009f7e */ LDR R4, [SP, 0x1C] \n\
/* 08009f80 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009f82 */ BLE branch_08009fb0 \n\
/* 08009f84 */ LDR R7, =0x000001ff \n\
/* 08009f86 */ MOV R8, R7 @ Set R8 to R7 \n\
/* 08009f88 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08009f8a */ LSLS R0, R0, 0x7 \n\
/* 08009f8c */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_08009f8e: \n\
/* 08009f8e */ STRH R2, [R5] \n\
/* 08009f90 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009f92 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08009f94 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08009f96 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08009f98 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08009f9a */ ORRS R0, R7 @ Set R0 to R0 | R7 \n\
/* 08009f9c */ STRH R0, [R5] \n\
/* 08009f9e */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009fa0 */ STRH R1, [R5] \n\
/* 08009fa2 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009fa4 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08009fa6 */ ADD R9, R0 @ Add R0 to R9 \n\
/* 08009fa8 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08009faa */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08009fac */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009fae */ BNE branch_08009f8e \n\
 \n\
branch_08009fb0: \n\
/* 08009fb0 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08009fb2 */ LDR R2, [SP, 0x18] \n\
/* 08009fb4 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08009fb6 */ LDR R4, =0xFFFF8000 \n\
/* 08009fb8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08009fba */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 08009fbc */ LSLS R0, R2, 0x10 \n\
/* 08009fbe */ LSRS R2, R0, 0x10 \n\
/* 08009fc0 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08009fc2 */ BLE branch_08009fe6 \n\
/* 08009fc4 */ LDR R0, =0x000001ff \n\
/* 08009fc6 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08009fc8 */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
 \n\
branch_08009fca: \n\
/* 08009fca */ STRH R2, [R5] \n\
/* 08009fcc */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009fce */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08009fd0 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08009fd2 */ STRH R0, [R5] \n\
/* 08009fd4 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009fd6 */ STRH R1, [R5] \n\
/* 08009fd8 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08009fda */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08009fdc */ ADD R9, R0 @ Add R0 to R9 \n\
/* 08009fde */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08009fe0 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08009fe2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009fe4 */ BNE branch_08009fca \n\
 \n\
branch_08009fe6: \n\
/* 08009fe6 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08009fe8 */ ADD SP, 0x24 \n\
/* 08009fea */ POP {R3-R5} \n\
/* 08009fec */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08009fee */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08009ff0 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08009ff2 */ POP {R4-R7} \n\
/* 08009ff4 */ POP {R1} \n\
/* 08009ff6 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

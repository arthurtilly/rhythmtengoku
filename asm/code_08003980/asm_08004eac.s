asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004eac \n\
/* 08004eac */ PUSH {R4-R7, LR} \n\
/* 08004eae */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08004eb0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08004eb2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08004eb4 */ PUSH {R5-R7} \n\
/* 08004eb6 */ SUB SP, 0x14 \n\
/* 08004eb8 */ LSLS R2, R2, 0x18 \n\
/* 08004eba */ LSRS R2, R2, 0x18 \n\
/* 08004ebc */ STR R2, [SP] \n\
/* 08004ebe */ LDRH R7, [R1, 0x10] \n\
/* 08004ec0 */ ADDS R1, 0x12 @ Add 0x12 to R1 \n\
/* 08004ec2 */ STR R1, [SP, 0x8] \n\
/* 08004ec4 */ LSLS R4, R7, 0x1 \n\
/* 08004ec6 */ ADDS R5, R4, R7 @ Set R5 to R4 + R7 \n\
/* 08004ec8 */ ADDS R2, R5, 0x1 @ Set R2 to R5 + 0x1 \n\
/* 08004eca */ LSLS R1, R2, 0x2 \n\
/* 08004ecc */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08004ece */ LSLS R1, R1, 0x1 \n\
/* 08004ed0 */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 08004ed2 */ LDRH R0, [R0] \n\
/* 08004ed4 */ BL mem_heap_alloc_id \n\
/* 08004ed8 */ STR R0, [SP, 0x4] \n\
/* 08004eda */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08004edc */ ADDS R6, 0x30 @ Add 0x30 to R6 \n\
/* 08004ede */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08004ee0 */ STR R4, [SP, 0xC] \n\
/* 08004ee2 */ STR R5, [SP, 0x10] \n\
 \n\
branch_08004ee4: \n\
/* 08004ee4 */ LSLS R0, R3, 0x3 \n\
/* 08004ee6 */ LDR R1, [SP, 0x4] \n\
/* 08004ee8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08004eea */ STR R6, [R0] \n\
/* 08004eec */ MOV R2, SP @ Set R2 to SP \n\
/* 08004eee */ LDRB R2, [R2] \n\
/* 08004ef0 */ STRB R2, [R0, 0x4] \n\
/* 08004ef2 */ STRH R7, [R6] \n\
/* 08004ef4 */ ADDS R4, R6, 0x2 @ Set R4 to R6 + 0x2 \n\
/* 08004ef6 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
/* 08004ef8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08004efa */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 08004efc */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08004efe */ LDR R1, [SP, 0x10] \n\
/* 08004f00 */ CMP R5, R1 @ Check R5 - R1 \n\
/* 08004f02 */ BCS branch_08004f18 \n\
/* 08004f04 */ LDR R0, [SP, 0xC] \n\
/* 08004f06 */ ADDS R2, R0, R7 @ Set R2 to R0 + R7 \n\
/* 08004f08 */ LDR R1, [SP, 0x8] \n\
 \n\
branch_08004f0a: \n\
/* 08004f0a */ LDRH R0, [R1] \n\
/* 08004f0c */ STRH R0, [R6] \n\
/* 08004f0e */ ADDS R6, 0x2 @ Add 0x2 to R6 \n\
/* 08004f10 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08004f12 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08004f14 */ CMP R5, R2 @ Check R5 - R2 \n\
/* 08004f16 */ BCC branch_08004f0a \n\
 \n\
branch_08004f18: \n\
/* 08004f18 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08004f1a */ BEQ branch_08004fd0 \n\
/* 08004f1c */ CMP R3, 0x4 @ Compare R3 and 0x4 \n\
/* 08004f1e */ BEQ branch_08004f64 \n\
/* 08004f20 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08004f22 */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08004f24 */ BCS branch_08004fd0 \n\
/* 08004f26 */ LDR R1, =0xfffffe00 \n\
/* 08004f28 */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_08004f2a: \n\
/* 08004f2a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08004f2c */ BL agb_random \n\
/* 08004f30 */ LDRH R2, [R4, 0x2] \n\
/* 08004f32 */ LSLS R1, R2, 0x17 \n\
/* 08004f34 */ LSRS R1, R1, 0x17 \n\
/* 08004f36 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08004f38 */ LDR R3, =0x1ff \n\
/* 08004f3a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08004f3c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08004f3e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08004f40 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08004f42 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 08004f44 */ STRH R2, [R4, 0x2] \n\
/* 08004f46 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08004f48 */ BL agb_random \n\
/* 08004f4c */ LDRB R1, [R4] \n\
/* 08004f4e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08004f50 */ STRB R0, [R4] \n\
/* 08004f52 */ ADDS R4, 0x6 @ Add 0x6 to R4 \n\
/* 08004f54 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08004f56 */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08004f58 */ BCC branch_08004f2a \n\
/* 08004f5a */ B branch_08004fd0 \n\
\n\
.ltorg \n\
 \n\
branch_08004f64: \n\
/* 08004f64 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08004f66 */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08004f68 */ BCS branch_08004fd0 \n\
/* 08004f6a */ LDR R2, =0x1ff \n\
/* 08004f6c */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08004f6e */ LDR R3, =0xfffffe00 \n\
/* 08004f70 */ MOV R8, R3 @ Set R8 to R3 \n\
 \n\
branch_08004f72: \n\
/* 08004f72 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08004f74 */ BL agb_random \n\
/* 08004f78 */ LSLS R0, R0, 0x10 \n\
/* 08004f7a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004f7c */ BEQ branch_08004fa8 \n\
/* 08004f7e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08004f80 */ BL agb_random \n\
/* 08004f84 */ LDRH R2, [R4, 0x2] \n\
/* 08004f86 */ LSLS R1, R2, 0x17 \n\
/* 08004f88 */ LSRS R1, R1, 0x17 \n\
/* 08004f8a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08004f8c */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08004f8e */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08004f90 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08004f92 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 08004f94 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 08004f96 */ STRH R2, [R4, 0x2] \n\
/* 08004f98 */ LDRB R0, [R4] \n\
/* 08004f9a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08004f9c */ B branch_08004fc6 \n\
\n\
.ltorg \n\
 \n\
branch_08004fa8: \n\
/* 08004fa8 */ LDRH R1, [R4, 0x2] \n\
/* 08004faa */ LSLS R0, R1, 0x17 \n\
/* 08004fac */ LSRS R0, R0, 0x17 \n\
/* 08004fae */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08004fb0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08004fb2 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08004fb4 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08004fb6 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08004fb8 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08004fba */ STRH R1, [R4, 0x2] \n\
/* 08004fbc */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08004fbe */ BL agb_random \n\
/* 08004fc2 */ LDRB R1, [R4] \n\
/* 08004fc4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
 \n\
branch_08004fc6: \n\
/* 08004fc6 */ STRB R0, [R4] \n\
/* 08004fc8 */ ADDS R4, 0x6 @ Add 0x6 to R4 \n\
/* 08004fca */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08004fcc */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08004fce */ BCC branch_08004f72 \n\
 \n\
branch_08004fd0: \n\
/* 08004fd0 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08004fd2 */ CMP R3, 0x4 @ Compare R3 and 0x4 \n\
/* 08004fd4 */ BLS branch_08004ee4 \n\
/* 08004fd6 */ LSLS R0, R3, 0x3 \n\
/* 08004fd8 */ LDR R2, [SP, 0x4] \n\
/* 08004fda */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08004fdc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08004fde */ STR R1, [R0] \n\
/* 08004fe0 */ STRB R1, [R0, 0x4] \n\
/* 08004fe2 */ LDR R0, [SP, 0x4] \n\
/* 08004fe4 */ ADD SP, 0x14 \n\
/* 08004fe6 */ POP {R3-R5} \n\
/* 08004fe8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08004fea */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08004fec */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08004fee */ POP {R4-R7} \n\
/* 08004ff0 */ POP {R1} \n\
/* 08004ff2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08044e78 \n\
/* 08044e78 */ PUSH {R4-R7, LR} \n\
/* 08044e7a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08044e7c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08044e7e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08044e80 */ PUSH {R5-R7} \n\
/* 08044e82 */ SUB SP, 0x20 \n\
/* 08044e84 */ STR R0, [SP, 0x1C] \n\
/* 08044e86 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08044e88 */ LDR R0, =D_030055d0 \n\
/* 08044e8a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08044e8c */ LDR R5, [R0] \n\
/* 08044e8e */ MOVS R1, 0xD2 @ Set R1 to 0xD2 \n\
/* 08044e90 */ LSLS R1, R1, 0x1 \n\
/* 08044e92 */ ADDS R0, R5, R1 @ Set R0 to R5 + R1 \n\
/* 08044e94 */ MOVS R2, 0xD4 @ Set R2 to 0xD4 \n\
/* 08044e96 */ LSLS R2, R2, 0x1 \n\
/* 08044e98 */ ADDS R1, R5, R2 @ Set R1 to R5 + R2 \n\
/* 08044e9a */ LDR R0, [R0] \n\
/* 08044e9c */ LDR R1, [R1] \n\
/* 08044e9e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044ea0 */ LSLS R0, R0, 0xB \n\
/* 08044ea2 */ BL __divsi3 \n\
/* 08044ea6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08044ea8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08044eaa */ ADDS R4, 0x18 @ Add 0x18 to R4 \n\
/* 08044eac */ LDR R6, =D_08936cac \n\
/* 08044eae */ LDR R3, =0x7ff \n\
/* 08044eb0 */ ANDS R4, R3 @ Set R4 to R4 & R3 \n\
/* 08044eb2 */ LSLS R0, R4, 0x1 \n\
/* 08044eb4 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08044eb6 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08044eb8 */ LDRSH R1, [R0, R7] \n\
/* 08044eba */ LSLS R0, R1, 0x3 \n\
/* 08044ebc */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08044ebe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044ec0 */ BGE branch_08044ec4 \n\
/* 08044ec2 */ ADDS R0, 0xF @ Add 0xF to R0 \n\
 \n\
branch_08044ec4: \n\
/* 08044ec4 */ ASRS R0, R0, 0x4 \n\
/* 08044ec6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08044ec8 */ MOVS R1, 0x86 @ Set R1 to 0x86 \n\
/* 08044eca */ LSLS R1, R1, 0x2 \n\
/* 08044ecc */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08044ece */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08044ed0 */ LSLS R0, R0, 0x1 \n\
/* 08044ed2 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08044ed4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044ed6 */ LDRSH R0, [R0, R2] \n\
/* 08044ed8 */ LSRS R1, R0, 0x1F \n\
/* 08044eda */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044edc */ ASRS R0, R0, 0x1 \n\
/* 08044ede */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08044ee0 */ ADDS R6, 0x40 @ Add 0x40 to R6 \n\
/* 08044ee2 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08044ee4 */ LSLS R0, R0, 0x8 \n\
/* 08044ee6 */ MOVS R7, 0xD6 @ Set R7 to 0xD6 \n\
/* 08044ee8 */ LSLS R7, R7, 0x1 \n\
/* 08044eea */ ADDS R1, R5, R7 @ Set R1 to R5 + R7 \n\
/* 08044eec */ LDR R1, [R1] \n\
/* 08044eee */ SUBS R1, R6, R1 @ Set R1 to R6 - R1 \n\
/* 08044ef0 */ BL func_08007b80 \n\
/* 08044ef4 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08044ef6 */ LSLS R5, R5, 0x1 \n\
/* 08044ef8 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08044efa */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08044efc */ BLE branch_08044f00 \n\
/* 08044efe */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
 \n\
branch_08044f00: \n\
/* 08044f00 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08044f02 */ LSLS R0, R0, 0x3 \n\
/* 08044f04 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 08044f06 */ BL func_08003ab8 \n\
/* 08044f0a */ LSRS R1, R0, 0x3 \n\
/* 08044f0c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08044f0e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08044f10 */ STRH R1, [R0, 0x6] \n\
/* 08044f12 */ LDR R2, =0x4002 \n\
/* 08044f14 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044f16 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08044f18 */ LDR R0, [R2] \n\
/* 08044f1a */ MOVS R2, 0xD9 @ Set R2 to 0xD9 \n\
/* 08044f1c */ LSLS R2, R2, 0x1 \n\
/* 08044f1e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08044f20 */ LDRB R0, [R0] \n\
/* 08044f22 */ LDR R2, =D_08932de4 \n\
/* 08044f24 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044f26 */ BEQ branch_08044f2a \n\
/* 08044f28 */ LDR R2, =D_08932f94 \n\
 \n\
branch_08044f2a: \n\
/* 08044f2a */ LSLS R0, R1, 0x10 \n\
/* 08044f2c */ LSRS R0, R0, 0x10 \n\
/* 08044f2e */ STR R0, [SP] \n\
/* 08044f30 */ STR R5, [SP, 0x4] \n\
/* 08044f32 */ STR R3, [SP, 0x8] \n\
/* 08044f34 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08044f36 */ STR R0, [SP, 0xC] \n\
/* 08044f38 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08044f3a */ STR R0, [SP, 0x10] \n\
/* 08044f3c */ STR R3, [SP, 0x14] \n\
/* 08044f3e */ STR R7, [SP, 0x18] \n\
/* 08044f40 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08044f42 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044f44 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08044f46 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 08044f48 */ BL func_0800fa6c \n\
/* 08044f4c */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08044f4e */ STR R0, [R7] \n\
/* 08044f50 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08044f52 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08044f54 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08044f56 */ BL func_08044ba8 \n\
/* 08044f5a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08044f5c */ LDR R0, [R1] \n\
/* 08044f5e */ MOVS R2, 0xD4 @ Set R2 to 0xD4 \n\
/* 08044f60 */ LSLS R2, R2, 0x1 \n\
/* 08044f62 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08044f64 */ LDR R1, [R0] \n\
/* 08044f66 */ LDR R0, [SP, 0x1C] \n\
/* 08044f68 */ BL func_080180b4 \n\
/* 08044f6c */ ADD SP, 0x20 \n\
/* 08044f6e */ POP {R3-R5} \n\
/* 08044f70 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08044f72 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08044f74 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08044f76 */ POP {R4-R7} \n\
/* 08044f78 */ POP {R0} \n\
/* 08044f7a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

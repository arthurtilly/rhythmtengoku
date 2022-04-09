asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005f34 \n\
/* 08005f34 */ PUSH {R4, R5, LR} \n\
/* 08005f36 */ SUB SP, 0x10 \n\
/* 08005f38 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08005f3a */ STR R1, [SP, 0x4] \n\
/* 08005f3c */ STR R2, [SP, 0x8] \n\
/* 08005f3e */ STR R3, [SP, 0xC] \n\
/* 08005f40 */ LDR R0, [SP, 0x20] \n\
/* 08005f42 */ LSLS R0, R0, 0x10 \n\
/* 08005f44 */ LSRS R4, R0, 0x10 \n\
/* 08005f46 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08005f48 */ LDR R1, [SP, 0x1C] \n\
/* 08005f4a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005f4c */ BLE branch_08005fdc \n\
/* 08005f4e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005f50 */ BLE branch_08005fdc \n\
/* 08005f52 */ ADD R2, SP, 0x8 \n\
/* 08005f54 */ ADD R3, SP, 0xC \n\
/* 08005f56 */ ADD R0, SP, 0x1C \n\
/* 08005f58 */ STR R0, [SP] \n\
/* 08005f5a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08005f5c */ ADD R1, SP, 0x4 \n\
/* 08005f5e */ BL func_08005e54 \n\
/* 08005f62 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005f64 */ BEQ branch_08005fdc \n\
/* 08005f66 */ LDR R0, [SP, 0x4] \n\
/* 08005f68 */ LSLS R0, R0, 0x1 \n\
/* 08005f6a */ LDR R1, [R5] \n\
/* 08005f6c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08005f6e */ LDRH R2, [R5, 0x4] \n\
/* 08005f70 */ LDR R0, [SP, 0x8] \n\
/* 08005f72 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08005f74 */ LSLS R0, R0, 0x1 \n\
/* 08005f76 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08005f78 */ LDR R3, [SP, 0xC] \n\
/* 08005f7a */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08005f7c */ BLE branch_08005fd0 \n\
/* 08005f7e */ LDR R0, [SP, 0x1C] \n\
/* 08005f80 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08005f82 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08005f84 */ STR R0, [SP, 0x1C] \n\
/* 08005f86 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005f88 */ BEQ branch_08005fdc \n\
 \n\
branch_08005f8a: \n\
/* 08005f8a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08005f8c */ LDR R1, [SP, 0x1C] \n\
/* 08005f8e */ CMP R3, 0x7 @ Compare R3 and 0x7 \n\
/* 08005f90 */ BLS branch_08005fb2 \n\
 \n\
branch_08005f92: \n\
/* 08005f92 */ STRH R4, [R2, 0xE] \n\
/* 08005f94 */ STRH R4, [R2, 0xC] \n\
/* 08005f96 */ STRH R4, [R2, 0xA] \n\
/* 08005f98 */ STRH R4, [R2, 0x8] \n\
/* 08005f9a */ STRH R4, [R2, 0x6] \n\
/* 08005f9c */ STRH R4, [R2, 0x4] \n\
/* 08005f9e */ STRH R4, [R2, 0x2] \n\
/* 08005fa0 */ STRH R4, [R2] \n\
/* 08005fa2 */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 08005fa4 */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 08005fa6 */ CMP R0, 0x7 @ Compare R0 and 0x7 \n\
/* 08005fa8 */ BHI branch_08005f92 \n\
/* 08005faa */ B branch_08005fb2 \n\
 \n\
branch_08005fac: \n\
/* 08005fac */ STRH R4, [R2] \n\
/* 08005fae */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08005fb0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
 \n\
branch_08005fb2: \n\
/* 08005fb2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005fb4 */ BNE branch_08005fac \n\
/* 08005fb6 */ LDRH R0, [R5, 0x4] \n\
/* 08005fb8 */ SUBS R0, R0, R3 @ Set R0 to R0 - R3 \n\
/* 08005fba */ LSLS R0, R0, 0x1 \n\
/* 08005fbc */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08005fbe */ SUBS R0, R1, 0x1 @ Set R0 to R1 - 0x1 \n\
/* 08005fc0 */ STR R0, [SP, 0x1C] \n\
/* 08005fc2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005fc4 */ BNE branch_08005f8a \n\
/* 08005fc6 */ B branch_08005fdc \n\
 \n\
branch_08005fc8: \n\
/* 08005fc8 */ STRH R4, [R2] \n\
/* 08005fca */ LDRH R0, [R5, 0x4] \n\
/* 08005fcc */ LSLS R0, R0, 0x1 \n\
/* 08005fce */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
 \n\
branch_08005fd0: \n\
/* 08005fd0 */ LDR R0, [SP, 0x1C] \n\
/* 08005fd2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08005fd4 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08005fd6 */ STR R0, [SP, 0x1C] \n\
/* 08005fd8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005fda */ BNE branch_08005fc8 \n\
 \n\
branch_08005fdc: \n\
/* 08005fdc */ ADD SP, 0x10 \n\
/* 08005fde */ POP {R4, R5} \n\
/* 08005fe0 */ POP {R0} \n\
/* 08005fe2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d294 \n\
/* 0804d294 */ PUSH {R4-R7, LR} \n\
/* 0804d296 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804d298 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804d29a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804d29c */ PUSH {R5-R7} \n\
/* 0804d29e */ SUB SP, 0x18 \n\
/* 0804d2a0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804d2a2 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804d2a4 */ LDR R0, [SP, 0x38] \n\
/* 0804d2a6 */ LDR R1, [SP, 0x3C] \n\
/* 0804d2a8 */ LDR R4, [SP, 0x40] \n\
/* 0804d2aa */ LDR R7, [SP, 0x44] \n\
/* 0804d2ac */ LDR R5, [SP, 0x48] \n\
/* 0804d2ae */ MOV R12, R5 @ Set R12 to R5 \n\
/* 0804d2b0 */ LSLS R2, R2, 0x18 \n\
/* 0804d2b2 */ LSRS R2, R2, 0x18 \n\
/* 0804d2b4 */ STR R2, [SP] \n\
/* 0804d2b6 */ LSLS R3, R3, 0x10 \n\
/* 0804d2b8 */ LSRS R3, R3, 0x10 \n\
/* 0804d2ba */ STR R3, [SP, 0x4] \n\
/* 0804d2bc */ LSLS R0, R0, 0x10 \n\
/* 0804d2be */ LSRS R0, R0, 0x10 \n\
/* 0804d2c0 */ STR R0, [SP, 0x8] \n\
/* 0804d2c2 */ LSLS R1, R1, 0x10 \n\
/* 0804d2c4 */ LSRS R1, R1, 0x10 \n\
/* 0804d2c6 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0804d2c8 */ LSLS R4, R4, 0x18 \n\
/* 0804d2ca */ LSRS R4, R4, 0x18 \n\
/* 0804d2cc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804d2ce */ LSLS R0, R7, 0x18 \n\
/* 0804d2d0 */ LSRS R5, R0, 0x18 \n\
/* 0804d2d2 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0804d2d4 */ LSLS R1, R1, 0x10 \n\
/* 0804d2d6 */ STR R1, [SP, 0x14] \n\
/* 0804d2d8 */ LSRS R0, R1, 0x10 \n\
/* 0804d2da */ STR R0, [SP, 0x10] \n\
/* 0804d2dc */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804d2de */ BL func_0804d0a4 \n\
/* 0804d2e2 */ LSLS R0, R0, 0x10 \n\
/* 0804d2e4 */ ASRS R7, R0, 0x10 \n\
/* 0804d2e6 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804d2e8 */ BLT branch_0804d3b8 \n\
/* 0804d2ea */ LSLS R0, R7, 0x4 \n\
/* 0804d2ec */ SUBS R0, R0, R7 @ Set R0 to R0 - R7 \n\
/* 0804d2ee */ LSLS R0, R0, 0x2 \n\
/* 0804d2f0 */ LDR R4, [R6, 0x8] \n\
/* 0804d2f2 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0804d2f4 */ LDRB R0, [R4, 0x1] \n\
/* 0804d2f6 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0804d2f8 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804d2fa */ STRB R0, [R4, 0x1] \n\
/* 0804d2fc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804d2fe */ STR R1, [R4, 0x8] \n\
/* 0804d300 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804d302 */ STRB R0, [R4, 0xD] \n\
/* 0804d304 */ STRB R5, [R4, 0xE] \n\
/* 0804d306 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804d308 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804d30a */ MOV R5, SP @ Set R5 to SP \n\
/* 0804d30c */ LDRH R5, [R5, 0x4] \n\
/* 0804d30e */ STRH R5, [R4, 0x2] \n\
/* 0804d310 */ MOV R0, SP @ Set R0 to SP \n\
/* 0804d312 */ LDRH R0, [R0, 0x8] \n\
/* 0804d314 */ STRH R0, [R4, 0x4] \n\
/* 0804d316 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804d318 */ STRH R1, [R4, 0x6] \n\
/* 0804d31a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804d31c */ BL func_0804d11c \n\
/* 0804d320 */ LSLS R0, R0, 0x18 \n\
/* 0804d322 */ MOVS R2, 0xFF @ Set R2 to 0xFF \n\
/* 0804d324 */ LSRS R0, R0, 0x13 \n\
/* 0804d326 */ LDRH R3, [R4] \n\
/* 0804d328 */ LDR R1, =0xffffe01f \n\
/* 0804d32a */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0804d32c */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804d32e */ STRH R1, [R4] \n\
/* 0804d330 */ LDR R5, [SP, 0x10] \n\
/* 0804d332 */ ANDS R2, R5 @ Set R2 to R2 & R5 \n\
/* 0804d334 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0804d336 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804d338 */ LSLS R2, R2, 0x1 \n\
/* 0804d33a */ LDRB R1, [R4] \n\
/* 0804d33c */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0804d33e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d340 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804d342 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804d344 */ STRB R0, [R4] \n\
/* 0804d346 */ LDR R0, [SP, 0x4C] \n\
/* 0804d348 */ STR R0, [R4, 0x10] \n\
/* 0804d34a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804d34c */ STRH R0, [R4, 0x14] \n\
/* 0804d34e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804d350 */ STRB R1, [R4, 0x16] \n\
/* 0804d352 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0804d354 */ STRB R0, [R4, 0x17] \n\
/* 0804d356 */ LDRB R1, [R4, 0x1] \n\
/* 0804d358 */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 0804d35a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d35c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804d35e */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0804d360 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804d362 */ STRB R0, [R4, 0x1] \n\
/* 0804d364 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804d366 */ STR R5, [R4, 0x20] \n\
/* 0804d368 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804d36a */ BL func_0804d140 \n\
/* 0804d36e */ STRH R0, [R4, 0x28] \n\
/* 0804d370 */ LDR R0, =D_08bd0cac \n\
/* 0804d372 */ STR R0, [R4, 0x30] \n\
/* 0804d374 */ STR R0, [R4, 0x2C] \n\
/* 0804d376 */ LDRH R0, [R6, 0x1C] \n\
/* 0804d378 */ STRH R0, [R4, 0x2A] \n\
/* 0804d37a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804d37c */ LSLS R0, R0, 0x1 \n\
/* 0804d37e */ STRH R0, [R4, 0x38] \n\
/* 0804d380 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804d382 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0804d384 */ BL func_0804cf38 \n\
/* 0804d388 */ LDR R0, [SP] \n\
/* 0804d38a */ LSLS R2, R0, 0x18 \n\
/* 0804d38c */ ASRS R2, R2, 0x18 \n\
/* 0804d38e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804d390 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0804d392 */ BL func_0804cebc \n\
/* 0804d396 */ LDR R5, [SP, 0x14] \n\
/* 0804d398 */ LSRS R1, R5, 0x1F \n\
/* 0804d39a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804d39c */ EORS R1, R0 @ Set R1 to R1 ^ R0 \n\
/* 0804d39e */ LDRB R2, [R4] \n\
/* 0804d3a0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804d3a2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d3a4 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804d3a6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804d3a8 */ STRB R0, [R4] \n\
/* 0804d3aa */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d3ac */ B branch_0804d3bc \n\
\n\
.ltorg \n\
 \n\
branch_0804d3b8: \n\
/* 0804d3b8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804d3ba */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0804d3bc: \n\
/* 0804d3bc */ ADD SP, 0x18 \n\
/* 0804d3be */ POP {R3-R5} \n\
/* 0804d3c0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804d3c2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804d3c4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804d3c6 */ POP {R4-R7} \n\
/* 0804d3c8 */ POP {R1} \n\
/* 0804d3ca */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

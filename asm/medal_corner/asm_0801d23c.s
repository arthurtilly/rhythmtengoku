asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d23c \n\
/* 0801d23c */ PUSH {R4-R7, LR} \n\
/* 0801d23e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801d240 */ PUSH {R7} \n\
/* 0801d242 */ SUB SP, 0x14 \n\
/* 0801d244 */ LDR R0, =D_030046a8 \n\
/* 0801d246 */ LDR R0, [R0] \n\
/* 0801d248 */ LDR R1, =0x29e \n\
/* 0801d24a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801d24c */ LDRB R7, [R0] \n\
/* 0801d24e */ LDR R5, =D_03005380 \n\
/* 0801d250 */ LDR R0, [R5] \n\
/* 0801d252 */ LDR R1, =anim_medal_corner_count_num \n\
/* 0801d254 */ MOVS R2, 0x97 @ Set R2 to 0x97 \n\
/* 0801d256 */ STR R2, [SP] \n\
/* 0801d258 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801d25a */ LSLS R2, R2, 0x4 \n\
/* 0801d25c */ STR R2, [SP, 0x4] \n\
/* 0801d25e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801d260 */ STR R3, [SP, 0x8] \n\
/* 0801d262 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0801d264 */ STR R2, [SP, 0xC] \n\
/* 0801d266 */ STR R3, [SP, 0x10] \n\
/* 0801d268 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d26a */ MOVS R3, 0x9D @ Set R3 to 0x9D \n\
/* 0801d26c */ BL func_0804d160 \n\
/* 0801d270 */ LDR R4, =D_030046a4 \n\
/* 0801d272 */ LDR R1, [R4] \n\
/* 0801d274 */ STRH R0, [R1, 0x8] \n\
/* 0801d276 */ LDR R0, [R5] \n\
/* 0801d278 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0801d27a */ LDRSH R1, [R1, R2] \n\
/* 0801d27c */ BL func_0804d3cc \n\
/* 0801d280 */ LDR R1, [R4] \n\
/* 0801d282 */ STRH R0, [R1, 0xA] \n\
/* 0801d284 */ LDR R0, [R5] \n\
/* 0801d286 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0801d288 */ LDRSH R1, [R1, R2] \n\
/* 0801d28a */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801d28c */ BL func_0804d614 \n\
/* 0801d290 */ LDR R0, [R5] \n\
/* 0801d292 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801d294 */ LDR R0, [R4] \n\
/* 0801d296 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0801d298 */ LDRSH R6, [R0, R1] \n\
/* 0801d29a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801d29c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801d29e */ BL __umodsi3 \n\
/* 0801d2a2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801d2a4 */ LSLS R2, R2, 0x18 \n\
/* 0801d2a6 */ ASRS R2, R2, 0x18 \n\
/* 0801d2a8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801d2aa */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801d2ac */ BL func_0804cebc \n\
/* 0801d2b0 */ LDR R5, [R5] \n\
/* 0801d2b2 */ LDR R0, [R4] \n\
/* 0801d2b4 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0801d2b6 */ LDRSH R4, [R0, R2] \n\
/* 0801d2b8 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 0801d2ba */ BLS branch_0801d2e0 \n\
/* 0801d2bc */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801d2be */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801d2c0 */ BL __udivsi3 \n\
/* 0801d2c4 */ LSLS R0, R0, 0x18 \n\
/* 0801d2c6 */ ASRS R2, R0, 0x18 \n\
/* 0801d2c8 */ B branch_0801d2e2 \n\
\n\
.ltorg \n\
 \n\
branch_0801d2e0: \n\
/* 0801d2e0 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
 \n\
branch_0801d2e2: \n\
/* 0801d2e2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801d2e4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801d2e6 */ BL func_0804cebc \n\
/* 0801d2ea */ LDR R5, =D_03005380 \n\
/* 0801d2ec */ LDR R3, [R5] \n\
/* 0801d2ee */ LDR R4, =D_030046a4 \n\
/* 0801d2f0 */ LDR R0, [R4] \n\
/* 0801d2f2 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0801d2f4 */ LDRSH R1, [R0, R2] \n\
/* 0801d2f6 */ MOVS R2, 0x9D @ Set R2 to 0x9D \n\
/* 0801d2f8 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 0801d2fa */ BHI branch_0801d2fe \n\
/* 0801d2fc */ MOVS R2, 0x99 @ Set R2 to 0x99 \n\
 \n\
branch_0801d2fe: \n\
/* 0801d2fe */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0801d300 */ BL func_0804d614 \n\
/* 0801d304 */ LDR R0, [R5] \n\
/* 0801d306 */ LDR R1, =anim_medal_corner_req_num \n\
/* 0801d308 */ MOVS R2, 0x8E @ Set R2 to 0x8E \n\
/* 0801d30a */ STR R2, [SP] \n\
/* 0801d30c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801d30e */ LSLS R2, R2, 0x4 \n\
/* 0801d310 */ STR R2, [SP, 0x4] \n\
/* 0801d312 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801d314 */ STR R3, [SP, 0x8] \n\
/* 0801d316 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0801d318 */ STR R2, [SP, 0xC] \n\
/* 0801d31a */ STR R3, [SP, 0x10] \n\
/* 0801d31c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d31e */ MOVS R3, 0x3A @ Set R3 to 0x3A \n\
/* 0801d320 */ BL func_0804d160 \n\
/* 0801d324 */ LDR R1, [R4] \n\
/* 0801d326 */ STRH R0, [R1, 0xC] \n\
/* 0801d328 */ LDR R0, [R5] \n\
/* 0801d32a */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0801d32c */ LDRSH R1, [R1, R2] \n\
/* 0801d32e */ BL func_0804d3cc \n\
/* 0801d332 */ LDR R1, [R4] \n\
/* 0801d334 */ STRH R0, [R1, 0xE] \n\
/* 0801d336 */ LDR R0, [R5] \n\
/* 0801d338 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0801d33a */ LDRSH R1, [R1, R2] \n\
/* 0801d33c */ MOVS R2, 0x31 @ Set R2 to 0x31 \n\
/* 0801d33e */ BL func_0804d614 \n\
/* 0801d342 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d344 */ BL func_0801d388 \n\
/* 0801d348 */ LDR R0, [R4] \n\
/* 0801d34a */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0801d34c */ LDRSH R0, [R0, R1] \n\
/* 0801d34e */ BL func_0801d6e4 \n\
/* 0801d352 */ LDR R0, [R4] \n\
/* 0801d354 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0801d356 */ LDRSH R0, [R0, R2] \n\
/* 0801d358 */ BL func_0801d6e4 \n\
/* 0801d35c */ LDR R0, [R4] \n\
/* 0801d35e */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0801d360 */ LDRSH R0, [R0, R1] \n\
/* 0801d362 */ BL func_0801d6e4 \n\
/* 0801d366 */ LDR R0, [R4] \n\
/* 0801d368 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0801d36a */ LDRSH R0, [R0, R2] \n\
/* 0801d36c */ BL func_0801d6e4 \n\
/* 0801d370 */ ADD SP, 0x14 \n\
/* 0801d372 */ POP {R3} \n\
/* 0801d374 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801d376 */ POP {R4-R7} \n\
/* 0801d378 */ POP {R0} \n\
/* 0801d37a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

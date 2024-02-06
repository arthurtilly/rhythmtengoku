asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e1c8 \n\
/* 0804e1c8 */ PUSH {R4-R7, LR} \n\
/* 0804e1ca */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804e1cc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804e1ce */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804e1d0 */ PUSH {R5-R7} \n\
/* 0804e1d2 */ SUB SP, 0x3C \n\
/* 0804e1d4 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804e1d6 */ LDRH R0, [R6] \n\
/* 0804e1d8 */ STR R0, [SP, 0x38] \n\
/* 0804e1da */ ADD R4, SP, 0x20 \n\
/* 0804e1dc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804e1de */ LDR R5, =D_08bd0cae \n\
 \n\
branch_0804e1e0: \n\
/* 0804e1e0 */ LSLS R0, R3, 0x10 \n\
/* 0804e1e2 */ ASRS R0, R0, 0x10 \n\
/* 0804e1e4 */ ADDS R2, R4, R0 @ Set R2 to R4 + R0 \n\
/* 0804e1e6 */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0804e1e8 */ LDRB R1, [R1] \n\
/* 0804e1ea */ STRB R1, [R2] \n\
/* 0804e1ec */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804e1ee */ LSLS R0, R0, 0x10 \n\
/* 0804e1f0 */ LSRS R3, R0, 0x10 \n\
/* 0804e1f2 */ ASRS R0, R0, 0x10 \n\
/* 0804e1f4 */ CMP R0, 0x17 @ Compare R0 and 0x17 \n\
/* 0804e1f6 */ BLE branch_0804e1e0 \n\
/* 0804e1f8 */ LDRH R1, [R6, 0x18] \n\
/* 0804e1fa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e1fc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e1fe */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0804e200 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e202 */ BEQ branch_0804e220 \n\
/* 0804e204 */ LDRH R3, [R6, 0xE] \n\
/* 0804e206 */ LDRH R0, [R6] \n\
/* 0804e208 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0804e20a */ LSLS R0, R0, 0x3 \n\
/* 0804e20c */ LDR R1, [R6, 0x4] \n\
/* 0804e20e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804e210 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804e212 */ MOV R1, SP @ Set R1 to SP \n\
/* 0804e214 */ MOVS R0, 0xFA @ Set R0 to 0xFA \n\
/* 0804e216 */ STRB R0, [R1, 0xC] \n\
/* 0804e218 */ MOVS R0, 0xF8 @ Set R0 to 0xF8 \n\
/* 0804e21a */ B branch_0804e22e \n\
\n\
.ltorg \n\
 \n\
branch_0804e220: \n\
/* 0804e220 */ LDRH R3, [R6, 0xC] \n\
/* 0804e222 */ LDR R1, [R6, 0x4] \n\
/* 0804e224 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804e226 */ MOV R1, SP @ Set R1 to SP \n\
/* 0804e228 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0804e22a */ STRB R0, [R1, 0xC] \n\
/* 0804e22c */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
 \n\
branch_0804e22e: \n\
/* 0804e22e */ STRB R0, [R1, 0xD] \n\
/* 0804e230 */ LSLS R1, R3, 0x10 \n\
/* 0804e232 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804e234 */ BGE branch_0804e238 \n\
/* 0804e236 */ B branch_0804e394 \n\
 \n\
branch_0804e238: \n\
/* 0804e238 */ MOV R7, SP @ Set R7 to SP \n\
 \n\
branch_0804e23a: \n\
/* 0804e23a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e23c */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804e23e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e240 */ BEQ branch_0804e256 \n\
/* 0804e242 */ ASRS R0, R1, 0x10 \n\
/* 0804e244 */ LDR R2, [R6, 0x8] \n\
/* 0804e246 */ LSLS R1, R0, 0x4 \n\
/* 0804e248 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804e24a */ LSLS R1, R1, 0x2 \n\
/* 0804e24c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804e24e */ LDRH R1, [R1, 0x18] \n\
/* 0804e250 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804e252 */ LSLS R3, R3, 0x10 \n\
/* 0804e254 */ B branch_0804e268 \n\
 \n\
branch_0804e256: \n\
/* 0804e256 */ LSLS R3, R3, 0x10 \n\
/* 0804e258 */ ASRS R1, R3, 0x10 \n\
/* 0804e25a */ LDR R2, [R6, 0x8] \n\
/* 0804e25c */ LSLS R0, R1, 0x4 \n\
/* 0804e25e */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e260 */ LSLS R0, R0, 0x2 \n\
/* 0804e262 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804e264 */ LDRH R0, [R0, 0x1A] \n\
/* 0804e266 */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_0804e268: \n\
/* 0804e268 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0804e26a */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0804e26c */ ASRS R1, R3, 0x10 \n\
/* 0804e26e */ LSLS R0, R1, 0x4 \n\
/* 0804e270 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e272 */ LSLS R0, R0, 0x2 \n\
/* 0804e274 */ ADDS R4, R2, R0 @ Set R4 to R2 + R0 \n\
/* 0804e276 */ LDRB R1, [R4] \n\
/* 0804e278 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e27a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e27c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e27e */ BEQ branch_0804e320 \n\
/* 0804e280 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804e282 */ LDRSB R0, [R4, R0] \n\
/* 0804e284 */ LDR R1, [R4, 0x8] \n\
/* 0804e286 */ LSLS R0, R0, 0x3 \n\
/* 0804e288 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804e28a */ LDR R5, [R0] \n\
/* 0804e28c */ LDR R0, [SP, 0x38] \n\
/* 0804e28e */ LDRH R1, [R5] \n\
/* 0804e290 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0804e292 */ BCC branch_0804e320 \n\
/* 0804e294 */ LDR R0, [R4, 0x2C] \n\
/* 0804e296 */ LDRH R1, [R0] \n\
/* 0804e298 */ LDRH R2, [R6, 0x14] \n\
/* 0804e29a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804e29c */ LDR R0, [R4, 0x30] \n\
/* 0804e29e */ LDRH R2, [R0] \n\
/* 0804e2a0 */ LDRH R3, [R6, 0x16] \n\
/* 0804e2a2 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804e2a4 */ LDRH R0, [R4, 0x6] \n\
/* 0804e2a6 */ LSRS R0, R0, 0xE \n\
/* 0804e2a8 */ LSLS R0, R0, 0x12 \n\
/* 0804e2aa */ LDR R3, [R4, 0x10] \n\
/* 0804e2ac */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 0804e2ae */ STR R5, [SP] \n\
/* 0804e2b0 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804e2b2 */ STR R0, [SP, 0x4] \n\
/* 0804e2b4 */ LDRH R0, [R4, 0x2] \n\
/* 0804e2b6 */ LSLS R1, R1, 0x10 \n\
/* 0804e2b8 */ ASRS R1, R1, 0x10 \n\
/* 0804e2ba */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e2bc */ STRH R0, [R7, 0xA] \n\
/* 0804e2be */ LDRH R0, [R4, 0x4] \n\
/* 0804e2c0 */ LSLS R2, R2, 0x10 \n\
/* 0804e2c2 */ ASRS R2, R2, 0x10 \n\
/* 0804e2c4 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0804e2c6 */ STRH R0, [R7, 0xE] \n\
/* 0804e2c8 */ STR R3, [SP, 0x10] \n\
/* 0804e2ca */ MOVS R0, 0x16 @ Set R0 to 0x16 \n\
/* 0804e2cc */ LDRSB R0, [R4, R0] \n\
/* 0804e2ce */ LSLS R0, R0, 0xC \n\
/* 0804e2d0 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0804e2d2 */ LDRSH R1, [R4, R2] \n\
/* 0804e2d4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804e2d6 */ STR R0, [SP, 0x14] \n\
/* 0804e2d8 */ LDR R0, [R4, 0x34] \n\
/* 0804e2da */ LDRH R0, [R0] \n\
/* 0804e2dc */ STRH R0, [R7, 0x18] \n\
/* 0804e2de */ LDR R0, [R4, 0x34] \n\
/* 0804e2e0 */ LDRH R0, [R0, 0x2] \n\
/* 0804e2e2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804e2e4 */ STRH R0, [R7, 0x1A] \n\
/* 0804e2e6 */ LDR R0, [R4, 0x34] \n\
/* 0804e2e8 */ LDRH R0, [R0, 0x4] \n\
/* 0804e2ea */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804e2ec */ STRH R0, [R7, 0x1C] \n\
/* 0804e2ee */ LDR R0, [R4, 0x34] \n\
/* 0804e2f0 */ LDRH R0, [R0, 0x6] \n\
/* 0804e2f2 */ STRH R0, [R7, 0x1E] \n\
/* 0804e2f4 */ MOV R0, SP @ Set R0 to SP \n\
/* 0804e2f6 */ BL func_0804cb88 \n\
/* 0804e2fa */ LSLS R0, R0, 0x10 \n\
/* 0804e2fc */ LSRS R2, R0, 0x10 \n\
/* 0804e2fe */ LDR R3, [SP, 0x38] \n\
/* 0804e300 */ SUBS R0, R3, R2 @ Set R0 to R3 - R2 \n\
/* 0804e302 */ LSLS R0, R0, 0x10 \n\
/* 0804e304 */ LSRS R0, R0, 0x10 \n\
/* 0804e306 */ STR R0, [SP, 0x38] \n\
/* 0804e308 */ LDRH R1, [R6, 0x18] \n\
/* 0804e30a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e30c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e30e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e310 */ BEQ branch_0804e31c \n\
/* 0804e312 */ LSLS R0, R2, 0x3 \n\
/* 0804e314 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804e316 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804e318 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804e31a */ B branch_0804e320 \n\
 \n\
branch_0804e31c: \n\
/* 0804e31c */ LSLS R0, R2, 0x3 \n\
/* 0804e31e */ ADD R9, R0 @ Add R0 to R9 \n\
 \n\
branch_0804e320: \n\
/* 0804e320 */ LDRB R2, [R4, 0x1] \n\
/* 0804e322 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804e324 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804e326 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804e328 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e32a */ BNE branch_0804e32e \n\
/* 0804e32c */ LDRH R1, [R6, 0x1A] \n\
 \n\
branch_0804e32e: \n\
/* 0804e32e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0804e330 */ LSLS R5, R3, 0x10 \n\
/* 0804e332 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804e334 */ BNE branch_0804e388 \n\
/* 0804e336 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0804e338 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804e33a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e33c */ BNE branch_0804e388 \n\
/* 0804e33e */ LDRB R1, [R4] \n\
/* 0804e340 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e342 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e344 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e346 */ BNE branch_0804e354 \n\
/* 0804e348 */ LDR R0, [R4, 0x10] \n\
/* 0804e34a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804e34c */ LSLS R1, R1, 0x11 \n\
/* 0804e34e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e350 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e352 */ BEQ branch_0804e388 \n\
 \n\
branch_0804e354: \n\
/* 0804e354 */ LDRH R0, [R4, 0x1C] \n\
/* 0804e356 */ LDRH R1, [R4, 0x38] \n\
/* 0804e358 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e35a */ STRH R0, [R4, 0x1C] \n\
/* 0804e35c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804e35e */ LSLS R5, R0, 0x10 \n\
 \n\
branch_0804e360: \n\
/* 0804e360 */ MOVS R1, 0x1C @ Set R1 to 0x1C \n\
/* 0804e362 */ LDRSH R0, [R4, R1] \n\
/* 0804e364 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e366 */ BGT branch_0804e388 \n\
/* 0804e368 */ LDRB R2, [R4, 0xD] \n\
/* 0804e36a */ LDRB R3, [R4, 0xC] \n\
/* 0804e36c */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804e36e */ LSLS R2, R2, 0x18 \n\
/* 0804e370 */ ASRS R2, R2, 0x18 \n\
/* 0804e372 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804e374 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0804e376 */ ASRS R1, R3, 0x10 \n\
/* 0804e378 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804e37a */ BL sprite_update_anim_cel \n\
/* 0804e37e */ LDRB R1, [R4, 0x1] \n\
/* 0804e380 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0804e382 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e384 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e386 */ BNE branch_0804e360 \n\
 \n\
branch_0804e388: \n\
/* 0804e388 */ LSRS R3, R5, 0x10 \n\
/* 0804e38a */ LSLS R1, R3, 0x10 \n\
/* 0804e38c */ LDRH R2, [R6, 0x18] \n\
/* 0804e38e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804e390 */ BLT branch_0804e394 \n\
/* 0804e392 */ B branch_0804e23a \n\
 \n\
branch_0804e394: \n\
/* 0804e394 */ LDRH R0, [R6] \n\
/* 0804e396 */ LDR R1, [SP, 0x38] \n\
/* 0804e398 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e39a */ STRH R0, [R6, 0x20] \n\
/* 0804e39c */ ADDS R0, R2, 0x1 @ Set R0 to R2 + 0x1 \n\
/* 0804e39e */ STRH R0, [R6, 0x18] \n\
/* 0804e3a0 */ ADD SP, 0x3C \n\
/* 0804e3a2 */ POP {R3-R5} \n\
/* 0804e3a4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804e3a6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804e3a8 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804e3aa */ POP {R4-R7} \n\
/* 0804e3ac */ POP {R0} \n\
/* 0804e3ae */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e2f0 \n\
/* 0802e2f0 */ PUSH {R4-R7, LR} \n\
/* 0802e2f2 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802e2f4 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802e2f6 */ PUSH {R6, R7} \n\
/* 0802e2f8 */ SUB SP, 0x2C \n\
/* 0802e2fa */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802e2fc */ ADD R0, SP, 0x20 \n\
/* 0802e2fe */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802e300 */ ADD R1, SP, 0x24 \n\
/* 0802e302 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802e304 */ ADD R7, SP, 0x28 \n\
/* 0802e306 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802e308 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0802e30a: \n\
/* 0802e30a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802e30c */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0802e30e */ BL __divsi3 \n\
/* 0802e312 */ LDR R1, =0x219 \n\
/* 0802e314 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802e316 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802e318 */ STR R1, [SP] \n\
/* 0802e31a */ STR R7, [SP, 0x4] \n\
/* 0802e31c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802e31e */ ADD R2, SP, 0x1C \n\
/* 0802e320 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802e322 */ BL func_0802e270 \n\
/* 0802e326 */ LDR R1, =D_088cbe10 \n\
/* 0802e328 */ CMP R4, 0xC @ Compare R4 and 0xC \n\
/* 0802e32a */ BNE branch_0802e32e \n\
/* 0802e32c */ LDR R1, =D_088cbd90 \n\
 \n\
branch_0802e32e: \n\
/* 0802e32e */ CMP R4, 0xD @ Compare R4 and 0xD \n\
/* 0802e330 */ BNE branch_0802e334 \n\
/* 0802e332 */ LDR R1, =D_088cbdc8 \n\
 \n\
branch_0802e334: \n\
/* 0802e334 */ LDR R2, [SP, 0x1C] \n\
/* 0802e336 */ LSLS R2, R2, 0x10 \n\
/* 0802e338 */ ASRS R2, R2, 0x10 \n\
/* 0802e33a */ LDR R3, [SP, 0x20] \n\
/* 0802e33c */ LSLS R3, R3, 0x10 \n\
/* 0802e33e */ ASRS R3, R3, 0x10 \n\
/* 0802e340 */ LDR R0, [SP, 0x24] \n\
/* 0802e342 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 0802e344 */ LSLS R0, R0, 0x10 \n\
/* 0802e346 */ LSRS R0, R0, 0x10 \n\
/* 0802e348 */ STR R0, [SP] \n\
/* 0802e34a */ LDR R0, [SP, 0x28] \n\
/* 0802e34c */ LSLS R0, R0, 0x10 \n\
/* 0802e34e */ ASRS R0, R0, 0x10 \n\
/* 0802e350 */ STR R0, [SP, 0x4] \n\
/* 0802e352 */ STR R5, [SP, 0x8] \n\
/* 0802e354 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802e356 */ STR R0, [SP, 0xC] \n\
/* 0802e358 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0802e35a */ STR R0, [SP, 0x10] \n\
/* 0802e35c */ STR R5, [SP, 0x14] \n\
/* 0802e35e */ STR R5, [SP, 0x18] \n\
/* 0802e360 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802e362 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0802e364 */ BL func_0800fa6c \n\
/* 0802e368 */ LDR R1, =D_030055d0 \n\
/* 0802e36a */ LDR R1, [R1] \n\
/* 0802e36c */ LSLS R2, R4, 0x2 \n\
/* 0802e36e */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0802e370 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802e372 */ STR R0, [R1] \n\
/* 0802e374 */ LDR R0, =0xfffffbdd \n\
/* 0802e376 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 0802e378 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802e37a */ CMP R4, 0xE @ Compare R4 and 0xE \n\
/* 0802e37c */ BLE branch_0802e30a \n\
/* 0802e37e */ ADD SP, 0x2C \n\
/* 0802e380 */ POP {R3, R4} \n\
/* 0802e382 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802e384 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802e386 */ POP {R4-R7} \n\
/* 0802e388 */ POP {R0} \n\
/* 0802e38a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

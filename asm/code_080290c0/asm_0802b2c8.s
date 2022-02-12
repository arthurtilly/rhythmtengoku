asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b2c8 \n\
/* 0802b2c8 */ PUSH {R4-R7, LR} \n\
/* 0802b2ca */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802b2cc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802b2ce */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802b2d0 */ PUSH {R5-R7} \n\
/* 0802b2d2 */ SUB SP, 0x14 \n\
/* 0802b2d4 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802b2d6 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0802b2d8 */ LDR R4, =D_030055d0 \n\
/* 0802b2da */ LDR R0, [R4] \n\
/* 0802b2dc */ MOVS R1, 0xEE @ Set R1 to 0xEE \n\
/* 0802b2de */ LSLS R1, R1, 0x2 \n\
/* 0802b2e0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802b2e2 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0802b2e4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802b2e6 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802b2e8 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0802b2ea */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0802b2ec */ LSLS R2, R2, 0x5 \n\
/* 0802b2ee */ LDRH R1, [R7] \n\
/* 0802b2f0 */ LDR R0, =0xfffffe1f \n\
/* 0802b2f2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b2f4 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0802b2f6 */ STRH R0, [R7] \n\
/* 0802b2f8 */ LDRB R1, [R7, 0x1] \n\
/* 0802b2fa */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802b2fc */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802b2fe */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b300 */ STRB R0, [R7, 0x1] \n\
/* 0802b302 */ LDR R0, [R4] \n\
/* 0802b304 */ LDR R5, =0x00000556 \n\
/* 0802b306 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802b308 */ LDRH R1, [R0] \n\
/* 0802b30a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802b30c */ STRH R1, [R7, 0xA] \n\
/* 0802b30e */ LDRH R0, [R0] \n\
/* 0802b310 */ BL func_0800c3a4 \n\
/* 0802b314 */ STRH R0, [R7, 0xC] \n\
/* 0802b316 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0802b318 */ STRB R0, [R7, 0xE] \n\
/* 0802b31a */ LDR R0, [R4] \n\
/* 0802b31c */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802b31e */ LDRH R1, [R0] \n\
/* 0802b320 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0802b322 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802b324 */ BL func_0800c3a4 \n\
/* 0802b328 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802b32a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802b32c */ BL func_080180b4 \n\
/* 0802b330 */ STRB R6, [R7, 0xE] \n\
/* 0802b332 */ LDR R0, [R4] \n\
/* 0802b334 */ LDRB R0, [R0, 0x1] \n\
/* 0802b336 */ LSLS R0, R0, 0x1C \n\
/* 0802b338 */ LSRS R0, R0, 0x1D \n\
/* 0802b33a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802b33c */ BEQ branch_0802b35e \n\
/* 0802b33e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802b340 */ BGT branch_0802b354 \n\
/* 0802b342 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b344 */ BEQ branch_0802b380 \n\
/* 0802b346 */ B branch_0802b37c \n\
\n\
.ltorg \n\
 \n\
branch_0802b354: \n\
/* 0802b354 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802b356 */ BEQ branch_0802b364 \n\
/* 0802b358 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802b35a */ BEQ branch_0802b376 \n\
/* 0802b35c */ B branch_0802b37c \n\
 \n\
branch_0802b35e: \n\
/* 0802b35e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802b360 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0802b362 */ B branch_0802b380 \n\
 \n\
branch_0802b364: \n\
/* 0802b364 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802b366 */ BL func_08001980 \n\
/* 0802b36a */ LSLS R0, R0, 0x10 \n\
/* 0802b36c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b36e */ BNE branch_0802b380 \n\
/* 0802b370 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802b372 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0802b374 */ B branch_0802b380 \n\
 \n\
branch_0802b376: \n\
/* 0802b376 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b378 */ STRB R0, [R7, 0xE] \n\
/* 0802b37a */ B branch_0802b380 \n\
 \n\
branch_0802b37c: \n\
/* 0802b37c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802b37e */ MOV R9, R0 @ Set R9 to R0 \n\
 \n\
branch_0802b380: \n\
/* 0802b380 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802b382 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802b384 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802b386 */ STRH R2, [R7, 0x6] \n\
/* 0802b388 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0802b38a */ BL func_0800c3a4 \n\
/* 0802b38e */ STRH R0, [R7, 0x8] \n\
/* 0802b390 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0802b392 */ BL func_0802b28c \n\
/* 0802b396 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802b398 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802b39a */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802b39c */ LDRSH R6, [R0, R1] \n\
/* 0802b39e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802b3a0 */ LSLS R2, R0, 0x1 \n\
/* 0802b3a2 */ LDRB R1, [R7, 0x1] \n\
/* 0802b3a4 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802b3a6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802b3a8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b3aa */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0802b3ac */ STRB R0, [R7, 0x1] \n\
/* 0802b3ae */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0802b3b0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802b3b2 */ BEQ branch_0802b3e4 \n\
/* 0802b3b4 */ LDR R0, =D_03005380 \n\
/* 0802b3b6 */ LDR R0, [R0] \n\
/* 0802b3b8 */ LDR R2, =D_089e3634 \n\
/* 0802b3ba */ LDRH R1, [R7] \n\
/* 0802b3bc */ LSLS R1, R1, 0x17 \n\
/* 0802b3be */ LSRS R1, R1, 0x1C \n\
/* 0802b3c0 */ LSLS R1, R1, 0x2 \n\
/* 0802b3c2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b3c4 */ LDR R1, [R1] \n\
/* 0802b3c6 */ LSLS R4, R4, 0x10 \n\
/* 0802b3c8 */ ASRS R3, R4, 0x10 \n\
/* 0802b3ca */ LSLS R5, R6, 0x10 \n\
/* 0802b3cc */ STR R6, [SP] \n\
/* 0802b3ce */ LDR R2, =0x0000480a \n\
/* 0802b3d0 */ STR R2, [SP, 0x4] \n\
/* 0802b3d2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802b3d4 */ B branch_0802b404 \n\
\n\
.ltorg \n\
 \n\
branch_0802b3e4: \n\
/* 0802b3e4 */ LDR R0, =D_03005380 \n\
/* 0802b3e6 */ LDR R0, [R0] \n\
/* 0802b3e8 */ LDR R2, =D_089e3620 \n\
/* 0802b3ea */ LDRH R1, [R7] \n\
/* 0802b3ec */ LSLS R1, R1, 0x17 \n\
/* 0802b3ee */ LSRS R1, R1, 0x1C \n\
/* 0802b3f0 */ LSLS R1, R1, 0x2 \n\
/* 0802b3f2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b3f4 */ LDR R1, [R1] \n\
/* 0802b3f6 */ LSLS R4, R4, 0x10 \n\
/* 0802b3f8 */ ASRS R3, R4, 0x10 \n\
/* 0802b3fa */ LSLS R5, R6, 0x10 \n\
/* 0802b3fc */ STR R6, [SP] \n\
/* 0802b3fe */ LDR R2, =0x0000480a \n\
/* 0802b400 */ STR R2, [SP, 0x4] \n\
/* 0802b402 */ MOV R2, R9 @ Set R2 to R9 \n\
 \n\
branch_0802b404: \n\
/* 0802b404 */ STR R2, [SP, 0x8] \n\
/* 0802b406 */ STR R2, [SP, 0xC] \n\
/* 0802b408 */ STR R2, [SP, 0x10] \n\
/* 0802b40a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b40c */ BL func_0804d160 \n\
/* 0802b410 */ STRH R0, [R7, 0x4] \n\
/* 0802b412 */ LDR R6, =D_03005380 \n\
/* 0802b414 */ LDR R0, [R6] \n\
/* 0802b416 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b418 */ LDRSH R1, [R7, R2] \n\
/* 0802b41a */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802b41c */ ADD R2, R10 @ Add R10 to R2 \n\
/* 0802b41e */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802b420 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b422 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802b424 */ BL func_0804db44 \n\
/* 0802b428 */ LDRB R0, [R7, 0xE] \n\
/* 0802b42a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b42c */ BEQ branch_0802b45a \n\
/* 0802b42e */ LDR R0, [R6] \n\
/* 0802b430 */ LDR R1, =D_088c9b08 \n\
/* 0802b432 */ ASRS R3, R4, 0x10 \n\
/* 0802b434 */ ASRS R2, R5, 0x10 \n\
/* 0802b436 */ STR R2, [SP] \n\
/* 0802b438 */ LDR R2, =0x0000480b \n\
/* 0802b43a */ STR R2, [SP, 0x4] \n\
/* 0802b43c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802b43e */ STR R2, [SP, 0x8] \n\
/* 0802b440 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b442 */ STR R2, [SP, 0xC] \n\
/* 0802b444 */ STR R2, [SP, 0x10] \n\
/* 0802b446 */ BL func_0804d160 \n\
/* 0802b44a */ STRH R0, [R7, 0x10] \n\
/* 0802b44c */ LDR R0, [R6] \n\
/* 0802b44e */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0802b450 */ LDRSH R1, [R7, R2] \n\
/* 0802b452 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b454 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802b456 */ BL func_0804db44 \n\
 \n\
branch_0802b45a: \n\
/* 0802b45a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802b45c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b45e */ BEQ branch_0802b468 \n\
/* 0802b460 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0802b462 */ LDRH R0, [R1, 0x4] \n\
/* 0802b464 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0802b466 */ STRH R0, [R1, 0x4] \n\
 \n\
branch_0802b468: \n\
/* 0802b468 */ LDRB R0, [R7, 0x1] \n\
/* 0802b46a */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0802b46c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0802b46e */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0802b470 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0802b472 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802b474 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0802b476 */ STRB R1, [R7, 0x1] \n\
/* 0802b478 */ ADD SP, 0x14 \n\
/* 0802b47a */ POP {R3-R5} \n\
/* 0802b47c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802b47e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802b480 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802b482 */ POP {R4-R7} \n\
/* 0802b484 */ POP {R0} \n\
/* 0802b486 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

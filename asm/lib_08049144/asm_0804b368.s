asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b368 \n\
/* 0804b368 */ PUSH {R4-R7, LR} \n\
/* 0804b36a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804b36c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804b36e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804b370 */ PUSH {R5-R7} \n\
/* 0804b372 */ SUB SP, 0xC \n\
/* 0804b374 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804b376 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0804b378 */ BL func_0804b5a0 \n\
/* 0804b37c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b37e */ BEQ branch_0804b39e \n\
/* 0804b380 */ LDR R0, [R6] \n\
/* 0804b382 */ LDR R1, =0x00200800 \n\
/* 0804b384 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b386 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804b388 */ LSLS R1, R1, 0xE \n\
/* 0804b38a */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0804b38c */ BNE branch_0804b39e \n\
/* 0804b38e */ LDR R0, [R6, 0xC] \n\
/* 0804b390 */ LDRH R1, [R0, 0x6] \n\
/* 0804b392 */ LSRS R1, R1, 0x6 \n\
/* 0804b394 */ LDRH R0, [R5, 0x6] \n\
/* 0804b396 */ LSRS R0, R0, 0x6 \n\
/* 0804b398 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804b39a */ BLE branch_0804b39e \n\
/* 0804b39c */ B branch_0804b50e \n\
 \n\
branch_0804b39e: \n\
/* 0804b39e */ LDR R4, [R6, 0x4] \n\
/* 0804b3a0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804b3a2 */ BL func_08049e64 \n\
/* 0804b3a6 */ LDRB R1, [R4, 0x14] \n\
/* 0804b3a8 */ LSLS R1, R1, 0x1B \n\
/* 0804b3aa */ LSRS R1, R1, 0x1B \n\
/* 0804b3ac */ LDR R2, [R4, 0x18] \n\
/* 0804b3ae */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804b3b0 */ BL func_08049fa0 \n\
/* 0804b3b4 */ LDR R1, =instrumentBanks \n\
/* 0804b3b6 */ LDRH R0, [R5, 0x4] \n\
/* 0804b3b8 */ LSLS R0, R0, 0x11 \n\
/* 0804b3ba */ LSRS R0, R0, 0x16 \n\
/* 0804b3bc */ LSLS R0, R0, 0x2 \n\
/* 0804b3be */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804b3c0 */ LDR R1, [R0] \n\
/* 0804b3c2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804b3c4 */ BL func_0804a014 \n\
/* 0804b3c8 */ LDR R1, [R5, 0x4] \n\
/* 0804b3ca */ LSLS R1, R1, 0xA \n\
/* 0804b3cc */ LSRS R1, R1, 0x19 \n\
/* 0804b3ce */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804b3d0 */ BL func_0804adb4 \n\
/* 0804b3d4 */ LDRH R1, [R5, 0x6] \n\
/* 0804b3d6 */ LSRS R1, R1, 0x6 \n\
/* 0804b3d8 */ LSLS R1, R1, 0x18 \n\
/* 0804b3da */ LSRS R1, R1, 0x18 \n\
/* 0804b3dc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804b3de */ BL func_08049e8c \n\
/* 0804b3e2 */ STR R5, [R6, 0xC] \n\
/* 0804b3e4 */ LDR R0, [R5, 0x4] \n\
/* 0804b3e6 */ LSLS R0, R0, 0xA \n\
/* 0804b3e8 */ LSRS R0, R0, 0x19 \n\
/* 0804b3ea */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804b3ec */ ADDS R1, 0x2C @ Add 0x2C to R1 \n\
/* 0804b3ee */ STRB R0, [R1] \n\
/* 0804b3f0 */ LDR R5, [R5] \n\
/* 0804b3f2 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0804b3f4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804b3f6 */ BL func_0804b330 \n\
/* 0804b3fa */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804b3fc */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0804b3fe */ ADDS R0, R5, 0x2 @ Set R0 to R5 + 0x2 \n\
/* 0804b400 */ BL func_0804b324 \n\
/* 0804b404 */ LSLS R0, R0, 0x10 \n\
/* 0804b406 */ LSRS R0, R0, 0x10 \n\
/* 0804b408 */ MOVS R4, 0x1F @ Set R4 to 0x1F \n\
/* 0804b40a */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0804b40c */ LSLS R0, R0, 0x5 \n\
/* 0804b40e */ LDRH R1, [R6] \n\
/* 0804b410 */ LDR R3, =0xfffffc1f \n\
/* 0804b412 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804b414 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 0804b416 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0804b418 */ STRH R2, [R6] \n\
/* 0804b41a */ LSLS R1, R2, 0x16 \n\
/* 0804b41c */ LSRS R1, R1, 0x1B \n\
/* 0804b41e */ LDRB R0, [R6] \n\
/* 0804b420 */ LSLS R0, R0, 0x1B \n\
/* 0804b422 */ LSRS R0, R0, 0x1B \n\
/* 0804b424 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804b426 */ BLE branch_0804b432 \n\
/* 0804b428 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0804b42a */ LSLS R0, R0, 0x5 \n\
/* 0804b42c */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 0804b42e */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0804b430 */ STRH R2, [R6] \n\
 \n\
branch_0804b432: \n\
/* 0804b432 */ ADDS R0, R5, 0x4 @ Set R0 to R5 + 0x4 \n\
/* 0804b434 */ BL func_0804b324 \n\
/* 0804b438 */ STRH R0, [R6, 0x1E] \n\
/* 0804b43a */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 0804b43c */ LDR R4, [R6, 0x8] \n\
/* 0804b43e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804b440 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804b442 */ LDRH R0, [R6] \n\
/* 0804b444 */ LSLS R0, R0, 0x16 \n\
/* 0804b446 */ LSRS R0, R0, 0x1B \n\
/* 0804b448 */ MOVS R1, 0x2D @ Set R1 to 0x2D \n\
/* 0804b44a */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0804b44c */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804b44e */ MOVS R2, 0x2E @ Set R2 to 0x2E \n\
/* 0804b450 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0804b452 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0804b454 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804b456 */ ADDS R1, 0x2F @ Add 0x2F to R1 \n\
/* 0804b458 */ STR R1, [SP, 0x4] \n\
/* 0804b45a */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0804b45c */ ADDS R2, 0x30 @ Add 0x30 to R2 \n\
/* 0804b45e */ STR R2, [SP, 0x8] \n\
/* 0804b460 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0804b462 */ BCS branch_0804b4b6 \n\
 \n\
branch_0804b464: \n\
/* 0804b464 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0804b466 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804b468 */ BL func_0804b330 \n\
/* 0804b46c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804b46e */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0804b470 */ STR R5, [SP] \n\
/* 0804b472 */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 0804b474 */ LDRB R0, [R4] \n\
/* 0804b476 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804b478 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b47a */ STRB R0, [R4] \n\
/* 0804b47c */ LDR R0, [SP] \n\
/* 0804b47e */ STR R0, [R4, 0x4] \n\
/* 0804b480 */ MOV R0, SP @ Set R0 to SP \n\
/* 0804b482 */ BL func_0804c398 \n\
/* 0804b486 */ LSLS R1, R0, 0x8 \n\
/* 0804b488 */ STR R1, [R4, 0xC] \n\
/* 0804b48a */ LDR R1, [SP] \n\
/* 0804b48c */ STR R1, [R4, 0x8] \n\
/* 0804b48e */ STR R0, [R4, 0x18] \n\
/* 0804b490 */ LDRB R0, [R4] \n\
/* 0804b492 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0804b494 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0804b496 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0804b498 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b49a */ STRB R0, [R4] \n\
/* 0804b49c */ LDRB R0, [R4, 0x2] \n\
/* 0804b49e */ SUBS R2, 0x2 @ Subtract 0x2 from R2 \n\
/* 0804b4a0 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0804b4a2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b4a4 */ STRB R0, [R4, 0x2] \n\
/* 0804b4a6 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 0804b4a8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804b4aa */ ADD R8, R0 @ Add R0 to R8 \n\
/* 0804b4ac */ LDRH R0, [R6] \n\
/* 0804b4ae */ LSLS R0, R0, 0x16 \n\
/* 0804b4b0 */ LSRS R0, R0, 0x1B \n\
/* 0804b4b2 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0804b4b4 */ BCC branch_0804b464 \n\
 \n\
branch_0804b4b6: \n\
/* 0804b4b6 */ LDRB R1, [R6, 0x1] \n\
/* 0804b4b8 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0804b4ba */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804b4bc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b4be */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0804b4c0 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804b4c2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b4c4 */ STRB R0, [R6, 0x1] \n\
/* 0804b4c6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804b4c8 */ STR R0, [R6, 0x10] \n\
/* 0804b4ca */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804b4cc */ ADDS R0, 0xFF @ Add 0xFF to R0 \n\
/* 0804b4ce */ STRH R0, [R6, 0x20] \n\
/* 0804b4d0 */ STRH R0, [R6, 0x26] \n\
/* 0804b4d2 */ STRH R0, [R6, 0x22] \n\
/* 0804b4d4 */ LDRB R1, [R6, 0x3] \n\
/* 0804b4d6 */ MOVS R0, 0x39 @ Set R0 to 0x39 \n\
/* 0804b4d8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804b4da */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b4dc */ STRB R0, [R6, 0x3] \n\
/* 0804b4de */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b4e0 */ LSLS R0, R0, 0x8 \n\
/* 0804b4e2 */ STRH R0, [R6, 0x28] \n\
/* 0804b4e4 */ STRH R4, [R6, 0x2A] \n\
/* 0804b4e6 */ LDR R0, =D_08a865a4 \n\
/* 0804b4e8 */ STR R0, [R6, 0x14] \n\
/* 0804b4ea */ BL func_0804b348 \n\
/* 0804b4ee */ STRB R0, [R6, 0x1C] \n\
/* 0804b4f0 */ LDR R0, =D_08a865a8 \n\
/* 0804b4f2 */ STR R0, [R6, 0x18] \n\
/* 0804b4f4 */ BL func_0804b348 \n\
/* 0804b4f8 */ STRB R0, [R6, 0x1D] \n\
/* 0804b4fa */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0804b4fc */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804b4fe */ STRB R0, [R1] \n\
/* 0804b500 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0804b502 */ STRB R0, [R2] \n\
/* 0804b504 */ LDR R1, [SP, 0x4] \n\
/* 0804b506 */ STRB R0, [R1] \n\
/* 0804b508 */ LDR R2, [SP, 0x8] \n\
/* 0804b50a */ STRB R0, [R2] \n\
/* 0804b50c */ STR R4, [R6, 0x34] \n\
 \n\
branch_0804b50e: \n\
/* 0804b50e */ ADD SP, 0xC \n\
/* 0804b510 */ POP {R3-R5} \n\
/* 0804b512 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804b514 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804b516 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804b518 */ POP {R4-R7} \n\
/* 0804b51a */ POP {R0} \n\
/* 0804b51c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

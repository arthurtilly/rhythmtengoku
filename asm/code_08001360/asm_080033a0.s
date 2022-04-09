asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080033a0 \n\
/* 080033a0 */ PUSH {R4-R7, LR} \n\
/* 080033a2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080033a4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080033a6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080033a8 */ PUSH {R5-R7} \n\
/* 080033aa */ SUB SP, 0x2C \n\
/* 080033ac */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080033ae */ LDR R0, [SP, 0x4C] \n\
/* 080033b0 */ LDR R4, [SP, 0x50] \n\
/* 080033b2 */ LDR R5, [SP, 0x54] \n\
/* 080033b4 */ LSLS R1, R1, 0x18 \n\
/* 080033b6 */ LSRS R1, R1, 0x18 \n\
/* 080033b8 */ STR R1, [SP, 0x10] \n\
/* 080033ba */ STR R1, [SP, 0xC] \n\
/* 080033bc */ LSLS R2, R2, 0x18 \n\
/* 080033be */ LSRS R2, R2, 0x18 \n\
/* 080033c0 */ STR R2, [SP, 0x18] \n\
/* 080033c2 */ STR R2, [SP, 0x14] \n\
/* 080033c4 */ LSLS R3, R3, 0x18 \n\
/* 080033c6 */ LSRS R3, R3, 0x18 \n\
/* 080033c8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080033ca */ LSLS R0, R0, 0x18 \n\
/* 080033cc */ LSRS R0, R0, 0x18 \n\
/* 080033ce */ STR R0, [SP, 0x1C] \n\
/* 080033d0 */ LSLS R4, R4, 0x10 \n\
/* 080033d2 */ LSRS R6, R4, 0x10 \n\
/* 080033d4 */ STR R6, [SP, 0x20] \n\
/* 080033d6 */ LSLS R5, R5, 0x10 \n\
/* 080033d8 */ LSRS R7, R5, 0x10 \n\
/* 080033da */ STR R7, [SP, 0x24] \n\
/* 080033dc */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080033de */ LDRB R0, [R0, 0x14] \n\
/* 080033e0 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080033e2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080033e4 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080033e6 */ BL __modsi3 \n\
/* 080033ea */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080033ec */ STR R4, [SP, 0x28] \n\
/* 080033ee */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080033f0 */ LDRB R5, [R1, 0x15] \n\
/* 080033f2 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080033f4 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080033f6 */ BL __modsi3 \n\
/* 080033fa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080033fc */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 080033fe */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08003400 */ ADDS R0, R4, R2 @ Set R0 to R4 + R2 \n\
/* 08003402 */ CMP R0, R9 @ Compare R0 and R9 \n\
/* 08003404 */ BLS branch_0800343a \n\
/* 08003406 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08003408 */ SUBS R4, R3, R4 @ Set R4 to R3 - R4 \n\
/* 0800340a */ SUBS R5, R2, R4 @ Set R5 to R2 - R4 \n\
/* 0800340c */ LDR R0, [SP, 0x1C] \n\
/* 0800340e */ STR R0, [SP] \n\
/* 08003410 */ STR R6, [SP, 0x4] \n\
/* 08003412 */ STR R7, [SP, 0x8] \n\
/* 08003414 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08003416 */ LDR R1, [SP, 0x10] \n\
/* 08003418 */ LDR R2, [SP, 0x18] \n\
/* 0800341a */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0800341c */ BL func_080033a0 \n\
/* 08003420 */ LDR R2, [SP, 0x10] \n\
/* 08003422 */ ADDS R1, R2, R4 @ Set R1 to R2 + R4 \n\
/* 08003424 */ LDR R3, [SP, 0x1C] \n\
/* 08003426 */ STR R3, [SP] \n\
/* 08003428 */ ADDS R4, R6, R4 @ Set R4 to R6 + R4 \n\
/* 0800342a */ STR R4, [SP, 0x4] \n\
/* 0800342c */ STR R7, [SP, 0x8] \n\
/* 0800342e */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08003430 */ LDR R2, [SP, 0x18] \n\
/* 08003432 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08003434 */ BL func_080033a0 \n\
/* 08003438 */ B branch_0800350a \n\
 \n\
branch_0800343a: \n\
/* 0800343a */ LDR R4, [SP, 0x1C] \n\
/* 0800343c */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0800343e */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08003440 */ BLS branch_08003472 \n\
/* 08003442 */ SUBS R4, R5, R1 @ Set R4 to R5 - R1 \n\
/* 08003444 */ LDR R0, [SP, 0x1C] \n\
/* 08003446 */ SUBS R5, R0, R4 @ Set R5 to R0 - R4 \n\
/* 08003448 */ STR R4, [SP] \n\
/* 0800344a */ STR R6, [SP, 0x4] \n\
/* 0800344c */ STR R7, [SP, 0x8] \n\
/* 0800344e */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08003450 */ LDR R1, [SP, 0x10] \n\
/* 08003452 */ LDR R2, [SP, 0x18] \n\
/* 08003454 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08003456 */ BL func_080033a0 \n\
/* 0800345a */ LDR R1, [SP, 0x18] \n\
/* 0800345c */ ADDS R2, R1, R4 @ Set R2 to R1 + R4 \n\
/* 0800345e */ STR R5, [SP] \n\
/* 08003460 */ STR R6, [SP, 0x4] \n\
/* 08003462 */ ADDS R4, R7, R4 @ Set R4 to R7 + R4 \n\
/* 08003464 */ STR R4, [SP, 0x8] \n\
/* 08003466 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08003468 */ LDR R1, [SP, 0x10] \n\
/* 0800346a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800346c */ BL func_080033a0 \n\
/* 08003470 */ B branch_0800350a \n\
 \n\
branch_08003472: \n\
/* 08003472 */ LDR R2, [SP, 0xC] \n\
/* 08003474 */ LSLS R0, R2, 0x1 \n\
/* 08003476 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08003478 */ LDR R1, [R4, 0x44] \n\
/* 0800347a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800347c */ LDR R2, [SP, 0x14] \n\
/* 0800347e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08003480 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08003482 */ LSLS R0, R0, 0x1 \n\
/* 08003484 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 08003486 */ LDR R1, [R4, 0x1C] \n\
/* 08003488 */ LDR R4, [SP, 0x20] \n\
/* 0800348a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0800348c */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800348e */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 08003490 */ LDRB R0, [R2] \n\
/* 08003492 */ LDR R4, [SP, 0x24] \n\
/* 08003494 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08003496 */ ADDS R7, R1, R0 @ Set R7 to R1 + R0 \n\
/* 08003498 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800349a */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0800349c */ LDR R1, [SP, 0x28] \n\
/* 0800349e */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 080034a0 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080034a2 */ LDRH R3, [R3, 0x16] \n\
/* 080034a4 */ ADDS R4, R0, R3 @ Set R4 to R0 + R3 \n\
/* 080034a6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080034a8 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080034aa */ LDR R0, [SP, 0x1C] \n\
/* 080034ac */ CMP R5, R0 @ Check R5 - R0 \n\
/* 080034ae */ BCS branch_0800350a \n\
 \n\
branch_080034b0: \n\
/* 080034b0 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080034b2 */ LDRB R1, [R2] \n\
/* 080034b4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080034b6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080034b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080034ba */ BNE branch_080034dc \n\
/* 080034bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080034be */ ADDS R2, R5, 0x1 @ Set R2 to R5 + 0x1 \n\
/* 080034c0 */ CMP R3, R8 @ Compare R3 and R8 \n\
/* 080034c2 */ BCS branch_080034f2 \n\
/* 080034c4 */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
 \n\
branch_080034c6: \n\
/* 080034c6 */ ADDS R1, R4, R3 @ Set R1 to R4 + R3 \n\
/* 080034c8 */ ADDS R0, R7, R3 @ Set R0 to R7 + R3 \n\
/* 080034ca */ LDRB R0, [R0] \n\
/* 080034cc */ LSLS R0, R0, 0xC \n\
/* 080034ce */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 080034d0 */ STRH R1, [R5] \n\
/* 080034d2 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 080034d4 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080034d6 */ CMP R3, R8 @ Compare R3 and R8 \n\
/* 080034d8 */ BCC branch_080034c6 \n\
/* 080034da */ B branch_080034f2 \n\
 \n\
branch_080034dc: \n\
/* 080034dc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080034de */ ADDS R2, R5, 0x1 @ Set R2 to R5 + 0x1 \n\
/* 080034e0 */ CMP R3, R8 @ Compare R3 and R8 \n\
/* 080034e2 */ BCS branch_080034f2 \n\
/* 080034e4 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
 \n\
branch_080034e6: \n\
/* 080034e6 */ ADDS R0, R4, R3 @ Set R0 to R4 + R3 \n\
/* 080034e8 */ STRH R0, [R1] \n\
/* 080034ea */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 080034ec */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080034ee */ CMP R3, R8 @ Compare R3 and R8 \n\
/* 080034f0 */ BCC branch_080034e6 \n\
 \n\
branch_080034f2: \n\
/* 080034f2 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080034f4 */ LDRB R0, [R3, 0x14] \n\
/* 080034f6 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080034f8 */ LSLS R0, R0, 0x1 \n\
/* 080034fa */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 080034fc */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080034fe */ LDRB R0, [R1] \n\
/* 08003500 */ ADDS R7, R7, R0 @ Set R7 to R7 + R0 \n\
/* 08003502 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08003504 */ LDR R2, [SP, 0x1C] \n\
/* 08003506 */ CMP R5, R2 @ Check R5 - R2 \n\
/* 08003508 */ BCC branch_080034b0 \n\
 \n\
branch_0800350a: \n\
/* 0800350a */ ADD SP, 0x2C \n\
/* 0800350c */ POP {R3-R5} \n\
/* 0800350e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08003510 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08003512 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08003514 */ POP {R4-R7} \n\
/* 08003516 */ POP {R0} \n\
/* 08003518 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

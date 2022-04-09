asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080054f0 \n\
/* 080054f0 */ PUSH {R4-R7, LR} \n\
/* 080054f2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080054f4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080054f6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080054f8 */ PUSH {R5-R7} \n\
/* 080054fa */ SUB SP, 0x4 \n\
/* 080054fc */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080054fe */ LDRB R0, [R6, 0x5] \n\
/* 08005500 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08005502 */ LDR R2, =D_030008f8 \n\
/* 08005504 */ LDRB R1, [R6, 0x4] \n\
/* 08005506 */ LSLS R0, R1, 0x1C \n\
/* 08005508 */ LSRS R0, R0, 0x1C \n\
/* 0800550a */ STR R0, [R2] \n\
/* 0800550c */ LDR R7, [R6, 0xC] \n\
/* 0800550e */ MOV R8, R7 @ Set R8 to R7 \n\
/* 08005510 */ LDRH R0, [R6, 0x6] \n\
/* 08005512 */ LSLS R0, R0, 0x16 \n\
/* 08005514 */ LSRS R5, R0, 0x16 \n\
/* 08005516 */ LDRH R0, [R6, 0x8] \n\
/* 08005518 */ STR R0, [SP] \n\
/* 0800551a */ LDR R4, [R6, 0x10] \n\
/* 0800551c */ LSLS R1, R1, 0x18 \n\
/* 0800551e */ LSRS R1, R1, 0x1C \n\
/* 08005520 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08005522 */ B branch_080055e4 \n\
\n\
.ltorg \n\
 \n\
branch_08005528: \n\
/* 08005528 */ LDRB R0, [R4] \n\
/* 0800552a */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 0800552c */ BEQ branch_0800554a \n\
/* 0800552e */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08005530 */ BGT branch_08005538 \n\
/* 08005532 */ CMP R0, 0xA @ Compare R0 and 0xA \n\
/* 08005534 */ BEQ branch_0800553e \n\
/* 08005536 */ B branch_08005570 \n\
 \n\
branch_08005538: \n\
/* 08005538 */ CMP R0, 0x3A @ Compare R0 and 0x3A \n\
/* 0800553a */ BEQ branch_0800555a \n\
/* 0800553c */ B branch_08005570 \n\
 \n\
branch_0800553e: \n\
/* 0800553e */ LDR R1, [SP] \n\
/* 08005540 */ LSLS R0, R1, 0x2 \n\
/* 08005542 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 08005544 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08005546 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08005548 */ B branch_080055e4 \n\
 \n\
branch_0800554a: \n\
/* 0800554a */ LDRB R0, [R4, 0x1] \n\
/* 0800554c */ BL func_08005328 \n\
/* 08005550 */ LSLS R0, R0, 0x18 \n\
/* 08005552 */ LSRS R0, R0, 0x18 \n\
/* 08005554 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08005556 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08005558 */ B branch_080055e4 \n\
 \n\
branch_0800555a: \n\
/* 0800555a */ LDRB R0, [R4, 0x1] \n\
/* 0800555c */ BL func_08005328 \n\
/* 08005560 */ LSLS R0, R0, 0x18 \n\
/* 08005562 */ LSRS R0, R0, 0x18 \n\
/* 08005564 */ LDR R2, =D_030008f8 \n\
/* 08005566 */ STR R0, [R2] \n\
/* 08005568 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0800556a */ B branch_080055e4 \n\
\n\
.ltorg \n\
 \n\
branch_08005570: \n\
/* 08005570 */ LDR R0, [R6] \n\
/* 08005572 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08005574 */ BL func_08005208 \n\
/* 08005578 */ LSLS R0, R0, 0x10 \n\
/* 0800557a */ LSRS R0, R0, 0x10 \n\
/* 0800557c */ LDR R7, =0x3ff \n\
/* 0800557e */ CMP R0, R7 @ Check R0 - R7 \n\
/* 08005580 */ BHI branch_080055a0 \n\
/* 08005582 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08005584 */ LSLS R1, R2, 0xC \n\
/* 08005586 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08005588 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800558a */ LSLS R1, R1, 0x10 \n\
/* 0800558c */ LSRS R1, R1, 0x10 \n\
/* 0800558e */ LSLS R0, R5, 0x1 \n\
/* 08005590 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08005592 */ STRH R1, [R0] \n\
/* 08005594 */ LDR R2, [SP] \n\
/* 08005596 */ ADDS R0, R2, R5 @ Set R0 to R2 + R5 \n\
/* 08005598 */ LSLS R0, R0, 0x1 \n\
/* 0800559a */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800559c */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800559e */ STRH R1, [R0] \n\
 \n\
branch_080055a0: \n\
/* 080055a0 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 080055a2 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080055a4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080055a6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080055a8 */ ADD R10, R0 @ Add R0 to R10 \n\
/* 080055aa */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080055ac */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080055ae */ BNE branch_080055e4 \n\
/* 080055b0 */ LDR R0, =D_030008f8 \n\
/* 080055b2 */ LDR R2, [R0] \n\
/* 080055b4 */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 080055b6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080055b8 */ STR R1, [R6, 0xC] \n\
/* 080055ba */ ANDS R5, R7 @ Set R5 to R5 & R7 \n\
/* 080055bc */ LDRH R0, [R6, 0x6] \n\
/* 080055be */ LDR R7, =0xfffffc00 \n\
/* 080055c0 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 080055c2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080055c4 */ ORRS R0, R5 @ Set R0 to R0 | R5 \n\
/* 080055c6 */ STRH R0, [R6, 0x6] \n\
/* 080055c8 */ STR R4, [R6, 0x10] \n\
/* 080055ca */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080055cc */ LSLS R0, R1, 0x4 \n\
/* 080055ce */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 080055d0 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 080055d2 */ STRB R2, [R6, 0x4] \n\
/* 080055d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080055d6 */ B branch_080055ec \n\
\n\
.ltorg \n\
 \n\
branch_080055e4: \n\
/* 080055e4 */ LDRB R0, [R4] \n\
/* 080055e6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080055e8 */ BNE branch_08005528 \n\
/* 080055ea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080055ec: \n\
/* 080055ec */ ADD SP, 0x4 \n\
/* 080055ee */ POP {R3-R5} \n\
/* 080055f0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080055f2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080055f4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080055f6 */ POP {R4-R7} \n\
/* 080055f8 */ POP {R1} \n\
/* 080055fa */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080133cc \n\
/* 080133cc */ PUSH {R4-R6, LR} \n\
/* 080133ce */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080133d0 */ LDRB R0, [R6] \n\
/* 080133d2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080133d4 */ BEQ branch_080133dc \n\
/* 080133d6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080133d8 */ BEQ branch_08013484 \n\
/* 080133da */ B branch_080134e2 \n\
 \n\
branch_080133dc: \n\
/* 080133dc */ LDRH R0, [R6, 0x8] \n\
/* 080133de */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080133e0 */ STRH R0, [R6, 0x8] \n\
/* 080133e2 */ LSLS R0, R0, 0x10 \n\
/* 080133e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080133e6 */ BNE branch_080134e2 \n\
/* 080133e8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080133ea */ STRB R0, [R6] \n\
/* 080133ec */ LDRB R0, [R6, 0x4] \n\
/* 080133ee */ STRB R0, [R6, 0x1] \n\
/* 080133f0 */ LDRB R0, [R6, 0x5] \n\
/* 080133f2 */ STRB R0, [R6, 0x2] \n\
/* 080133f4 */ LDRB R0, [R6, 0x6] \n\
/* 080133f6 */ STRB R0, [R6, 0x3] \n\
/* 080133f8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080133fa */ BL func_08001980 \n\
/* 080133fe */ LSLS R0, R0, 0x10 \n\
/* 08013400 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013402 */ BEQ branch_0801344e \n\
/* 08013404 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08013406 */ BL func_08001980 \n\
/* 0801340a */ STRB R0, [R6, 0x4] \n\
/* 0801340c */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0801340e */ BL func_08001980 \n\
/* 08013412 */ STRB R0, [R6, 0x5] \n\
/* 08013414 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08013416 */ BL func_08001980 \n\
/* 0801341a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801341c */ STRB R0, [R6, 0x6] \n\
/* 0801341e */ LDRB R4, [R6, 0x4] \n\
/* 08013420 */ CMP R4, 0x13 @ Compare R4 and 0x13 \n\
/* 08013422 */ BHI branch_0801347e \n\
/* 08013424 */ LDRB R1, [R6, 0x5] \n\
/* 08013426 */ CMP R1, 0x13 @ Compare R1 and 0x13 \n\
/* 08013428 */ BHI branch_0801347e \n\
/* 0801342a */ LSLS R0, R2, 0x18 \n\
/* 0801342c */ LSRS R3, R0, 0x18 \n\
/* 0801342e */ CMP R3, 0x13 @ Compare R3 and 0x13 \n\
/* 08013430 */ BHI branch_0801347e \n\
/* 08013432 */ ADDS R2, R6, 0x4 @ Set R2 to R6 + 0x4 \n\
/* 08013434 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 08013436 */ BLS branch_0801343a \n\
/* 08013438 */ ADDS R2, R6, 0x5 @ Set R2 to R6 + 0x5 \n\
 \n\
branch_0801343a: \n\
/* 0801343a */ LDRB R0, [R2] \n\
/* 0801343c */ CMP R0, R3 @ Check R0 - R3 \n\
/* 0801343e */ BLS branch_08013442 \n\
/* 08013440 */ ADDS R2, R6, 0x6 @ Set R2 to R6 + 0x6 \n\
 \n\
branch_08013442: \n\
/* 08013442 */ LDRB R1, [R2] \n\
/* 08013444 */ LSRS R1, R1, 0x2 \n\
/* 08013446 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08013448 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0801344a */ STRB R0, [R2] \n\
/* 0801344c */ B branch_0801347e \n\
 \n\
branch_0801344e: \n\
/* 0801344e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08013450 */ BL func_08001980 \n\
/* 08013454 */ LSLS R0, R0, 0x10 \n\
/* 08013456 */ LSRS R0, R0, 0x10 \n\
/* 08013458 */ LSLS R1, R0, 0x5 \n\
/* 0801345a */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0801345c */ STRB R1, [R6, 0x4] \n\
/* 0801345e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08013460 */ BL func_08001980 \n\
/* 08013464 */ LSLS R0, R0, 0x10 \n\
/* 08013466 */ LSRS R0, R0, 0x10 \n\
/* 08013468 */ LSLS R1, R0, 0x5 \n\
/* 0801346a */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0801346c */ STRB R1, [R6, 0x5] \n\
/* 0801346e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08013470 */ BL func_08001980 \n\
/* 08013474 */ LSLS R0, R0, 0x10 \n\
/* 08013476 */ LSRS R0, R0, 0x10 \n\
/* 08013478 */ LSLS R1, R0, 0x5 \n\
/* 0801347a */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0801347c */ STRB R1, [R6, 0x6] \n\
 \n\
branch_0801347e: \n\
/* 0801347e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013480 */ STRH R0, [R6, 0x8] \n\
/* 08013482 */ B branch_080134e2 \n\
 \n\
branch_08013484: \n\
/* 08013484 */ LDRH R0, [R6, 0x8] \n\
/* 08013486 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08013488 */ STRH R0, [R6, 0x8] \n\
/* 0801348a */ LDRB R0, [R6, 0x1] \n\
/* 0801348c */ LDRB R1, [R6, 0x4] \n\
/* 0801348e */ LDRH R2, [R6, 0x8] \n\
/* 08013490 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 08013492 */ BL func_08008f04 \n\
/* 08013496 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08013498 */ LDRB R0, [R6, 0x2] \n\
/* 0801349a */ LDRB R1, [R6, 0x5] \n\
/* 0801349c */ LDRH R2, [R6, 0x8] \n\
/* 0801349e */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 080134a0 */ BL func_08008f04 \n\
/* 080134a4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080134a6 */ LDRB R0, [R6, 0x3] \n\
/* 080134a8 */ LDRB R1, [R6, 0x6] \n\
/* 080134aa */ LDRH R2, [R6, 0x8] \n\
/* 080134ac */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 080134ae */ BL func_08008f04 \n\
/* 080134b2 */ LDR R1, =D_03004b10 \n\
/* 080134b4 */ LDRH R2, [R6, 0xA] \n\
/* 080134b6 */ LSLS R2, R2, 0x1 \n\
/* 080134b8 */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 080134ba */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080134bc */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 080134be */ ANDS R5, R1 @ Set R5 to R5 & R1 \n\
/* 080134c0 */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 080134c2 */ LSLS R4, R4, 0x5 \n\
/* 080134c4 */ ORRS R4, R5 @ Set R4 to R4 | R5 \n\
/* 080134c6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080134c8 */ LSLS R0, R0, 0xA \n\
/* 080134ca */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080134cc */ STRH R0, [R2] \n\
/* 080134ce */ LDRH R0, [R6, 0x8] \n\
/* 080134d0 */ CMP R0, 0x5F @ Compare R0 and 0x5F \n\
/* 080134d2 */ BLS branch_080134e2 \n\
/* 080134d4 */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 080134d6 */ BL func_08001980 \n\
/* 080134da */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080134dc */ STRH R0, [R6, 0x8] \n\
/* 080134de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080134e0 */ STRB R0, [R6] \n\
 \n\
branch_080134e2: \n\
/* 080134e2 */ POP {R4-R6} \n\
/* 080134e4 */ POP {R0} \n\
/* 080134e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

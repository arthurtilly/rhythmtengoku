asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080293b0 \n\
/* 080293b0 */ PUSH {R4-R7, LR} \n\
/* 080293b2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080293b4 */ PUSH {R7} \n\
/* 080293b6 */ SUB SP, 0x4 \n\
/* 080293b8 */ LDR R4, =D_030055d0 \n\
/* 080293ba */ LDR R3, [R4] \n\
/* 080293bc */ LDRB R0, [R3] \n\
/* 080293be */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080293c0 */ BNE branch_080293cc \n\
/* 080293c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080293c4 */ B branch_080295b4 \n\
\n\
.ltorg \n\
 \n\
branch_080293cc: \n\
/* 080293cc */ MOVS R0, 0xF2 @ Set R0 to 0xF2 \n\
/* 080293ce */ LSLS R0, R0, 0x2 \n\
/* 080293d0 */ ADDS R2, R3, R0 @ Set R2 to R3 + R0 \n\
/* 080293d2 */ LDR R1, =D_030046a8 \n\
/* 080293d4 */ MOVS R5, 0xF3 @ Set R5 to 0xF3 \n\
/* 080293d6 */ LSLS R5, R5, 0x2 \n\
/* 080293d8 */ ADDS R0, R3, R5 @ Set R0 to R3 + R5 \n\
/* 080293da */ LDRB R0, [R0] \n\
/* 080293dc */ LSLS R0, R0, 0x2 \n\
/* 080293de */ ADDS R0, 0xC4 @ Add 0xC4 to R0 \n\
/* 080293e0 */ LDR R1, [R1] \n\
/* 080293e2 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 080293e4 */ STR R6, [R2] \n\
/* 080293e6 */ MOVS R0, 0x83 @ Set R0 to 0x83 \n\
/* 080293e8 */ LSLS R0, R0, 0x3 \n\
/* 080293ea */ ADDS R1, R3, R0 @ Set R1 to R3 + R0 \n\
/* 080293ec */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080293ee */ STRB R0, [R1] \n\
/* 080293f0 */ LDR R0, [R4] \n\
/* 080293f2 */ MOVS R1, 0xF1 @ Set R1 to 0xF1 \n\
/* 080293f4 */ LSLS R1, R1, 0x2 \n\
/* 080293f6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080293f8 */ LDR R1, [R0] \n\
/* 080293fa */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 080293fc */ LSLS R2, R2, 0x6 \n\
/* 080293fe */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08029400 */ LSLS R0, R0, 0x2 \n\
/* 08029402 */ STR R0, [SP] \n\
/* 08029404 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08029406 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08029408 */ BL func_080018e0 \n\
/* 0802940c */ LDR R2, [R4] \n\
/* 0802940e */ LDRB R0, [R2] \n\
/* 08029410 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08029412 */ BEQ branch_08029432 \n\
/* 08029414 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08029416 */ BGT branch_08029424 \n\
/* 08029418 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802941a */ BEQ branch_0802942e \n\
/* 0802941c */ B branch_0802949c \n\
\n\
.ltorg \n\
 \n\
branch_08029424: \n\
/* 08029424 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08029426 */ BEQ branch_08029436 \n\
/* 08029428 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802942a */ BEQ branch_0802943a \n\
/* 0802942c */ B branch_0802949c \n\
 \n\
branch_0802942e: \n\
/* 0802942e */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08029430 */ B branch_0802949c \n\
 \n\
branch_08029432: \n\
/* 08029432 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08029434 */ B branch_0802949c \n\
 \n\
branch_08029436: \n\
/* 08029436 */ MOVS R7, 0x3 @ Set R7 to 0x3 \n\
/* 08029438 */ B branch_0802949c \n\
 \n\
branch_0802943a: \n\
/* 0802943a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802943c */ LDRB R1, [R6, 0x3] \n\
/* 0802943e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08029440 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029442 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029444 */ BEQ branch_0802944a \n\
/* 08029446 */ MOVS R7, 0x3 @ Set R7 to 0x3 \n\
/* 08029448 */ B branch_08029456 \n\
 \n\
branch_0802944a: \n\
/* 0802944a */ MOVS R5, 0xE2 @ Set R5 to 0xE2 \n\
/* 0802944c */ LSLS R5, R5, 0x2 \n\
/* 0802944e */ ADDS R0, R2, R5 @ Set R0 to R2 + R5 \n\
/* 08029450 */ STRB R7, [R0] \n\
/* 08029452 */ BL func_080287b4 \n\
 \n\
branch_08029456: \n\
/* 08029456 */ LDR R2, =D_089d81b4 \n\
/* 08029458 */ LDRB R1, [R6] \n\
/* 0802945a */ LSLS R0, R1, 0x1 \n\
/* 0802945c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802945e */ LSLS R0, R0, 0x2 \n\
/* 08029460 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029462 */ LDR R0, [R0] \n\
/* 08029464 */ LDRB R2, [R6, 0x3] \n\
/* 08029466 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08029468 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802946a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0802946c */ BL func_0802918c \n\
/* 08029470 */ LDRB R0, [R6] \n\
/* 08029472 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029474 */ BNE branch_08029482 \n\
/* 08029476 */ LDR R0, =D_030055d0 \n\
/* 08029478 */ LDR R0, [R0] \n\
/* 0802947a */ LDR R1, =0x00000402 \n\
/* 0802947c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802947e */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 08029480 */ STRH R1, [R0] \n\
 \n\
branch_08029482: \n\
/* 08029482 */ LDRB R1, [R6, 0x3] \n\
/* 08029484 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08029486 */ BICS R0, R1 @ Clear bits in R1 from R0 \n\
/* 08029488 */ BL func_080292e0 \n\
/* 0802948c */ LDR R0, =D_030055d0 \n\
/* 0802948e */ LDR R0, [R0] \n\
/* 08029490 */ MOVS R2, 0xF3 @ Set R2 to 0xF3 \n\
/* 08029492 */ LSLS R2, R2, 0x2 \n\
/* 08029494 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029496 */ LDRB R0, [R0] \n\
/* 08029498 */ BL func_0801b498 \n\
 \n\
branch_0802949c: \n\
/* 0802949c */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0802949e */ BEQ branch_080294bc \n\
/* 080294a0 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 080294a2 */ BCC branch_080294bc \n\
/* 080294a4 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 080294a6 */ BEQ branch_080294c4 \n\
/* 080294a8 */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 080294aa */ BEQ branch_08029554 \n\
/* 080294ac */ B branch_0802959a \n\
\n\
.ltorg \n\
 \n\
branch_080294bc: \n\
/* 080294bc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080294be */ BL func_0801c960 \n\
/* 080294c2 */ B branch_0802959a \n\
 \n\
branch_080294c4: \n\
/* 080294c4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080294c6 */ BL func_0801c960 \n\
/* 080294ca */ LDR R5, =D_030046a8 \n\
/* 080294cc */ LDR R0, [R5] \n\
/* 080294ce */ MOVS R1, 0xB9 @ Set R1 to 0xB9 \n\
/* 080294d0 */ LSLS R1, R1, 0x2 \n\
/* 080294d2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080294d4 */ BL func_08011bec \n\
/* 080294d8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080294da */ LDR R1, =0x000003ff \n\
/* 080294dc */ LDR R2, =D_030055d0 \n\
/* 080294de */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080294e0 */ LDR R0, [R2] \n\
/* 080294e2 */ MOVS R2, 0xF1 @ Set R2 to 0xF1 \n\
/* 080294e4 */ LSLS R2, R2, 0x2 \n\
/* 080294e6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080294e8 */ LDR R2, [R0] \n\
/* 080294ea */ LSRS R3, R4, 0x1 \n\
/* 080294ec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080294ee */ BL func_08001724 \n\
/* 080294f2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080294f4 */ BEQ branch_08029506 \n\
/* 080294f6 */ LDR R0, [R5] \n\
/* 080294f8 */ MOVS R5, 0xB9 @ Set R5 to 0xB9 \n\
/* 080294fa */ LSLS R5, R5, 0x2 \n\
/* 080294fc */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080294fe */ BL func_08011bf8 \n\
/* 08029502 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029504 */ BGE branch_0802951c \n\
 \n\
branch_08029506: \n\
/* 08029506 */ LDR R0, =D_03005380 \n\
/* 08029508 */ LDR R0, [R0] \n\
/* 0802950a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802950c */ LDR R1, [R2] \n\
/* 0802950e */ LDR R5, =0x000003f2 \n\
/* 08029510 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08029512 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029514 */ LDRSH R1, [R1, R2] \n\
/* 08029516 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08029518 */ BL func_0804d770 \n\
 \n\
branch_0802951c: \n\
/* 0802951c */ BL func_0801c504 \n\
/* 08029520 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08029522 */ BL func_08028950 \n\
/* 08029526 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08029528 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802952a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802952c */ BL func_080087d4 \n\
/* 08029530 */ LDR R1, =D_030055d0 \n\
/* 08029532 */ LDR R1, [R1] \n\
/* 08029534 */ MOVS R5, 0xE2 @ Set R5 to 0xE2 \n\
/* 08029536 */ LSLS R5, R5, 0x2 \n\
/* 08029538 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802953a */ STRB R0, [R1] \n\
/* 0802953c */ B branch_0802959a \n\
\n\
.ltorg \n\
 \n\
branch_08029554: \n\
/* 08029554 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08029556 */ BL func_0801c960 \n\
/* 0802955a */ LDR R0, =D_030046a8 \n\
/* 0802955c */ LDR R0, [R0] \n\
/* 0802955e */ MOVS R1, 0xB9 @ Set R1 to 0xB9 \n\
/* 08029560 */ LSLS R1, R1, 0x2 \n\
/* 08029562 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029564 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08029566 */ LDRSB R1, [R6, R1] \n\
/* 08029568 */ LDR R4, =D_030055d0 \n\
/* 0802956a */ LDR R2, [R4] \n\
/* 0802956c */ MOVS R5, 0xF1 @ Set R5 to 0xF1 \n\
/* 0802956e */ LSLS R5, R5, 0x2 \n\
/* 08029570 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 08029572 */ LDR R2, [R2] \n\
/* 08029574 */ BL func_08011a90 \n\
/* 08029578 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0802957a */ LDR R1, =0x000003ff \n\
/* 0802957c */ LDR R0, [R4] \n\
/* 0802957e */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08029580 */ LDR R2, [R0] \n\
/* 08029582 */ LSRS R3, R3, 0x1 \n\
/* 08029584 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08029586 */ BL func_08001724 \n\
/* 0802958a */ LDR R0, [R4] \n\
/* 0802958c */ LDRB R1, [R6, 0x2] \n\
/* 0802958e */ MOVS R2, 0xE2 @ Set R2 to 0xE2 \n\
/* 08029590 */ LSLS R2, R2, 0x2 \n\
/* 08029592 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029594 */ STRB R1, [R0] \n\
/* 08029596 */ BL func_080287b4 \n\
 \n\
branch_0802959a: \n\
/* 0802959a */ LDR R0, =D_030055d0 \n\
/* 0802959c */ LDR R0, [R0] \n\
/* 0802959e */ LDR R5, =0x000003cd \n\
/* 080295a0 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080295a2 */ STRB R7, [R0] \n\
/* 080295a4 */ LDR R2, =D_089d81b4 \n\
/* 080295a6 */ LDRB R1, [R6] \n\
/* 080295a8 */ LSLS R0, R1, 0x1 \n\
/* 080295aa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080295ac */ LSLS R0, R0, 0x2 \n\
/* 080295ae */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 080295b0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080295b2 */ LDR R0, [R0] \n\
 \n\
branch_080295b4: \n\
/* 080295b4 */ ADD SP, 0x4 \n\
/* 080295b6 */ POP {R3} \n\
/* 080295b8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080295ba */ POP {R4-R7} \n\
/* 080295bc */ POP {R1} \n\
/* 080295be */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

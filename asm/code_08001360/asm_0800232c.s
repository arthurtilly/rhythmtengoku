asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800232c \n\
/* 0800232c */ PUSH {R4-R7, LR} \n\
/* 0800232e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08002330 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08002332 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08002334 */ PUSH {R5-R7} \n\
/* 08002336 */ SUB SP, 0xC \n\
/* 08002338 */ STR R0, [SP] \n\
/* 0800233a */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800233c */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0800233e */ MOV R10, R3 @ Set R10 to R3 \n\
/* 08002340 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002342 */ BGE branch_08002346 \n\
/* 08002344 */ B branch_080024c2 \n\
 \n\
branch_08002346: \n\
/* 08002346 */ LDR R0, =D_03000340 \n\
/* 08002348 */ LDR R1, [SP] \n\
/* 0800234a */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800234c */ LDRB R7, [R0] \n\
/* 0800234e */ LDR R2, [SP, 0x2C] \n\
/* 08002350 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08002352 */ BNE branch_0800235c \n\
/* 08002354 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08002356 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08002358 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800235a */ BEQ branch_08002382 \n\
 \n\
branch_0800235c: \n\
/* 0800235c */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0800235e */ LSLS R4, R4, 0x9 \n\
/* 08002360 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08002362 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08002364 */ BL fast_divsi3 \n\
/* 08002368 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800236a */ CMP R5, R6 @ Check R5 - R6 \n\
/* 0800236c */ BEQ branch_08002380 \n\
/* 0800236e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08002370 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08002372 */ BL fast_divsi3 \n\
/* 08002376 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002378 */ B branch_08002382 \n\
\n\
.ltorg \n\
 \n\
branch_08002380: \n\
/* 08002380 */ MOV R4, R8 @ Set R4 to R8 \n\
 \n\
branch_08002382: \n\
/* 08002382 */ LDR R3, [SP, 0x2C] \n\
/* 08002384 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08002386 */ BEQ branch_08002392 \n\
/* 08002388 */ MOV R12, R8 @ Set R12 to R8 \n\
/* 0800238a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800238c */ MOV R8, R5 @ Set R8 to R5 \n\
/* 0800238e */ STR R6, [SP, 0x8] \n\
/* 08002390 */ B branch_08002398 \n\
 \n\
branch_08002392: \n\
/* 08002392 */ MOV R12, R5 @ Set R12 to R5 \n\
/* 08002394 */ MOV R9, R6 @ Set R9 to R6 \n\
/* 08002396 */ STR R4, [SP, 0x8] \n\
 \n\
branch_08002398: \n\
/* 08002398 */ LDR R6, [SP] \n\
/* 0800239a */ LSLS R1, R6, 0x3 \n\
/* 0800239c */ LDR R0, =D_03000138 \n\
/* 0800239e */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 080023a0 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080023a2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080023a4 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 080023a6 */ STR R1, [SP, 0x4] \n\
/* 080023a8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080023aa */ BEQ branch_080023ae \n\
/* 080023ac */ NEGS R3, R3 @ Set R3 to -R3 \n\
 \n\
branch_080023ae: \n\
/* 080023ae */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080023b0 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 080023b2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080023b4 */ BEQ branch_080023b8 \n\
/* 080023b6 */ NEGS R3, R3 @ Set R3 to -R3 \n\
 \n\
branch_080023b8: \n\
/* 080023b8 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080023ba */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 080023bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080023be */ BEQ branch_080023f0 \n\
/* 080023c0 */ LDR R2, =gSineTable \n\
/* 080023c2 */ LDR R1, =0x7ff \n\
/* 080023c4 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080023c6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080023c8 */ LSLS R0, R0, 0x1 \n\
/* 080023ca */ ADDS R4, R0, R2 @ Set R4 to R0 + R2 \n\
/* 080023cc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080023ce */ LDRSH R4, [R4, R0] \n\
/* 080023d0 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 080023d2 */ LSLS R6, R6, 0x2 \n\
/* 080023d4 */ ADDS R0, R3, R6 @ Set R0 to R3 + R6 \n\
/* 080023d6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080023d8 */ LSLS R0, R0, 0x1 \n\
/* 080023da */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080023dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080023de */ LDRSH R1, [R0, R2] \n\
/* 080023e0 */ B branch_08002406 \n\
\n\
.ltorg \n\
 \n\
branch_080023f0: \n\
/* 080023f0 */ LDR R1, =D_08935fcc \n\
/* 080023f2 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080023f4 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 080023f6 */ LSLS R0, R3, 0x1 \n\
/* 080023f8 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 080023fa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080023fc */ LDRSH R4, [R1, R3] \n\
/* 080023fe */ LDR R1, =D_089361cc \n\
/* 08002400 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08002402 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08002404 */ LDRSH R1, [R0, R6] \n\
 \n\
branch_08002406: \n\
/* 08002406 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08002408 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800240a */ ASRS R0, R0, 0x8 \n\
/* 0800240c */ STRH R0, [R5] \n\
/* 0800240e */ NEGS R0, R4 @ Set R0 to -R4 \n\
/* 08002410 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 08002412 */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 08002414 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08002416 */ ASRS R0, R0, 0x8 \n\
/* 08002418 */ STRH R0, [R5, 0x2] \n\
/* 0800241a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800241c */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0800241e */ ASRS R0, R0, 0x8 \n\
/* 08002420 */ STRH R0, [R5, 0x4] \n\
/* 08002422 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08002424 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08002426 */ ASRS R0, R0, 0x8 \n\
/* 08002428 */ STRH R0, [R5, 0x6] \n\
/* 0800242a */ LDR R0, [SP] \n\
/* 0800242c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800242e */ BL func_08002280 \n\
/* 08002432 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08002434 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08002436 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002438 */ BEQ branch_080024c2 \n\
/* 0800243a */ LDR R0, =D_03000238 \n\
/* 0800243c */ LDR R3, [SP, 0x4] \n\
/* 0800243e */ ADDS R5, R3, R0 @ Set R5 to R3 + R0 \n\
/* 08002440 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08002442 */ ANDS R7, R0 @ Set R7 to R7 & R0 \n\
/* 08002444 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08002446 */ BEQ branch_08002480 \n\
/* 08002448 */ LDR R2, =gSineTable \n\
/* 0800244a */ LDR R1, =0x7ff \n\
/* 0800244c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800244e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002450 */ LSLS R0, R0, 0x1 \n\
/* 08002452 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08002454 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08002456 */ LDRSH R4, [R0, R6] \n\
/* 08002458 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800245a */ LSLS R0, R0, 0x2 \n\
/* 0800245c */ ADD R0, R10 @ Add R10 to R0 \n\
/* 0800245e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002460 */ LSLS R0, R0, 0x1 \n\
/* 08002462 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08002464 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08002466 */ LDRSH R1, [R0, R2] \n\
/* 08002468 */ B branch_08002498 \n\
\n\
.ltorg \n\
 \n\
branch_08002480: \n\
/* 08002480 */ LDR R0, =D_08935fcc \n\
/* 08002482 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08002484 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08002486 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08002488 */ LSLS R1, R1, 0x1 \n\
/* 0800248a */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800248c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800248e */ LDRSH R4, [R0, R6] \n\
/* 08002490 */ LDR R0, =D_089361cc \n\
/* 08002492 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08002494 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08002496 */ LDRSH R1, [R1, R0] \n\
 \n\
branch_08002498: \n\
/* 08002498 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800249a */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800249c */ ASRS R0, R0, 0x8 \n\
/* 0800249e */ STRH R0, [R5] \n\
/* 080024a0 */ NEGS R0, R4 @ Set R0 to -R4 \n\
/* 080024a2 */ LDR R2, [SP, 0x8] \n\
/* 080024a4 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 080024a6 */ ASRS R0, R0, 0x8 \n\
/* 080024a8 */ STRH R0, [R5, 0x2] \n\
/* 080024aa */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080024ac */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 080024ae */ ASRS R0, R0, 0x8 \n\
/* 080024b0 */ STRH R0, [R5, 0x4] \n\
/* 080024b2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080024b4 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 080024b6 */ ASRS R0, R0, 0x8 \n\
/* 080024b8 */ STRH R0, [R5, 0x6] \n\
/* 080024ba */ LDR R0, [SP] \n\
/* 080024bc */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080024be */ BL func_08002280 \n\
 \n\
branch_080024c2: \n\
/* 080024c2 */ ADD SP, 0xC \n\
/* 080024c4 */ POP {R3-R5} \n\
/* 080024c6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080024c8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080024ca */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080024cc */ POP {R4-R7} \n\
/* 080024ce */ POP {R0} \n\
/* 080024d0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080153a8 \n\
/* 080153a8 */ PUSH {R4-R7, LR} \n\
/* 080153aa */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080153ac */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080153ae */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080153b0 */ PUSH {R5-R7} \n\
/* 080153b2 */ SUB SP, 0x10 \n\
/* 080153b4 */ LDR R0, =D_030046a8 \n\
/* 080153b6 */ LDR R1, [R0] \n\
/* 080153b8 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080153ba */ ADDS R6, 0x10 @ Add 0x10 to R6 \n\
/* 080153bc */ LDR R0, =D_030046a4 \n\
/* 080153be */ LDR R0, [R0] \n\
/* 080153c0 */ MOVS R2, 0xCB @ Set R2 to 0xCB \n\
/* 080153c2 */ LSLS R2, R2, 0x2 \n\
/* 080153c4 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080153c6 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080153c8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080153ca */ STR R3, [SP, 0xC] \n\
/* 080153cc */ LDRH R7, [R6, 0x3E] \n\
/* 080153ce */ LDR R0, =0xffff \n\
/* 080153d0 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 080153d2 */ BNE branch_080153f0 \n\
/* 080153d4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080153d6 */ ADDS R0, 0xBE @ Add 0xBE to R0 \n\
/* 080153d8 */ LDRH R1, [R0] \n\
/* 080153da */ STRH R1, [R2, 0x12] \n\
/* 080153dc */ LDRH R0, [R0] \n\
/* 080153de */ STRH R0, [R2, 0x10] \n\
/* 080153e0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080153e2 */ B branch_080154dc \n\
\n\
.ltorg \n\
 \n\
branch_080153f0: \n\
/* 080153f0 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 080153f2 */ LDRSB R4, [R6, R4] \n\
/* 080153f4 */ MOVS R5, 0x3 @ Set R5 to 0x3 \n\
/* 080153f6 */ LDRSB R5, [R6, R5] \n\
/* 080153f8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080153fa */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080153fc */ BL func_08013100 \n\
/* 08015400 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08015402 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08015404 */ LDRSB R0, [R6, R0] \n\
/* 08015406 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08015408 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801540a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801540c */ BL func_0801317c \n\
/* 08015410 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08015412 */ BGT branch_0801541e \n\
/* 08015414 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08015416 */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 08015418 */ BNE branch_0801541e \n\
/* 0801541a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801541c */ STR R2, [SP, 0xC] \n\
 \n\
branch_0801541e: \n\
/* 0801541e */ LDR R3, [SP, 0xC] \n\
/* 08015420 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08015422 */ BEQ branch_0801542e \n\
/* 08015424 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08015426 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08015428 */ BL func_080152b0 \n\
/* 0801542c */ STR R0, [SP, 0x8] \n\
 \n\
branch_0801542e: \n\
/* 0801542e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08015430 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015432 */ BLT branch_08015468 \n\
/* 08015434 */ LSLS R1, R0, 0x1 \n\
/* 08015436 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08015438 */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 0801543a */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0801543c */ LDRH R3, [R0] \n\
/* 0801543e */ LDR R0, =0xffff \n\
/* 08015440 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08015442 */ BNE branch_0801544c \n\
/* 08015444 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 08015446 */ B branch_08015464 \n\
\n\
.ltorg \n\
 \n\
branch_0801544c: \n\
/* 0801544c */ CMP R3, R7 @ Check R3 - R7 \n\
/* 0801544e */ BCS branch_0801545a \n\
/* 08015450 */ LSLS R0, R7, 0x1 \n\
/* 08015452 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08015454 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 08015456 */ LSRS R3, R0, 0x2 \n\
/* 08015458 */ B branch_08015464 \n\
 \n\
branch_0801545a: \n\
/* 0801545a */ LSLS R0, R3, 0x1 \n\
/* 0801545c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801545e */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 08015460 */ LSLS R0, R0, 0x6 \n\
/* 08015462 */ LSRS R3, R0, 0x8 \n\
 \n\
branch_08015464: \n\
/* 08015464 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08015466 */ STRH R3, [R0] \n\
 \n\
branch_08015468: \n\
/* 08015468 */ LDR R0, =0xffff \n\
/* 0801546a */ STRH R0, [R6, 0x3E] \n\
/* 0801546c */ ADD R1, SP, 0x4 \n\
/* 0801546e */ MOV R0, SP @ Set R0 to SP \n\
/* 08015470 */ BL func_080152b0 \n\
/* 08015474 */ MOVS R1, 0xAE @ Set R1 to 0xAE \n\
/* 08015476 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08015478 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801547a */ LDR R2, [SP, 0xC] \n\
/* 0801547c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0801547e */ BEQ branch_080154c0 \n\
/* 08015480 */ LDR R3, [SP, 0x8] \n\
/* 08015482 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08015484 */ BCS branch_080154b8 \n\
/* 08015486 */ LSLS R0, R3, 0x8 \n\
/* 08015488 */ LDR R1, [SP] \n\
/* 0801548a */ BL __udivsi3 \n\
/* 0801548e */ LDR R1, [SP, 0x4] \n\
/* 08015490 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08015492 */ ADDS R7, R0, 0x1 @ Set R7 to R0 + 0x1 \n\
/* 08015494 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08015496 */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
/* 08015498 */ ADDS R4, 0x40 @ Add 0x40 to R4 \n\
 \n\
branch_0801549a: \n\
/* 0801549a */ LDRH R3, [R4] \n\
/* 0801549c */ LDR R0, =0xffff \n\
/* 0801549e */ CMP R3, R0 @ Check R3 - R0 \n\
/* 080154a0 */ BEQ branch_080154b0 \n\
/* 080154a2 */ ADDS R0, R3, R7 @ Set R0 to R3 + R7 \n\
/* 080154a4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080154a6 */ MOVS R2, 0xFA @ Set R2 to 0xFA \n\
/* 080154a8 */ LSLS R2, R2, 0x2 \n\
/* 080154aa */ BL clamp_int32 \n\
/* 080154ae */ STRH R0, [R4] \n\
 \n\
branch_080154b0: \n\
/* 080154b0 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 080154b2 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080154b4 */ CMP R5, 0x36 @ Compare R5 and 0x36 \n\
/* 080154b6 */ BLS branch_0801549a \n\
 \n\
branch_080154b8: \n\
/* 080154b8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080154ba */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080154bc */ BL func_080152b0 \n\
 \n\
branch_080154c0: \n\
/* 080154c0 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080154c2 */ BL __udivsi3 \n\
/* 080154c6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080154c8 */ CMP R2, 0x8 @ Compare R2 and 0x8 \n\
/* 080154ca */ BHI branch_080154ce \n\
/* 080154cc */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
 \n\
branch_080154ce: \n\
/* 080154ce */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080154d0 */ LDRH R1, [R3] \n\
/* 080154d2 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080154d4 */ STRH R1, [R3, 0x12] \n\
/* 080154d6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080154d8 */ STRH R2, [R1] \n\
/* 080154da */ STRH R2, [R3, 0x10] \n\
 \n\
branch_080154dc: \n\
/* 080154dc */ ADD SP, 0x10 \n\
/* 080154de */ POP {R3-R5} \n\
/* 080154e0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080154e2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080154e4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080154e6 */ POP {R4-R7} \n\
/* 080154e8 */ POP {R1} \n\
/* 080154ea */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

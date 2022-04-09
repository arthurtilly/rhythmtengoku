asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08003278 \n\
/* 08003278 */ PUSH {R4-R7, LR} \n\
/* 0800327a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800327c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800327e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08003280 */ PUSH {R5-R7} \n\
/* 08003282 */ SUB SP, 0x24 \n\
/* 08003284 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08003286 */ LDRB R1, [R7] \n\
/* 08003288 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800328a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800328c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800328e */ BEQ branch_08003372 \n\
/* 08003290 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08003292 */ STR R0, [SP, 0xC] \n\
/* 08003294 */ LDRH R0, [R7] \n\
/* 08003296 */ LSRS R0, R0, 0x2 \n\
/* 08003298 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800329a */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 0800329c */ STR R1, [SP, 0x14] \n\
/* 0800329e */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 080032a0 */ ADDS R2, 0x52 @ Add 0x52 to R2 \n\
/* 080032a2 */ STR R2, [SP, 0x1C] \n\
/* 080032a4 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 080032a6 */ ADDS R3, 0x50 @ Add 0x50 to R3 \n\
/* 080032a8 */ STR R3, [SP, 0x18] \n\
/* 080032aa */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 080032ac */ STR R1, [SP, 0x20] \n\
/* 080032ae */ LDR R2, [SP, 0xC] \n\
/* 080032b0 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080032b2 */ BCS branch_08003344 \n\
 \n\
branch_080032b4: \n\
/* 080032b4 */ LDRH R3, [R7, 0x10] \n\
/* 080032b6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080032b8 */ MOVS R0, 0x22 @ Set R0 to 0x22 \n\
/* 080032ba */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 080032bc */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080032be */ LDR R1, [SP, 0xC] \n\
/* 080032c0 */ ADD R10, R1 @ Add R1 to R10 \n\
/* 080032c2 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080032c4 */ LDRB R0, [R2] \n\
/* 080032c6 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 080032c8 */ LDRH R5, [R7, 0x12] \n\
/* 080032ca */ MOVS R3, 0x2A @ Set R3 to 0x2A \n\
/* 080032cc */ ADDS R3, R3, R7 @ Set R3 to R3 + R7 \n\
/* 080032ce */ MOV R9, R3 @ Set R9 to R3 \n\
/* 080032d0 */ ADD R9, R1 @ Add R1 to R9 \n\
/* 080032d2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080032d4 */ LDRB R0, [R1] \n\
/* 080032d6 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 080032d8 */ LDRB R1, [R7, 0x14] \n\
/* 080032da */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080032dc */ BL __umodsi3 \n\
/* 080032e0 */ STR R0, [SP, 0x10] \n\
/* 080032e2 */ LDRB R1, [R7, 0x15] \n\
/* 080032e4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080032e6 */ BL __umodsi3 \n\
/* 080032ea */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080032ec */ ADDS R6, R7, 0x0 @ Set R6 to R7 + 0x0 \n\
/* 080032ee */ ADDS R6, 0x32 @ Add 0x32 to R6 \n\
/* 080032f0 */ LDR R3, [SP, 0xC] \n\
/* 080032f2 */ ADDS R6, R6, R3 @ Set R6 to R6 + R3 \n\
/* 080032f4 */ LDRB R3, [R6] \n\
/* 080032f6 */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
/* 080032f8 */ ADDS R4, 0x3A @ Add 0x3A to R4 \n\
/* 080032fa */ LDR R0, [SP, 0xC] \n\
/* 080032fc */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080032fe */ LDRB R0, [R4] \n\
/* 08003300 */ STR R0, [SP] \n\
/* 08003302 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08003304 */ STR R1, [SP, 0x4] \n\
/* 08003306 */ STR R5, [SP, 0x8] \n\
/* 08003308 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800330a */ LDR R1, [SP, 0x10] \n\
/* 0800330c */ BL func_08003070 \n\
/* 08003310 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08003312 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08003314 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08003316 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08003318 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 0800331a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800331c */ LDRB R3, [R0] \n\
/* 0800331e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08003320 */ LDRB R0, [R1] \n\
/* 08003322 */ STR R0, [SP] \n\
/* 08003324 */ LDRB R0, [R6] \n\
/* 08003326 */ STR R0, [SP, 0x4] \n\
/* 08003328 */ LDRB R0, [R4] \n\
/* 0800332a */ STR R0, [SP, 0x8] \n\
/* 0800332c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800332e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08003330 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08003332 */ BL func_0800318c \n\
/* 08003336 */ LDR R2, [SP, 0xC] \n\
/* 08003338 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800333a */ STR R2, [SP, 0xC] \n\
/* 0800333c */ LDRH R0, [R7] \n\
/* 0800333e */ LSRS R0, R0, 0x2 \n\
/* 08003340 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08003342 */ BCC branch_080032b4 \n\
 \n\
branch_08003344: \n\
/* 08003344 */ LDR R1, [R7, 0x58] \n\
/* 08003346 */ LDR R3, [SP, 0x1C] \n\
/* 08003348 */ LDRH R0, [R3] \n\
/* 0800334a */ LDR R2, [SP, 0x14] \n\
/* 0800334c */ LDRH R2, [R2] \n\
/* 0800334e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08003350 */ STRH R0, [R1] \n\
/* 08003352 */ LDR R1, [R7, 0x5C] \n\
/* 08003354 */ LDR R3, [SP, 0x20] \n\
/* 08003356 */ LDRH R0, [R3] \n\
/* 08003358 */ LDR R2, [SP, 0x18] \n\
/* 0800335a */ LDRH R2, [R2] \n\
/* 0800335c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800335e */ STRH R0, [R1] \n\
/* 08003360 */ LDRB R1, [R7] \n\
/* 08003362 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08003364 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08003366 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003368 */ STRB R0, [R7] \n\
/* 0800336a */ LDRH R1, [R7] \n\
/* 0800336c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0800336e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003370 */ STRH R0, [R7] \n\
 \n\
branch_08003372: \n\
/* 08003372 */ ADD SP, 0x24 \n\
/* 08003374 */ POP {R3-R5} \n\
/* 08003376 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08003378 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800337a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800337c */ POP {R4-R7} \n\
/* 0800337e */ POP {R0} \n\
/* 08003380 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

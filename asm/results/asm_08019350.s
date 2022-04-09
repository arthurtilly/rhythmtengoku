asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019350 \n\
/* 08019350 */ PUSH {R4-R7, LR} \n\
/* 08019352 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08019354 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08019356 */ LDR R2, =D_089d7980 \n\
/* 08019358 */ LSLS R1, R0, 0x1 \n\
/* 0801935a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801935c */ LSLS R1, R1, 0x3 \n\
/* 0801935e */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08019360 */ LDR R3, [R2] \n\
/* 08019362 */ ADDS R4, R3, R1 @ Set R4 to R3 + R1 \n\
/* 08019364 */ LDRB R0, [R3] \n\
/* 08019366 */ LSLS R0, R0, 0x1E \n\
/* 08019368 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0801936a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801936c */ BGE branch_0801941a \n\
/* 0801936e */ CMP R6, 0x3 @ Compare R6 and 0x3 \n\
/* 08019370 */ BNE branch_08019384 \n\
/* 08019372 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08019374 */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 08019376 */ LDRH R0, [R1] \n\
/* 08019378 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801937a */ STRH R0, [R1] \n\
/* 0801937c */ B branch_0801941a \n\
\n\
.ltorg \n\
 \n\
branch_08019384: \n\
/* 08019384 */ LDRH R0, [R4] \n\
/* 08019386 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08019388 */ STRH R0, [R4] \n\
/* 0801938a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801938c */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0801938e */ BEQ branch_080193bc \n\
/* 08019390 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08019392 */ BCC branch_0801939a \n\
/* 08019394 */ CMP R6, 0x2 @ Compare R6 and 0x2 \n\
/* 08019396 */ BEQ branch_080193de \n\
/* 08019398 */ B branch_080193e4 \n\
 \n\
branch_0801939a: \n\
/* 0801939a */ LDRH R0, [R4, 0x2] \n\
/* 0801939c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801939e */ STRH R0, [R4, 0x2] \n\
/* 080193a0 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080193a2 */ LDRSB R0, [R3, R0] \n\
/* 080193a4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080193a6 */ BNE branch_080193ae \n\
/* 080193a8 */ LDRH R0, [R3, 0x4] \n\
/* 080193aa */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080193ac */ STRH R0, [R3, 0x4] \n\
 \n\
branch_080193ae: \n\
/* 080193ae */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080193b0 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080193b2 */ BGE branch_080193b6 \n\
/* 080193b4 */ NEGS R1, R5 @ Set R1 to -R5 \n\
 \n\
branch_080193b6: \n\
/* 080193b6 */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 080193b8 */ SUBS R2, R0, R1 @ Set R2 to R0 - R1 \n\
/* 080193ba */ B branch_080193e4 \n\
 \n\
branch_080193bc: \n\
/* 080193bc */ LDRH R0, [R4, 0x4] \n\
/* 080193be */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080193c0 */ STRH R0, [R4, 0x4] \n\
/* 080193c2 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080193c4 */ LDRSB R0, [R3, R0] \n\
/* 080193c6 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080193c8 */ BNE branch_080193d0 \n\
/* 080193ca */ LDRH R0, [R3, 0x4] \n\
/* 080193cc */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080193ce */ STRH R0, [R3, 0x4] \n\
 \n\
branch_080193d0: \n\
/* 080193d0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080193d2 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080193d4 */ BGE branch_080193d8 \n\
/* 080193d6 */ NEGS R1, R5 @ Set R1 to -R5 \n\
 \n\
branch_080193d8: \n\
/* 080193d8 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 080193da */ SUBS R2, R0, R1 @ Set R2 to R0 - R1 \n\
/* 080193dc */ B branch_080193e4 \n\
 \n\
branch_080193de: \n\
/* 080193de */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080193e0 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080193e2 */ NEGS R2, R2 @ Set R2 to -R2 \n\
 \n\
branch_080193e4: \n\
/* 080193e4 */ CMP R2, 0xA @ Compare R2 and 0xA \n\
/* 080193e6 */ BLE branch_080193ea \n\
/* 080193e8 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
 \n\
branch_080193ea: \n\
/* 080193ea */ LDR R3, [R7] \n\
/* 080193ec */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080193ee */ LSLS R0, R0, 0x2 \n\
/* 080193f0 */ ADDS R1, R3, R0 @ Set R1 to R3 + R0 \n\
/* 080193f2 */ LDR R0, [R1] \n\
/* 080193f4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080193f6 */ STR R0, [R1] \n\
/* 080193f8 */ MOVS R0, 0x81 @ Set R0 to 0x81 \n\
/* 080193fa */ LSLS R0, R0, 0x2 \n\
/* 080193fc */ ADDS R1, R3, R0 @ Set R1 to R3 + R0 \n\
/* 080193fe */ LDR R0, [R1] \n\
/* 08019400 */ ADDS R0, 0xA @ Add 0xA to R0 \n\
/* 08019402 */ STR R0, [R1] \n\
/* 08019404 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08019406 */ BGE branch_08019410 \n\
/* 08019408 */ LDRH R0, [R4, 0x6] \n\
/* 0801940a */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 0801940c */ STRH R0, [R4, 0x6] \n\
/* 0801940e */ B branch_08019416 \n\
 \n\
branch_08019410: \n\
/* 08019410 */ LDRH R0, [R4, 0x8] \n\
/* 08019412 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08019414 */ STRH R0, [R4, 0x8] \n\
 \n\
branch_08019416: \n\
/* 08019416 */ LDR R0, [R7] \n\
/* 08019418 */ STRB R6, [R0, 0x6] \n\
 \n\
branch_0801941a: \n\
/* 0801941a */ POP {R4-R7} \n\
/* 0801941c */ POP {R0} \n\
/* 0801941e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

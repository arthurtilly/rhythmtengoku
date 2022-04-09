asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008370 \n\
/* 08008370 */ PUSH {R4-R7, LR} \n\
/* 08008372 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08008374 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08008376 */ ADDS R2, 0x3 @ Add 0x3 to R2 \n\
/* 08008378 */ LSRS R0, R2, 0x2 \n\
/* 0800837a */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0800837c */ LSLS R0, R0, 0x2 \n\
/* 0800837e */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08008380 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08008382 */ LSLS R0, R1, 0x3 \n\
/* 08008384 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08008386 */ LDR R6, =0x33333333 \n\
/* 08008388 */ LSLS R1, R3, 0x4 \n\
/* 0800838a */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 0800838c */ LSLS R0, R3, 0x8 \n\
/* 0800838e */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08008390 */ LSLS R3, R3, 0xC \n\
/* 08008392 */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 08008394 */ LSLS R0, R1, 0x10 \n\
/* 08008396 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08008398 */ LSRS R7, R2, 0x4 \n\
/* 0800839a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800839c */ CMP R2, R7 @ Check R2 - R7 \n\
/* 0800839e */ BCS branch_080083f2 \n\
 \n\
branch_080083a0: \n\
/* 080083a0 */ SUBS R5, 0x10 @ Subtract 0x10 from R5 \n\
/* 080083a2 */ SUBS R4, 0x20 @ Subtract 0x20 from R4 \n\
/* 080083a4 */ LDR R3, [R5, 0xC] \n\
/* 080083a6 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080083a8 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 080083aa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080083ac */ STR R0, [R4, 0x18] \n\
/* 080083ae */ LSRS R0, R3, 0x2 \n\
/* 080083b0 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 080083b2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080083b4 */ STR R0, [R4, 0x1C] \n\
/* 080083b6 */ LDR R3, [R5, 0x8] \n\
/* 080083b8 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080083ba */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 080083bc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080083be */ STR R0, [R4, 0x10] \n\
/* 080083c0 */ LSRS R0, R3, 0x2 \n\
/* 080083c2 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 080083c4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080083c6 */ STR R0, [R4, 0x14] \n\
/* 080083c8 */ LDR R3, [R5, 0x4] \n\
/* 080083ca */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080083cc */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 080083ce */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080083d0 */ STR R0, [R4, 0x8] \n\
/* 080083d2 */ LSRS R0, R3, 0x2 \n\
/* 080083d4 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 080083d6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080083d8 */ STR R0, [R4, 0xC] \n\
/* 080083da */ LDR R3, [R5] \n\
/* 080083dc */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080083de */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 080083e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080083e2 */ STR R0, [R4] \n\
/* 080083e4 */ LSRS R0, R3, 0x2 \n\
/* 080083e6 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 080083e8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080083ea */ STR R0, [R4, 0x4] \n\
/* 080083ec */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080083ee */ CMP R2, R7 @ Check R2 - R7 \n\
/* 080083f0 */ BCC branch_080083a0 \n\
 \n\
branch_080083f2: \n\
/* 080083f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080083f4 */ CMP R2, R12 @ Compare R2 and R12 \n\
/* 080083f6 */ BCS branch_08008414 \n\
 \n\
branch_080083f8: \n\
/* 080083f8 */ SUBS R5, 0x4 @ Subtract 0x4 from R5 \n\
/* 080083fa */ SUBS R4, 0x8 @ Subtract 0x8 from R4 \n\
/* 080083fc */ LDR R3, [R5] \n\
/* 080083fe */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08008400 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 08008402 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08008404 */ STR R0, [R4] \n\
/* 08008406 */ LSRS R0, R3, 0x2 \n\
/* 08008408 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 0800840a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800840c */ STR R0, [R4, 0x4] \n\
/* 0800840e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08008410 */ CMP R2, R12 @ Compare R2 and R12 \n\
/* 08008412 */ BCC branch_080083f8 \n\
 \n\
branch_08008414: \n\
/* 08008414 */ POP {R4-R7} \n\
/* 08008416 */ POP {R0} \n\
/* 08008418 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800637c \n\
/* 0800637c */ PUSH {R4-R7, LR} \n\
/* 0800637e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08006380 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08006382 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08006384 */ PUSH {R5-R7} \n\
/* 08006386 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08006388 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800638a */ LDR R0, [SP, 0x24] \n\
/* 0800638c */ LSLS R0, R0, 0x1C \n\
/* 0800638e */ LSRS R4, R0, 0x10 \n\
/* 08006390 */ LDR R5, =0xfff \n\
/* 08006392 */ LSLS R1, R1, 0x1 \n\
/* 08006394 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08006396 */ LDR R3, [R0] \n\
/* 08006398 */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 0800639a */ LDRH R0, [R0, 0x4] \n\
/* 0800639c */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0800639e */ LSLS R0, R0, 0x1 \n\
/* 080063a0 */ ADDS R6, R3, R0 @ Set R6 to R3 + R0 \n\
/* 080063a2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080063a4 */ LDR R1, [SP, 0x20] \n\
/* 080063a6 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080063a8 */ BCS branch_08006434 \n\
/* 080063aa */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080063ac */ ASRS R7, R2, 0x3 \n\
/* 080063ae */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 080063b0 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 080063b2 */ MOV R10, R2 @ Set R10 to R2 \n\
 \n\
branch_080063b4: \n\
/* 080063b4 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080063b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080063b8 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080063ba */ MOV R12, R0 @ Set R12 to R0 \n\
/* 080063bc */ CMP R3, R7 @ Check R3 - R7 \n\
/* 080063be */ BCS branch_08006408 \n\
 \n\
branch_080063c0: \n\
/* 080063c0 */ LDRH R0, [R1] \n\
/* 080063c2 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080063c4 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080063c6 */ STRH R0, [R1] \n\
/* 080063c8 */ LDRH R0, [R1, 0x2] \n\
/* 080063ca */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080063cc */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080063ce */ STRH R0, [R1, 0x2] \n\
/* 080063d0 */ LDRH R0, [R1, 0x4] \n\
/* 080063d2 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080063d4 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080063d6 */ STRH R0, [R1, 0x4] \n\
/* 080063d8 */ LDRH R0, [R1, 0x6] \n\
/* 080063da */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080063dc */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080063de */ STRH R0, [R1, 0x6] \n\
/* 080063e0 */ LDRH R0, [R1, 0x8] \n\
/* 080063e2 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080063e4 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080063e6 */ STRH R0, [R1, 0x8] \n\
/* 080063e8 */ LDRH R0, [R1, 0xA] \n\
/* 080063ea */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080063ec */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080063ee */ STRH R0, [R1, 0xA] \n\
/* 080063f0 */ LDRH R0, [R1, 0xC] \n\
/* 080063f2 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080063f4 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080063f6 */ STRH R0, [R1, 0xC] \n\
/* 080063f8 */ LDRH R0, [R1, 0xE] \n\
/* 080063fa */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080063fc */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080063fe */ STRH R0, [R1, 0xE] \n\
/* 08006400 */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 08006402 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08006404 */ CMP R3, R7 @ Check R3 - R7 \n\
/* 08006406 */ BCC branch_080063c0 \n\
 \n\
branch_08006408: \n\
/* 08006408 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800640a */ CMP R3, R10 @ Compare R3 and R10 \n\
/* 0800640c */ BCS branch_08006424 \n\
/* 0800640e */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08006410 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08006412 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
 \n\
branch_08006414: \n\
/* 08006414 */ LDRH R0, [R1] \n\
/* 08006416 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 08006418 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0800641a */ STRH R0, [R1] \n\
/* 0800641c */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0800641e */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08006420 */ CMP R3, R2 @ Check R3 - R2 \n\
/* 08006422 */ BCC branch_08006414 \n\
 \n\
branch_08006424: \n\
/* 08006424 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08006426 */ LDRH R0, [R1, 0x4] \n\
/* 08006428 */ LSLS R0, R0, 0x1 \n\
/* 0800642a */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 0800642c */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0800642e */ LDR R2, [SP, 0x20] \n\
/* 08006430 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 08006432 */ BCC branch_080063b4 \n\
 \n\
branch_08006434: \n\
/* 08006434 */ POP {R3-R5} \n\
/* 08006436 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08006438 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800643a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800643c */ POP {R4-R7} \n\
/* 0800643e */ POP {R0} \n\
/* 08006440 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

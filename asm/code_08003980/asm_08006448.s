asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006448 \n\
/* 08006448 */ PUSH {R4-R7, LR} \n\
/* 0800644a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800644c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800644e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08006450 */ PUSH {R5-R7} \n\
/* 08006452 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08006454 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08006456 */ LDR R0, [SP, 0x24] \n\
/* 08006458 */ LSLS R0, R0, 0x1C \n\
/* 0800645a */ LSRS R4, R0, 0x10 \n\
/* 0800645c */ LSLS R1, R1, 0x1 \n\
/* 0800645e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08006460 */ LDR R3, [R0] \n\
/* 08006462 */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 08006464 */ LDRH R0, [R0, 0x4] \n\
/* 08006466 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08006468 */ LSLS R0, R0, 0x1 \n\
/* 0800646a */ ADDS R6, R3, R0 @ Set R6 to R3 + R0 \n\
/* 0800646c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800646e */ LDR R1, [SP, 0x20] \n\
/* 08006470 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08006472 */ BCS branch_080064fe \n\
/* 08006474 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08006476 */ ASRS R7, R2, 0x3 \n\
/* 08006478 */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 0800647a */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 0800647c */ MOV R10, R2 @ Set R10 to R2 \n\
 \n\
branch_0800647e: \n\
/* 0800647e */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08006480 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08006482 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08006484 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08006486 */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08006488 */ BCS branch_080064d2 \n\
 \n\
branch_0800648a: \n\
/* 0800648a */ LDRH R1, [R2] \n\
/* 0800648c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800648e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08006490 */ STRH R0, [R2] \n\
/* 08006492 */ LDRH R1, [R2, 0x2] \n\
/* 08006494 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006496 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08006498 */ STRH R0, [R2, 0x2] \n\
/* 0800649a */ LDRH R1, [R2, 0x4] \n\
/* 0800649c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800649e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080064a0 */ STRH R0, [R2, 0x4] \n\
/* 080064a2 */ LDRH R1, [R2, 0x6] \n\
/* 080064a4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080064a6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080064a8 */ STRH R0, [R2, 0x6] \n\
/* 080064aa */ LDRH R1, [R2, 0x8] \n\
/* 080064ac */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080064ae */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080064b0 */ STRH R0, [R2, 0x8] \n\
/* 080064b2 */ LDRH R1, [R2, 0xA] \n\
/* 080064b4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080064b6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080064b8 */ STRH R0, [R2, 0xA] \n\
/* 080064ba */ LDRH R1, [R2, 0xC] \n\
/* 080064bc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080064be */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080064c0 */ STRH R0, [R2, 0xC] \n\
/* 080064c2 */ LDRH R1, [R2, 0xE] \n\
/* 080064c4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080064c6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080064c8 */ STRH R0, [R2, 0xE] \n\
/* 080064ca */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 080064cc */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080064ce */ CMP R5, R7 @ Check R5 - R7 \n\
/* 080064d0 */ BCC branch_0800648a \n\
 \n\
branch_080064d2: \n\
/* 080064d2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080064d4 */ CMP R5, R10 @ Compare R5 and R10 \n\
/* 080064d6 */ BCS branch_080064ee \n\
/* 080064d8 */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 080064da */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080064dc */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
 \n\
branch_080064de: \n\
/* 080064de */ LDRH R1, [R2] \n\
/* 080064e0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080064e2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080064e4 */ STRH R0, [R2] \n\
/* 080064e6 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080064e8 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 080064ea */ CMP R5, R3 @ Check R5 - R3 \n\
/* 080064ec */ BCC branch_080064de \n\
 \n\
branch_080064ee: \n\
/* 080064ee */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080064f0 */ LDRH R0, [R1, 0x4] \n\
/* 080064f2 */ LSLS R0, R0, 0x1 \n\
/* 080064f4 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 080064f6 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080064f8 */ LDR R2, [SP, 0x20] \n\
/* 080064fa */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080064fc */ BCC branch_0800647e \n\
 \n\
branch_080064fe: \n\
/* 080064fe */ POP {R3-R5} \n\
/* 08006500 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08006502 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08006504 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08006506 */ POP {R4-R7} \n\
/* 08006508 */ POP {R0} \n\
/* 0800650a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

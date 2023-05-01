asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034544 \n\
/* 08034544 */ PUSH {R4-R7, LR} \n\
/* 08034546 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08034548 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803454a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803454c */ PUSH {R5-R7} \n\
/* 0803454e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08034550 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08034552 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08034554 */ ADDS R0, 0xFD @ Add 0xFD to R0 \n\
/* 08034556 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08034558 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803455a */ BEQ branch_08034560 \n\
/* 0803455c */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0803455e */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_08034560: \n\
/* 08034560 */ LDR R0, =0xfffffeff \n\
/* 08034562 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08034564 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08034566 */ CMP R7, R9 @ Compare R7 and R9 \n\
/* 08034568 */ BCS branch_080345be \n\
/* 0803456a */ LDR R0, =gCurrentEngineData \n\
/* 0803456c */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0803456e */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08034570 */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_08034572: \n\
/* 08034572 */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 08034574 */ BNE branch_080345a8 \n\
/* 08034576 */ LDR R6, =gCurrentEngineData \n\
/* 08034578 */ LDR R0, [R6] \n\
/* 0803457a */ LDRH R5, [R0, 0x3A] \n\
/* 0803457c */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803457e */ BNE branch_080345b4 \n\
/* 08034580 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 08034582 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08034584 */ BL func_080343b8 \n\
/* 08034588 */ CMP R4, 0x7 @ Compare R4 and 0x7 \n\
/* 0803458a */ BNE branch_08034594 \n\
/* 0803458c */ LDR R0, [R6] \n\
/* 0803458e */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 08034590 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08034592 */ STRB R1, [R0] \n\
 \n\
branch_08034594: \n\
/* 08034594 */ CMP R4, 0x8 @ Compare R4 and 0x8 \n\
/* 08034596 */ BNE branch_080345b4 \n\
/* 08034598 */ LDR R0, [R6] \n\
/* 0803459a */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 0803459c */ STRB R5, [R0] \n\
/* 0803459e */ B branch_080345b4 \n\
\n\
.ltorg \n\
 \n\
branch_080345a8: \n\
/* 080345a8 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080345aa */ LDR R0, [R1] \n\
/* 080345ac */ ADD R0, R8 @ Add R8 to R0 \n\
/* 080345ae */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080345b0 */ BL func_080343b8 \n\
 \n\
branch_080345b4: \n\
/* 080345b4 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080345b6 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 080345b8 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 080345ba */ CMP R7, R9 @ Compare R7 and R9 \n\
/* 080345bc */ BCC branch_08034572 \n\
 \n\
branch_080345be: \n\
/* 080345be */ POP {R3-R5} \n\
/* 080345c0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080345c2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080345c4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080345c6 */ POP {R4-R7} \n\
/* 080345c8 */ POP {R0} \n\
/* 080345ca */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

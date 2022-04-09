asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005424 \n\
/* 08005424 */ PUSH {R4-R7, LR} \n\
/* 08005426 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08005428 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800542a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800542c */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0800542e */ B branch_080054a4 \n\
 \n\
branch_08005430: \n\
/* 08005430 */ LDRB R0, [R4] \n\
/* 08005432 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08005434 */ BEQ branch_08005456 \n\
/* 08005436 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08005438 */ BGT branch_08005440 \n\
/* 0800543a */ CMP R0, 0xA @ Compare R0 and 0xA \n\
/* 0800543c */ BEQ branch_08005446 \n\
/* 0800543e */ B branch_0800545a \n\
 \n\
branch_08005440: \n\
/* 08005440 */ CMP R0, 0x3A @ Compare R0 and 0x3A \n\
/* 08005442 */ BEQ branch_0800544a \n\
/* 08005444 */ B branch_0800545a \n\
 \n\
branch_08005446: \n\
/* 08005446 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08005448 */ B branch_080054a4 \n\
 \n\
branch_0800544a: \n\
/* 0800544a */ LDRB R0, [R4, 0x1] \n\
/* 0800544c */ BL func_08005328 \n\
/* 08005450 */ LSLS R0, R0, 0x18 \n\
/* 08005452 */ LSRS R0, R0, 0x18 \n\
/* 08005454 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_08005456: \n\
/* 08005456 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08005458 */ B branch_080054a4 \n\
 \n\
branch_0800545a: \n\
/* 0800545a */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800545c */ LSLS R0, R1, 0x4 \n\
/* 0800545e */ LDRB R1, [R4] \n\
/* 08005460 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08005462 */ LSLS R0, R0, 0x18 \n\
/* 08005464 */ LSRS R6, R0, 0x18 \n\
/* 08005466 */ LDRB R5, [R4, 0x1] \n\
/* 08005468 */ LDR R2, [R7, 0x8] \n\
/* 0800546a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800546c */ LDRB R0, [R7, 0x7] \n\
/* 0800546e */ LSLS R0, R0, 0x4 \n\
/* 08005470 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08005472 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08005474 */ BCS branch_080054a4 \n\
/* 08005476 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
 \n\
branch_08005478: \n\
/* 08005478 */ LDRB R0, [R2] \n\
/* 0800547a */ CMP R0, R6 @ Check R0 - R6 \n\
/* 0800547c */ BNE branch_0800549c \n\
/* 0800547e */ LDRB R0, [R2, 0x1] \n\
/* 08005480 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08005482 */ BNE branch_0800549c \n\
/* 08005484 */ LDR R1, [R7, 0xC] \n\
/* 08005486 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08005488 */ LDRB R0, [R1] \n\
/* 0800548a */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0800548c */ STRB R0, [R1] \n\
/* 0800548e */ LSLS R0, R0, 0x18 \n\
/* 08005490 */ LSRS R0, R0, 0x18 \n\
/* 08005492 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005494 */ BNE branch_080054a4 \n\
/* 08005496 */ STRB R0, [R2, 0x1] \n\
/* 08005498 */ STRB R0, [R2] \n\
/* 0800549a */ B branch_080054a4 \n\
 \n\
branch_0800549c: \n\
/* 0800549c */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0800549e */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080054a0 */ CMP R3, R1 @ Check R3 - R1 \n\
/* 080054a2 */ BCC branch_08005478 \n\
 \n\
branch_080054a4: \n\
/* 080054a4 */ LDRB R0, [R4] \n\
/* 080054a6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080054a8 */ BNE branch_08005430 \n\
/* 080054aa */ POP {R4-R7} \n\
/* 080054ac */ POP {R0} \n\
/* 080054ae */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

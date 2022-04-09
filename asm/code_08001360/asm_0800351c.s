asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800351c \n\
/* 0800351c */ PUSH {R4-R6, LR} \n\
/* 0800351e */ SUB SP, 0xC \n\
/* 08003520 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08003522 */ LDR R0, [SP, 0x1C] \n\
/* 08003524 */ LSLS R1, R1, 0x18 \n\
/* 08003526 */ LSRS R5, R1, 0x18 \n\
/* 08003528 */ LSLS R2, R2, 0x18 \n\
/* 0800352a */ LSRS R2, R2, 0x18 \n\
/* 0800352c */ LSLS R3, R3, 0x18 \n\
/* 0800352e */ LSRS R6, R3, 0x18 \n\
/* 08003530 */ LSLS R0, R0, 0x18 \n\
/* 08003532 */ LSRS R3, R0, 0x18 \n\
/* 08003534 */ LDRH R0, [R4] \n\
/* 08003536 */ LSLS R1, R0, 0x10 \n\
/* 08003538 */ LSRS R0, R1, 0x12 \n\
/* 0800353a */ CMP R0, 0x7 @ Compare R0 and 0x7 \n\
/* 0800353c */ BHI branch_08003590 \n\
/* 0800353e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08003540 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003542 */ ADDS R0, 0x22 @ Add 0x22 to R0 \n\
/* 08003544 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08003546 */ STRB R5, [R0] \n\
/* 08003548 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800354a */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 0800354c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800354e */ STRB R2, [R0] \n\
/* 08003550 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003552 */ ADDS R0, 0x32 @ Add 0x32 to R0 \n\
/* 08003554 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08003556 */ STRB R6, [R0] \n\
/* 08003558 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800355a */ ADDS R0, 0x3A @ Add 0x3A to R0 \n\
/* 0800355c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800355e */ STRB R3, [R0] \n\
/* 08003560 */ STR R3, [SP] \n\
/* 08003562 */ LDRH R0, [R4, 0x10] \n\
/* 08003564 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08003566 */ STR R0, [SP, 0x4] \n\
/* 08003568 */ LDRH R0, [R4, 0x12] \n\
/* 0800356a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800356c */ STR R0, [SP, 0x8] \n\
/* 0800356e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003570 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08003572 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08003574 */ BL func_080033a0 \n\
/* 08003578 */ LDRH R2, [R4] \n\
/* 0800357a */ LSRS R1, R2, 0x2 \n\
/* 0800357c */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800357e */ LSLS R1, R1, 0x2 \n\
/* 08003580 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08003582 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08003584 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003586 */ STRH R0, [R4] \n\
/* 08003588 */ LDRB R0, [R4] \n\
/* 0800358a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800358c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800358e */ STRB R0, [R4] \n\
 \n\
branch_08003590: \n\
/* 08003590 */ ADD SP, 0xC \n\
/* 08003592 */ POP {R4-R6} \n\
/* 08003594 */ POP {R0} \n\
/* 08003596 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

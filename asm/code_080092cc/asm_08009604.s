asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009604 \n\
/* 08009604 */ PUSH {R4-R6, LR} \n\
/* 08009606 */ LDR R6, =D_03004af4 \n\
/* 08009608 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800960a */ STRH R0, [R6] \n\
/* 0800960c */ LDR R4, =D_03005370 \n\
/* 0800960e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009610 */ LDRSH R5, [R4, R0] \n\
/* 08009612 */ BL func_080093a8 \n\
/* 08009616 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08009618 */ ASRS R2, R3, 0x4 \n\
/* 0800961a */ STRH R2, [R4] \n\
/* 0800961c */ LDR R0, =D_030046b0 \n\
/* 0800961e */ LDRH R0, [R0] \n\
/* 08009620 */ LSLS R0, R0, 0x3 \n\
/* 08009622 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08009624 */ BLT branch_08009648 \n\
/* 08009626 */ CMP R2, R5 @ Check R2 - R5 \n\
/* 08009628 */ BLE branch_08009648 \n\
/* 0800962a */ SUBS R1, R2, R5 @ Set R1 to R2 - R5 \n\
/* 0800962c */ LSLS R0, R2, 0x2 \n\
/* 0800962e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08009630 */ ASRS R0, R0, 0x3 \n\
/* 08009632 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08009634 */ BLE branch_08009648 \n\
/* 08009636 */ ASRS R0, R3, 0x7 \n\
/* 08009638 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800963a */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800963c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800963e */ ASRS R0, R0, 0x8 \n\
/* 08009640 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009642 */ BNE branch_08009646 \n\
/* 08009644 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08009646: \n\
/* 08009646 */ STRH R0, [R6] \n\
 \n\
branch_08009648: \n\
/* 08009648 */ POP {R4-R6} \n\
/* 0800964a */ POP {R0} \n\
/* 0800964c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

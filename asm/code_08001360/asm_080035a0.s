asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080035a0 \n\
/* 080035a0 */ PUSH {R4-R7, LR} \n\
/* 080035a2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080035a4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080035a6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080035a8 */ PUSH {R5-R7} \n\
/* 080035aa */ SUB SP, 0x10 \n\
/* 080035ac */ MOV R12, R0 @ Set R12 to R0 \n\
/* 080035ae */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080035b0 */ STR R2, [SP] \n\
/* 080035b2 */ STR R3, [SP, 0x4] \n\
/* 080035b4 */ LDR R0, [SP, 0x30] \n\
/* 080035b6 */ LDR R1, [SP, 0x34] \n\
/* 080035b8 */ LDR R2, [SP, 0x38] \n\
/* 080035ba */ LDR R3, [SP, 0x3C] \n\
/* 080035bc */ MOV R10, R3 @ Set R10 to R3 \n\
/* 080035be */ LDR R3, [SP, 0x40] \n\
/* 080035c0 */ LDR R4, [SP, 0x44] \n\
/* 080035c2 */ LDR R5, [SP, 0x50] \n\
/* 080035c4 */ LDR R6, [SP, 0x54] \n\
/* 080035c6 */ LSLS R0, R0, 0x18 \n\
/* 080035c8 */ LSRS R7, R0, 0x18 \n\
/* 080035ca */ LSLS R1, R1, 0x18 \n\
/* 080035cc */ LSRS R1, R1, 0x18 \n\
/* 080035ce */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080035d0 */ LSLS R2, R2, 0x10 \n\
/* 080035d2 */ LSRS R2, R2, 0x10 \n\
/* 080035d4 */ LSLS R3, R3, 0x18 \n\
/* 080035d6 */ LSRS R3, R3, 0x18 \n\
/* 080035d8 */ STR R3, [SP, 0x8] \n\
/* 080035da */ LSLS R4, R4, 0x18 \n\
/* 080035dc */ LSRS R4, R4, 0x18 \n\
/* 080035de */ STR R4, [SP, 0xC] \n\
/* 080035e0 */ LSLS R5, R5, 0x10 \n\
/* 080035e2 */ LSRS R5, R5, 0x10 \n\
/* 080035e4 */ LSLS R6, R6, 0x10 \n\
/* 080035e6 */ LSRS R6, R6, 0x10 \n\
/* 080035e8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080035ea */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080035ec */ LDRB R0, [R3] \n\
/* 080035ee */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080035f0 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 080035f2 */ LDRB R1, [R3] \n\
/* 080035f4 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080035f6 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 080035f8 */ ANDS R3, R1 @ Set R3 to R3 & R1 \n\
/* 080035fa */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 080035fc */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080035fe */ STRB R3, [R0] \n\
/* 08003600 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08003602 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08003604 */ MOVS R4, 0x40 @ Set R4 to 0x40 \n\
/* 08003606 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003608 */ BNE branch_0800360c \n\
/* 0800360a */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
 \n\
branch_0800360c: \n\
/* 0800360c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800360e */ LDR R0, [R1, 0xC] \n\
/* 08003610 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08003612 */ STR R0, [R1, 0x4] \n\
/* 08003614 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08003616 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08003618 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0800361a */ STRB R3, [R1] \n\
/* 0800361c */ LDRH R1, [R1] \n\
/* 0800361e */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08003620 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003622 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 08003624 */ STRH R0, [R3] \n\
/* 08003626 */ LDR R0, [SP] \n\
/* 08003628 */ STR R0, [R3, 0x8] \n\
/* 0800362a */ LDR R1, [SP, 0x4] \n\
/* 0800362c */ STR R1, [R3, 0xC] \n\
/* 0800362e */ STRB R7, [R3, 0x14] \n\
/* 08003630 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08003632 */ STRB R0, [R3, 0x15] \n\
/* 08003634 */ STRH R2, [R3, 0x16] \n\
/* 08003636 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08003638 */ LDR R1, [R2, 0x10] \n\
/* 0800363a */ STR R1, [R3, 0x18] \n\
/* 0800363c */ LDR R2, [R2, 0x4] \n\
/* 0800363e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08003640 */ LDR R3, [R0, 0x8] \n\
/* 08003642 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08003644 */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 08003646 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08003648 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800364a */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0800364c */ STR R1, [R0, 0x1C] \n\
/* 0800364e */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 08003650 */ STRB R2, [R0] \n\
/* 08003652 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08003654 */ STRB R3, [R0] \n\
/* 08003656 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08003658 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0800365a */ STR R1, [R2, 0x44] \n\
/* 0800365c */ ADDS R0, 0x2B @ Add 0x2B to R0 \n\
/* 0800365e */ MOV R3, SP @ Set R3 to SP \n\
/* 08003660 */ LDRB R3, [R3, 0x8] \n\
/* 08003662 */ STRB R3, [R0] \n\
/* 08003664 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08003666 */ MOV R1, SP @ Set R1 to SP \n\
/* 08003668 */ LDRB R1, [R1, 0xC] \n\
/* 0800366a */ STRB R1, [R0] \n\
/* 0800366c */ LDR R0, [SP, 0x48] \n\
/* 0800366e */ STR R0, [R2, 0x58] \n\
/* 08003670 */ LDR R0, [SP, 0x4C] \n\
/* 08003672 */ STR R0, [R2, 0x5C] \n\
/* 08003674 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08003676 */ ADDS R0, 0x52 @ Add 0x52 to R0 \n\
/* 08003678 */ STRH R5, [R0] \n\
/* 0800367a */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0800367c */ STRH R6, [R0] \n\
/* 0800367e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08003680 */ CMP R0, R9 @ Compare R0 and R9 \n\
/* 08003682 */ BCS branch_080036ae \n\
 \n\
branch_08003684: \n\
/* 08003684 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08003686 */ ADDS R4, R0, 0x1 @ Set R4 to R0 + 0x1 \n\
/* 08003688 */ CMP R2, R7 @ Check R2 - R7 \n\
/* 0800368a */ BCS branch_080036a8 \n\
/* 0800368c */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800368e */ MULS R3, R7 @ Multiply R3 by R7 \n\
/* 08003690 */ LDR R6, =0x3ff \n\
/* 08003692 */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
/* 08003694 */ LSLS R0, R3, 0x1 \n\
/* 08003696 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 08003698 */ ADDS R1, R0, R6 @ Set R1 to R0 + R6 \n\
 \n\
branch_0800369a: \n\
/* 0800369a */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0800369c */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 0800369e */ STRH R0, [R1] \n\
/* 080036a0 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 080036a2 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080036a4 */ CMP R2, R7 @ Check R2 - R7 \n\
/* 080036a6 */ BCC branch_0800369a \n\
 \n\
branch_080036a8: \n\
/* 080036a8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080036aa */ CMP R0, R9 @ Compare R0 and R9 \n\
/* 080036ac */ BCC branch_08003684 \n\
 \n\
branch_080036ae: \n\
/* 080036ae */ ADD SP, 0x10 \n\
/* 080036b0 */ POP {R3-R5} \n\
/* 080036b2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080036b4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080036b6 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080036b8 */ POP {R4-R7} \n\
/* 080036ba */ POP {R0} \n\
/* 080036bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

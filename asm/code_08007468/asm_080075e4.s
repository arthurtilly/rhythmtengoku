asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080075e4 \n\
/* 080075e4 */ PUSH {R4-R6, LR} \n\
/* 080075e6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080075e8 */ LDR R4, [R5, 0x8] \n\
/* 080075ea */ LDR R6, [R5, 0xC] \n\
/* 080075ec */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080075ee */ BGE branch_080075f2 \n\
/* 080075f0 */ NEGS R4, R4 @ Set R4 to -R4 \n\
 \n\
branch_080075f2: \n\
/* 080075f2 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080075f4 */ BGE branch_080075f8 \n\
/* 080075f6 */ NEGS R6, R6 @ Set R6 to -R6 \n\
 \n\
branch_080075f8: \n\
/* 080075f8 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 080075fa */ LDRSH R0, [R5, R1] \n\
/* 080075fc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080075fe */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08007600 */ ASRS R4, R1, 0x8 \n\
/* 08007602 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08007604 */ ASRS R6, R0, 0x8 \n\
/* 08007606 */ CMP R4, 0xFF @ Compare R4 and 0xFF \n\
/* 08007608 */ BGT branch_0800760c \n\
/* 0800760a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0800760c: \n\
/* 0800760c */ CMP R6, 0xFF @ Compare R6 and 0xFF \n\
/* 0800760e */ BGT branch_08007612 \n\
/* 08007610 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_08007612: \n\
/* 08007612 */ LDR R0, [R5, 0x8] \n\
/* 08007614 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007616 */ BGE branch_0800761a \n\
/* 08007618 */ NEGS R4, R4 @ Set R4 to -R4 \n\
 \n\
branch_0800761a: \n\
/* 0800761a */ LDR R0, [R5, 0xC] \n\
/* 0800761c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800761e */ BGE branch_08007622 \n\
/* 08007620 */ NEGS R6, R6 @ Set R6 to -R6 \n\
 \n\
branch_08007622: \n\
/* 08007622 */ STR R4, [R5, 0x8] \n\
/* 08007624 */ STR R6, [R5, 0xC] \n\
/* 08007626 */ LDR R0, =D_03005380 \n\
/* 08007628 */ LDR R0, [R0] \n\
/* 0800762a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800762c */ LDRSH R1, [R5, R2] \n\
/* 0800762e */ ASRS R2, R4, 0x8 \n\
/* 08007630 */ LDRH R3, [R5, 0x2] \n\
/* 08007632 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08007634 */ LSLS R2, R2, 0x10 \n\
/* 08007636 */ ASRS R2, R2, 0x10 \n\
/* 08007638 */ ASRS R3, R6, 0x8 \n\
/* 0800763a */ LDRH R5, [R5, 0x4] \n\
/* 0800763c */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 0800763e */ LSLS R3, R3, 0x10 \n\
/* 08007640 */ ASRS R3, R3, 0x10 \n\
/* 08007642 */ BL func_0804d5d4 \n\
/* 08007646 */ ORRS R4, R6 @ Set R4 to R4 | R6 \n\
/* 08007648 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800764a */ BEQ branch_08007654 \n\
/* 0800764c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800764e */ B branch_08007656 \n\
\n\
.ltorg \n\
 \n\
branch_08007654: \n\
/* 08007654 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08007656: \n\
/* 08007656 */ POP {R4-R6} \n\
/* 08007658 */ POP {R1} \n\
/* 0800765a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

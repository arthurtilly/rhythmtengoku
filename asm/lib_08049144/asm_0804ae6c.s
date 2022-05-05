asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ae6c \n\
/* 0804ae6c */ PUSH {R4, LR} \n\
/* 0804ae6e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804ae70 */ LDRB R0, [R4, 0x6] \n\
/* 0804ae72 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804ae74 */ BEQ branch_0804aea2 \n\
/* 0804ae76 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804ae78 */ BGT branch_0804ae80 \n\
/* 0804ae7a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ae7c */ BEQ branch_0804ae9e \n\
/* 0804ae7e */ B branch_0804af06 \n\
 \n\
branch_0804ae80: \n\
/* 0804ae80 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0804ae82 */ BGT branch_0804af06 \n\
/* 0804ae84 */ LDR R0, [R4, 0x8] \n\
/* 0804ae86 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804ae88 */ STR R0, [R4, 0x8] \n\
/* 0804ae8a */ LSRS R3, R0, 0x8 \n\
/* 0804ae8c */ LDRH R0, [R4, 0x2] \n\
/* 0804ae8e */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0804ae90 */ ASRS R2, R0, 0x8 \n\
/* 0804ae92 */ LDRB R0, [R4, 0x5] \n\
/* 0804ae94 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ae96 */ BEQ branch_0804aebe \n\
/* 0804ae98 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804ae9a */ BLS branch_0804aebe \n\
/* 0804ae9c */ B branch_0804aebc \n\
 \n\
branch_0804ae9e: \n\
/* 0804ae9e */ STRB R0, [R4, 0x7] \n\
/* 0804aea0 */ B branch_0804af06 \n\
 \n\
branch_0804aea2: \n\
/* 0804aea2 */ LDR R0, [R4, 0x8] \n\
/* 0804aea4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804aea6 */ STR R0, [R4, 0x8] \n\
/* 0804aea8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804aeaa */ STRB R1, [R4, 0x7] \n\
/* 0804aeac */ LSRS R0, R0, 0x8 \n\
/* 0804aeae */ LDRB R2, [R4] \n\
/* 0804aeb0 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0804aeb2 */ BCC branch_0804af06 \n\
/* 0804aeb4 */ STR R1, [R4, 0x8] \n\
/* 0804aeb6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804aeb8 */ STRB R0, [R4, 0x6] \n\
/* 0804aeba */ B branch_0804af06 \n\
 \n\
branch_0804aebc: \n\
/* 0804aebc */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
 \n\
branch_0804aebe: \n\
/* 0804aebe */ LDRB R0, [R4, 0x4] \n\
/* 0804aec0 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804aec2 */ LDR R1, =D_08a86140 \n\
/* 0804aec4 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0804aec6 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804aec8 */ LSLS R0, R0, 0x1 \n\
/* 0804aeca */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804aecc */ LDRH R0, [R0] \n\
/* 0804aece */ LSLS R0, R0, 0x10 \n\
/* 0804aed0 */ ASRS R2, R0, 0x11 \n\
/* 0804aed2 */ CMP R2, 0x7F @ Compare R2 and 0x7F \n\
/* 0804aed4 */ BLE branch_0804aed8 \n\
/* 0804aed6 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
 \n\
branch_0804aed8: \n\
/* 0804aed8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804aeda */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804aedc */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804aede */ BGE branch_0804aee2 \n\
/* 0804aee0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
 \n\
branch_0804aee2: \n\
/* 0804aee2 */ LDRB R0, [R4, 0x6] \n\
/* 0804aee4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804aee6 */ BNE branch_0804af04 \n\
/* 0804aee8 */ LDRB R1, [R4, 0x1] \n\
/* 0804aeea */ CMP R3, R1 @ Check R3 - R1 \n\
/* 0804aeec */ BGE branch_0804af00 \n\
/* 0804aeee */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804aef0 */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0804aef2 */ BL __divsi3 \n\
/* 0804aef6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804aef8 */ B branch_0804af04 \n\
\n\
.ltorg \n\
 \n\
branch_0804af00: \n\
/* 0804af00 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804af02 */ STRB R0, [R4, 0x6] \n\
 \n\
branch_0804af04: \n\
/* 0804af04 */ STRB R2, [R4, 0x7] \n\
 \n\
branch_0804af06: \n\
/* 0804af06 */ POP {R4} \n\
/* 0804af08 */ POP {R0} \n\
/* 0804af0a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

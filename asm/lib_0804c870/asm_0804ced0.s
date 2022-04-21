asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ced0 \n\
/* 0804ced0 */ PUSH {R4-R7, LR} \n\
/* 0804ced2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804ced4 */ LSLS R2, R2, 0x18 \n\
/* 0804ced6 */ LSRS R7, R2, 0x18 \n\
/* 0804ced8 */ LDR R2, =D_03004428 \n\
/* 0804ceda */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804cedc */ STRB R0, [R2] \n\
/* 0804cede */ LSLS R6, R1, 0x10 \n\
/* 0804cee0 */ ASRS R4, R6, 0x10 \n\
/* 0804cee2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804cee4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804cee6 */ BL func_0804cc68 \n\
/* 0804ceea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ceec */ BNE branch_0804cf32 \n\
/* 0804ceee */ LSLS R0, R4, 0x4 \n\
/* 0804cef0 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804cef2 */ LSLS R0, R0, 0x2 \n\
/* 0804cef4 */ LDR R1, [R5, 0x8] \n\
/* 0804cef6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804cef8 */ LDRH R0, [R1, 0x28] \n\
/* 0804cefa */ MULS R0, R7 @ Multiply R0 by R7 \n\
/* 0804cefc */ ASRS R4, R0, 0x8 \n\
/* 0804cefe */ LDR R1, [R1, 0x8] \n\
/* 0804cf00 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804cf02 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0804cf04: \n\
/* 0804cf04 */ LDRB R0, [R1, 0x4] \n\
/* 0804cf06 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0804cf08 */ CMP R4, R3 @ Check R4 - R3 \n\
/* 0804cf0a */ BCS branch_0804cf20 \n\
/* 0804cf0c */ LSLS R2, R2, 0x18 \n\
/* 0804cf0e */ ASRS R2, R2, 0x18 \n\
/* 0804cf10 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804cf12 */ ASRS R1, R6, 0x10 \n\
/* 0804cf14 */ BL func_0804cebc \n\
/* 0804cf18 */ B branch_0804cf32 \n\
\n\
.ltorg \n\
 \n\
branch_0804cf20: \n\
/* 0804cf20 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 0804cf22 */ LSLS R0, R2, 0x18 \n\
/* 0804cf24 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804cf26 */ LSLS R2, R2, 0x11 \n\
/* 0804cf28 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804cf2a */ LSRS R2, R0, 0x18 \n\
/* 0804cf2c */ LDR R0, [R1] \n\
/* 0804cf2e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804cf30 */ BNE branch_0804cf04 \n\
 \n\
branch_0804cf32: \n\
/* 0804cf32 */ POP {R4-R7} \n\
/* 0804cf34 */ POP {R0} \n\
/* 0804cf36 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

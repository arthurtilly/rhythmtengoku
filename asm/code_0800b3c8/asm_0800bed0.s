asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bed0 \n\
/* 0800bed0 */ PUSH {R4-R6, LR} \n\
/* 0800bed2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800bed4 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800bed6 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0800bed8 */ LDR R1, =D_030053c0 \n\
/* 0800beda */ LDR R1, [R1, 0x4] \n\
/* 0800bedc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800bede */ BEQ branch_0800beea \n\
/* 0800bee0 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800bee2 */ BEQ branch_0800beea \n\
/* 0800bee4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800bee6 */ BL func_08002828 \n\
 \n\
branch_0800beea: \n\
/* 0800beea */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800beec */ BNE branch_0800bef8 \n\
/* 0800beee */ LDR R1, =D_030053c0 \n\
/* 0800bef0 */ STR R4, [R1, 0x4] \n\
/* 0800bef2 */ B branch_0800bf70 \n\
\n\
.ltorg \n\
 \n\
branch_0800bef8: \n\
/* 0800bef8 */ LDR R1, =D_03005b3c \n\
/* 0800befa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800befc */ STRB R0, [R1] \n\
/* 0800befe */ BL func_08049be4 \n\
/* 0800bf02 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800bf04 */ BL func_08049b70 \n\
/* 0800bf08 */ LDR R6, =D_030053c0 \n\
/* 0800bf0a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800bf0c */ BGE branch_0800bf20 \n\
/* 0800bf0e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800bf10 */ BL func_08002634 \n\
/* 0800bf14 */ B branch_0800bf28 \n\
\n\
.ltorg \n\
 \n\
branch_0800bf20: \n\
/* 0800bf20 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800bf22 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800bf24 */ BL func_0800267c \n\
 \n\
branch_0800bf28: \n\
/* 0800bf28 */ STR R0, [R6, 0x4] \n\
/* 0800bf2a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800bf2c */ BL func_080102d0 \n\
/* 0800bf30 */ LDR R4, =D_030053c0 \n\
/* 0800bf32 */ STRH R0, [R4, 0x8] \n\
/* 0800bf34 */ BL func_0800be64 \n\
/* 0800bf38 */ BL func_0800c060 \n\
/* 0800bf3c */ LDR R0, [R4, 0x4] \n\
/* 0800bf3e */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 0800bf40 */ LSLS R2, R2, 0x1 \n\
/* 0800bf42 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 0800bf44 */ LDRH R1, [R1] \n\
/* 0800bf46 */ BL func_08002920 \n\
/* 0800bf4a */ LDR R0, [R4, 0x4] \n\
/* 0800bf4c */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 0800bf4e */ LSLS R3, R3, 0x1 \n\
/* 0800bf50 */ ADDS R1, R4, R3 @ Set R1 to R4 + R3 \n\
/* 0800bf52 */ LDRH R1, [R1] \n\
/* 0800bf54 */ SUBS R3, 0x2 @ Subtract 0x2 from R3 \n\
/* 0800bf56 */ ADDS R2, R4, R3 @ Set R2 to R4 + R3 \n\
/* 0800bf58 */ LDRH R2, [R2] \n\
/* 0800bf5a */ BL func_08002934 \n\
/* 0800bf5e */ LDR R0, [R4, 0x4] \n\
/* 0800bf60 */ MOVS R2, 0xCB @ Set R2 to 0xCB \n\
/* 0800bf62 */ LSLS R2, R2, 0x1 \n\
/* 0800bf64 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 0800bf66 */ LDRB R1, [R1] \n\
/* 0800bf68 */ LSLS R1, R1, 0x18 \n\
/* 0800bf6a */ ASRS R1, R1, 0x18 \n\
/* 0800bf6c */ BL func_080029c4 \n\
 \n\
branch_0800bf70: \n\
/* 0800bf70 */ POP {R4-R6} \n\
/* 0800bf72 */ POP {R1} \n\
/* 0800bf74 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

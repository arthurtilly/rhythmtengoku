asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804bed0 \n\
/* 0804bed0 */ PUSH {R4-R7, LR} \n\
/* 0804bed2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804bed4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804bed6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804bed8 */ PUSH {R5-R7} \n\
/* 0804beda */ SUB SP, 0x4 \n\
/* 0804bedc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804bede */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804bee0 */ LSLS R0, R1, 0x3 \n\
/* 0804bee2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804bee4 */ LSLS R0, R0, 0x2 \n\
/* 0804bee6 */ LDR R1, [R5, 0x8] \n\
/* 0804bee8 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 0804beea */ LDRB R0, [R4] \n\
/* 0804beec */ LSLS R0, R0, 0x1F \n\
/* 0804beee */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804bef0 */ BNE branch_0804bef4 \n\
/* 0804bef2 */ B branch_0804c024 \n\
 \n\
branch_0804bef4: \n\
/* 0804bef4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804bef6 */ STR R0, [SP] \n\
/* 0804bef8 */ LDR R0, =D_03005b78 \n\
/* 0804befa */ MOV R1, SP @ Set R1 to SP \n\
/* 0804befc */ LDRH R1, [R1] \n\
/* 0804befe */ STRH R1, [R0] \n\
/* 0804bf00 */ LDR R1, [R4, 0xC] \n\
/* 0804bf02 */ B branch_0804bfec \n\
\n\
.ltorg \n\
 \n\
branch_0804bf08: \n\
/* 0804bf08 */ LDRB R0, [R5, 0x1] \n\
/* 0804bf0a */ LSLS R0, R0, 0x1D \n\
/* 0804bf0c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804bf0e */ BGE branch_0804bf52 \n\
/* 0804bf10 */ LDRB R0, [R4, 0x2] \n\
/* 0804bf12 */ LSLS R0, R0, 0x1D \n\
/* 0804bf14 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804bf16 */ BLT branch_0804bf52 \n\
/* 0804bf18 */ LDR R1, [R4, 0x18] \n\
/* 0804bf1a */ LDR R0, [R5, 0x34] \n\
/* 0804bf1c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804bf1e */ BCC branch_0804bf52 \n\
/* 0804bf20 */ LDRB R2, [R4] \n\
/* 0804bf22 */ LSLS R1, R2, 0x1F \n\
/* 0804bf24 */ LSRS R1, R1, 0x1F \n\
/* 0804bf26 */ LSLS R1, R1, 0x1 \n\
/* 0804bf28 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0804bf2a */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0804bf2c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bf2e */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804bf30 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 0804bf32 */ STRB R2, [R4] \n\
/* 0804bf34 */ LDRH R0, [R4] \n\
/* 0804bf36 */ LSLS R0, R0, 0x16 \n\
/* 0804bf38 */ LSRS R0, R0, 0x18 \n\
/* 0804bf3a */ LSLS R0, R0, 0xA \n\
/* 0804bf3c */ LDR R1, [R4] \n\
/* 0804bf3e */ LDR R2, =0xfffc03ff \n\
/* 0804bf40 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804bf42 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804bf44 */ STR R1, [R4] \n\
/* 0804bf46 */ LDR R0, [R4, 0x8] \n\
/* 0804bf48 */ STR R0, [R4, 0x10] \n\
/* 0804bf4a */ LDRB R0, [R4, 0x2] \n\
/* 0804bf4c */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0804bf4e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804bf50 */ STRB R0, [R4, 0x2] \n\
 \n\
branch_0804bf52: \n\
/* 0804bf52 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804bf54 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804bf56 */ BL func_0804bcc0 \n\
/* 0804bf5a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804bf5c */ BNE branch_0804bf78 \n\
/* 0804bf5e */ LDRB R0, [R4] \n\
/* 0804bf60 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0804bf62 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0804bf64 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0804bf66 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804bf68 */ STRB R0, [R4] \n\
/* 0804bf6a */ LDR R0, [R5, 0x4] \n\
/* 0804bf6c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804bf6e */ BL func_08049d30 \n\
/* 0804bf72 */ B branch_0804c024 \n\
\n\
.ltorg \n\
 \n\
branch_0804bf78: \n\
/* 0804bf78 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804bf7a */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0804bf7c */ BL func_0804c398 \n\
/* 0804bf80 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804bf82 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804bf84 */ BEQ branch_0804bfde \n\
/* 0804bf86 */ LDR R3, =D_03005650 \n\
/* 0804bf88 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804bf8a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0804bf8c */ LDR R0, =D_03005b78 \n\
/* 0804bf8e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0804bf90 */ B branch_0804bfd2 \n\
\n\
.ltorg \n\
 \n\
branch_0804bf9c: \n\
/* 0804bf9c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804bf9e */ LDR R2, [R1] \n\
/* 0804bfa0 */ LSLS R0, R2, 0xE \n\
/* 0804bfa2 */ LSRS R3, R0, 0x19 \n\
/* 0804bfa4 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804bfa6 */ BEQ branch_0804bfbc \n\
/* 0804bfa8 */ LDR R0, [R5, 0x4] \n\
/* 0804bfaa */ LSLS R1, R2, 0x1C \n\
/* 0804bfac */ LSRS R1, R1, 0x1C \n\
/* 0804bfae */ LSLS R2, R2, 0x15 \n\
/* 0804bfb0 */ LSRS R2, R2, 0x19 \n\
/* 0804bfb2 */ BL func_0804a6b0 \n\
/* 0804bfb6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804bfb8 */ STR R2, [SP] \n\
/* 0804bfba */ B branch_0804bfca \n\
 \n\
branch_0804bfbc: \n\
/* 0804bfbc */ LDR R0, [R5, 0x4] \n\
/* 0804bfbe */ LSLS R1, R2, 0x1C \n\
/* 0804bfc0 */ LSRS R1, R1, 0x1C \n\
/* 0804bfc2 */ LSLS R2, R2, 0x15 \n\
/* 0804bfc4 */ LSRS R2, R2, 0x19 \n\
/* 0804bfc6 */ BL func_0804a5b4 \n\
 \n\
branch_0804bfca: \n\
/* 0804bfca */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0804bfcc */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0804bfce */ ADD R8, R3 @ Add R3 to R8 \n\
/* 0804bfd0 */ LDR R0, =D_03005b78 \n\
 \n\
branch_0804bfd2: \n\
/* 0804bfd2 */ LDRH R0, [R0] \n\
/* 0804bfd4 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0804bfd6 */ BCC branch_0804bf9c \n\
/* 0804bfd8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804bfda */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804bfdc */ STRH R0, [R1] \n\
 \n\
branch_0804bfde: \n\
/* 0804bfde */ LSLS R0, R7, 0x8 \n\
/* 0804bfe0 */ LDR R1, [R4, 0xC] \n\
/* 0804bfe2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804bfe4 */ STR R1, [R4, 0xC] \n\
/* 0804bfe6 */ LDR R0, [R4, 0x18] \n\
/* 0804bfe8 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0804bfea */ STR R0, [R4, 0x18] \n\
 \n\
branch_0804bfec: \n\
/* 0804bfec */ LDR R0, [R5, 0x10] \n\
/* 0804bfee */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804bff0 */ BCC branch_0804bf08 \n\
/* 0804bff2 */ LDR R0, [R4, 0xC] \n\
/* 0804bff4 */ LDR R1, [R5, 0x10] \n\
/* 0804bff6 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804bff8 */ STR R0, [R4, 0xC] \n\
/* 0804bffa */ LDR R2, [SP] \n\
/* 0804bffc */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804bffe */ BEQ branch_0804c024 \n\
/* 0804c000 */ LDR R0, [R5, 0x4] \n\
/* 0804c002 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804c004 */ LSLS R1, R3, 0x5 \n\
/* 0804c006 */ LDR R0, [R0, 0x18] \n\
/* 0804c008 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804c00a */ LDRB R0, [R0, 0x3] \n\
/* 0804c00c */ LSLS R0, R0, 0x19 \n\
/* 0804c00e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c010 */ BGE branch_0804c024 \n\
/* 0804c012 */ LDR R0, =D_03005b3c \n\
/* 0804c014 */ LDRB R0, [R0] \n\
/* 0804c016 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804c018 */ BNE branch_0804c024 \n\
/* 0804c01a */ BL func_08049be4 \n\
/* 0804c01e */ LDR R0, =D_03005b30 \n\
/* 0804c020 */ BL func_0804ae54 \n\
 \n\
branch_0804c024: \n\
/* 0804c024 */ ADD SP, 0x4 \n\
/* 0804c026 */ POP {R3-R5} \n\
/* 0804c028 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804c02a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804c02c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804c02e */ POP {R4-R7} \n\
/* 0804c030 */ POP {R0} \n\
/* 0804c032 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

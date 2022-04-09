asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002a6c \n\
/* 08002a6c */ PUSH {R4-R7, LR} \n\
/* 08002a6e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08002a70 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08002a72 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 08002a74 */ LDR R0, [R4] \n\
/* 08002a76 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002a78 */ BEQ branch_08002afe \n\
/* 08002a7a */ LDR R1, [R4, 0x8] \n\
/* 08002a7c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08002a7e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08002a80 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08002a82 */ BNE branch_08002a96 \n\
/* 08002a84 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
 \n\
branch_08002a86: \n\
/* 08002a86 */ LDR R1, [R4] \n\
/* 08002a88 */ LDR R0, [R4, 0x4] \n\
/* 08002a8a */ BL _call_via_r1 \n\
/* 08002a8e */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 08002a90 */ LDR R0, [R4, 0x8] \n\
/* 08002a92 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08002a94 */ BEQ branch_08002a86 \n\
 \n\
branch_08002a96: \n\
/* 08002a96 */ LDRB R0, [R5] \n\
/* 08002a98 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08002a9a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08002a9c */ STRB R0, [R5] \n\
/* 08002a9e */ STR R7, [R5, 0x4] \n\
/* 08002aa0 */ STR R4, [R5, 0x8] \n\
/* 08002aa2 */ LDR R0, [R4, 0x4] \n\
/* 08002aa4 */ BL func_08002a54 \n\
/* 08002aa8 */ STR R0, [R5, 0x10] \n\
/* 08002aaa */ LDR R1, [R4] \n\
/* 08002aac */ STR R1, [R5, 0xC] \n\
/* 08002aae */ LDR R2, [R4, 0x8] \n\
/* 08002ab0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08002ab2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08002ab4 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08002ab6 */ BEQ branch_08002ac4 \n\
/* 08002ab8 */ LDRB R1, [R5] \n\
/* 08002aba */ SUBS R0, 0x6 @ Subtract 0x6 from R0 \n\
/* 08002abc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002abe */ STRB R0, [R5] \n\
/* 08002ac0 */ STR R2, [R5, 0x14] \n\
/* 08002ac2 */ B branch_08002b08 \n\
 \n\
branch_08002ac4: \n\
/* 08002ac4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08002ac6 */ BL func_0800869c \n\
/* 08002aca */ STR R0, [R5, 0xC] \n\
/* 08002acc */ LDRB R1, [R5] \n\
/* 08002ace */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 08002ad0 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 08002ad2 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08002ad4 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 08002ad6 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08002ad8 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 08002ada */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08002adc */ STR R1, [R5, 0x14] \n\
/* 08002ade */ SUBS R1, 0xA @ Subtract 0xA from R1 \n\
/* 08002ae0 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 08002ae2 */ STRB R2, [R5] \n\
/* 08002ae4 */ LDRB R0, [R0, 0xC] \n\
/* 08002ae6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002ae8 */ BEQ branch_08002b08 \n\
/* 08002aea */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08002aec */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08002aee */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08002af0 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08002af2 */ STRB R0, [R5] \n\
/* 08002af4 */ LDRH R1, [R5] \n\
/* 08002af6 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08002af8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002afa */ STRH R0, [R5] \n\
/* 08002afc */ B branch_08002b08 \n\
 \n\
branch_08002afe: \n\
/* 08002afe */ LDRB R1, [R5] \n\
/* 08002b00 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08002b02 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08002b04 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002b06 */ STRB R0, [R5] \n\
 \n\
branch_08002b08: \n\
/* 08002b08 */ POP {R4-R7} \n\
/* 08002b0a */ POP {R0} \n\
/* 08002b0c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

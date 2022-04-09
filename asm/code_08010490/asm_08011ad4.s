asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011ad4 \n\
/* 08011ad4 */ PUSH {R4-R7, LR} \n\
/* 08011ad6 */ SUB SP, 0x4 \n\
/* 08011ad8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08011ada */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08011adc */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08011ade */ BL func_08011bec \n\
/* 08011ae2 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08011ae4 */ BCS branch_08011aec \n\
/* 08011ae6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08011ae8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08011aea */ B branch_08011b48 \n\
 \n\
branch_08011aec: \n\
/* 08011aec */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08011aee */ LDRH R0, [R4, 0xC] \n\
/* 08011af0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011af2 */ BEQ branch_08011b06 \n\
/* 08011af4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08011af6 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
 \n\
branch_08011af8: \n\
/* 08011af8 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08011afa */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08011afc */ CMP R5, 0x9 @ Compare R5 and 0x9 \n\
/* 08011afe */ BHI branch_08011b44 \n\
/* 08011b00 */ LDRH R0, [R1] \n\
/* 08011b02 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011b04 */ BNE branch_08011af8 \n\
 \n\
branch_08011b06: \n\
/* 08011b06 */ CMP R5, 0x9 @ Compare R5 and 0x9 \n\
/* 08011b08 */ BHI branch_08011b44 \n\
/* 08011b0a */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 08011b0c */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08011b0e */ LDRB R1, [R4] \n\
/* 08011b10 */ STRB R1, [R0] \n\
/* 08011b12 */ LSLS R1, R5, 0x1 \n\
/* 08011b14 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08011b16 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08011b18 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08011b1a */ STRH R6, [R0] \n\
/* 08011b1c */ LDRB R1, [R4] \n\
/* 08011b1e */ LSLS R1, R1, 0x8 \n\
/* 08011b20 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 08011b22 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 08011b24 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08011b26 */ LSLS R0, R0, 0x2 \n\
/* 08011b28 */ STR R0, [SP] \n\
/* 08011b2a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08011b2c */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08011b2e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08011b30 */ BL func_0800186c \n\
/* 08011b34 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08011b36 */ ADDS R0, 0xFF @ Add 0xFF to R0 \n\
/* 08011b38 */ LSRS R0, R0, 0x8 \n\
/* 08011b3a */ LDRB R1, [R4] \n\
/* 08011b3c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08011b3e */ STRB R0, [R4] \n\
/* 08011b40 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08011b42 */ B branch_08011b48 \n\
 \n\
branch_08011b44: \n\
/* 08011b44 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08011b46 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08011b48: \n\
/* 08011b48 */ ADD SP, 0x4 \n\
/* 08011b4a */ POP {R4-R7} \n\
/* 08011b4c */ POP {R1} \n\
/* 08011b4e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

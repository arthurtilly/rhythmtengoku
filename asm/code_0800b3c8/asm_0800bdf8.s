asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bdf8 \n\
/* 0800bdf8 */ PUSH {R4-R6, LR} \n\
/* 0800bdfa */ LSLS R0, R0, 0x10 \n\
/* 0800bdfc */ LSRS R5, R0, 0x10 \n\
/* 0800bdfe */ LDR R6, =D_030053c0 \n\
/* 0800be00 */ STRH R5, [R6, 0xA] \n\
/* 0800be02 */ LDRB R1, [R6] \n\
/* 0800be04 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0800be06 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800be08 */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 0800be0a */ BNE branch_0800be14 \n\
/* 0800be0c */ LDRB R0, [R6, 0x1C] \n\
/* 0800be0e */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800be10 */ LSLS R0, R0, 0x10 \n\
/* 0800be12 */ LSRS R5, R0, 0x10 \n\
 \n\
branch_0800be14: \n\
/* 0800be14 */ LDRH R0, [R6, 0xE] \n\
/* 0800be16 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800be18 */ LSLS R0, R0, 0x8 \n\
/* 0800be1a */ LSRS R5, R0, 0x10 \n\
/* 0800be1c */ STRH R5, [R6, 0xC] \n\
/* 0800be1e */ LSLS R5, R5, 0x8 \n\
/* 0800be20 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800be22 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0800be24 */ BL __divsi3 \n\
/* 0800be28 */ STRH R0, [R6, 0x10] \n\
/* 0800be2a */ LDRH R4, [R6, 0x8] \n\
/* 0800be2c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800be2e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800be30 */ BL __divsi3 \n\
/* 0800be34 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800be36 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800be38 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800be3a */ MOVS R1, 0x96 @ Set R1 to 0x96 \n\
/* 0800be3c */ BL __udivsi3 \n\
/* 0800be40 */ STR R0, [R6, 0x14] \n\
/* 0800be42 */ LDR R0, [R6, 0x4] \n\
/* 0800be44 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800be46 */ BEQ branch_0800be50 \n\
/* 0800be48 */ LSLS R1, R5, 0x10 \n\
/* 0800be4a */ LSRS R1, R1, 0x10 \n\
/* 0800be4c */ BL func_08002894 \n\
 \n\
branch_0800be50: \n\
/* 0800be50 */ LDRB R1, [R6, 0x1] \n\
/* 0800be52 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0800be54 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800be56 */ STRB R0, [R6, 0x1] \n\
/* 0800be58 */ POP {R4-R6} \n\
/* 0800be5a */ POP {R0} \n\
/* 0800be5c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

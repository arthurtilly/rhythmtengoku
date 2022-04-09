asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dd58 \n\
/* 0801dd58 */ PUSH {R4, R5, LR} \n\
/* 0801dd5a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801dd5c */ ADDS R0, 0x29 @ Add 0x29 to R0 \n\
/* 0801dd5e */ LDRB R0, [R0] \n\
/* 0801dd60 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801dd62 */ BNE branch_0801de2a \n\
/* 0801dd64 */ LDRB R0, [R4, 0x4] \n\
/* 0801dd66 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801dd68 */ BEQ branch_0801de16 \n\
/* 0801dd6a */ LDRH R3, [R4, 0x1A] \n\
/* 0801dd6c */ MOVS R5, 0x7 @ Set R5 to 0x7 \n\
/* 0801dd6e */ ANDS R5, R3 @ Set R5 to R5 & R3 \n\
/* 0801dd70 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801dd72 */ BNE branch_0801ddca \n\
/* 0801dd74 */ LDRH R0, [R4, 0x1C] \n\
/* 0801dd76 */ LSLS R0, R0, 0x1 \n\
/* 0801dd78 */ LDR R2, [R4, 0x14] \n\
/* 0801dd7a */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0801dd7c */ LDRH R0, [R4, 0x1E] \n\
/* 0801dd7e */ LSLS R0, R0, 0x1 \n\
/* 0801dd80 */ LDR R1, [R4, 0x10] \n\
/* 0801dd82 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801dd84 */ LDRH R0, [R2] \n\
/* 0801dd86 */ STRH R0, [R1] \n\
/* 0801dd88 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 0801dd8a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801dd8c */ LSLS R0, R0, 0x3 \n\
/* 0801dd8e */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0801dd90 */ LDRH R0, [R2] \n\
/* 0801dd92 */ STRH R0, [R1] \n\
/* 0801dd94 */ LDRH R1, [R4, 0x1C] \n\
/* 0801dd96 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0801dd98 */ STRH R0, [R4, 0x1C] \n\
/* 0801dd9a */ LSLS R0, R0, 0x10 \n\
/* 0801dd9c */ LSRS R0, R0, 0x10 \n\
/* 0801dd9e */ LDRH R2, [R4, 0x18] \n\
/* 0801dda0 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0801dda2 */ BCC branch_0801ddb8 \n\
/* 0801dda4 */ LDRB R0, [R4, 0xD] \n\
/* 0801dda6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801dda8 */ BEQ branch_0801ddae \n\
/* 0801ddaa */ STRH R5, [R4, 0x1C] \n\
/* 0801ddac */ B branch_0801ddb0 \n\
 \n\
branch_0801ddae: \n\
/* 0801ddae */ STRH R1, [R4, 0x1C] \n\
 \n\
branch_0801ddb0: \n\
/* 0801ddb0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801ddb2 */ ADDS R1, 0x31 @ Add 0x31 to R1 \n\
/* 0801ddb4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801ddb6 */ STRB R0, [R1] \n\
 \n\
branch_0801ddb8: \n\
/* 0801ddb8 */ LDRH R0, [R4, 0x1E] \n\
/* 0801ddba */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801ddbc */ STRH R0, [R4, 0x1E] \n\
/* 0801ddbe */ LSLS R0, R0, 0x10 \n\
/* 0801ddc0 */ LSRS R0, R0, 0x10 \n\
/* 0801ddc2 */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 0801ddc4 */ BLS branch_0801ddca \n\
/* 0801ddc6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ddc8 */ STRH R0, [R4, 0x1E] \n\
 \n\
branch_0801ddca: \n\
/* 0801ddca */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 0801ddcc */ LSLS R0, R0, 0x10 \n\
/* 0801ddce */ LSRS R3, R0, 0x10 \n\
/* 0801ddd0 */ LDR R0, =D_03004ac0 \n\
/* 0801ddd2 */ LDRH R1, [R0] \n\
/* 0801ddd4 */ LDRH R0, [R4, 0x32] \n\
/* 0801ddd6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ddd8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ddda */ BEQ branch_0801de08 \n\
/* 0801dddc */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 0801ddde */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0801dde0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801dde2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801dde4 */ BEQ branch_0801de08 \n\
/* 0801dde6 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 0801dde8 */ LSLS R0, R0, 0x10 \n\
/* 0801ddea */ LSRS R3, R0, 0x10 \n\
/* 0801ddec */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0801ddee */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ddf0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ddf2 */ BEQ branch_0801de08 \n\
/* 0801ddf4 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 0801ddf6 */ LSLS R0, R0, 0x10 \n\
/* 0801ddf8 */ LSRS R3, R0, 0x10 \n\
/* 0801ddfa */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0801ddfc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ddfe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801de00 */ BEQ branch_0801de08 \n\
/* 0801de02 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 0801de04 */ LSLS R0, R0, 0x10 \n\
/* 0801de06 */ LSRS R3, R0, 0x10 \n\
 \n\
branch_0801de08: \n\
/* 0801de08 */ STRH R3, [R4, 0x1A] \n\
/* 0801de0a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801de0c */ BL func_0801db1c \n\
/* 0801de10 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801de12 */ BL func_0801db74 \n\
 \n\
branch_0801de16: \n\
/* 0801de16 */ LDRB R0, [R4, 0x4] \n\
/* 0801de18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801de1a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801de1c */ BEQ branch_0801de20 \n\
/* 0801de1e */ LDRH R2, [R4, 0x1A] \n\
 \n\
branch_0801de20: \n\
/* 0801de20 */ LDR R1, =D_03004b10 \n\
/* 0801de22 */ LDRB R0, [R4, 0xC] \n\
/* 0801de24 */ LSLS R0, R0, 0x2 \n\
/* 0801de26 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801de28 */ STRH R2, [R0, 0xC] \n\
 \n\
branch_0801de2a: \n\
/* 0801de2a */ POP {R4, R5} \n\
/* 0801de2c */ POP {R0} \n\
/* 0801de2e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

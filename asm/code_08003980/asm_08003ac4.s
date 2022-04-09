asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003ac4 \n\
/* 08003ac4 */ PUSH {R4-R7, LR} \n\
/* 08003ac6 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08003ac8 */ LSLS R1, R1, 0x10 \n\
/* 08003aca */ LSRS R1, R1, 0x10 \n\
/* 08003acc */ LSLS R2, R2, 0x10 \n\
/* 08003ace */ LSRS R2, R2, 0x10 \n\
/* 08003ad0 */ SUBS R2, R2, R1 @ Set R2 to R2 - R1 \n\
/* 08003ad2 */ LSLS R2, R2, 0x10 \n\
/* 08003ad4 */ LSRS R2, R2, 0x10 \n\
/* 08003ad6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08003ad8 */ CMP R5, R2 @ Check R5 - R2 \n\
/* 08003ada */ BGT branch_08003aea \n\
/* 08003adc */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
 \n\
branch_08003ade: \n\
/* 08003ade */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 08003ae0 */ STRH R0, [R3] \n\
/* 08003ae2 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 08003ae4 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08003ae6 */ CMP R5, R2 @ Check R5 - R2 \n\
/* 08003ae8 */ BLE branch_08003ade \n\
 \n\
branch_08003aea: \n\
/* 08003aea */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08003aec */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08003aee */ BLE branch_08003b1c \n\
/* 08003af0 */ LSLS R0, R5, 0x1 \n\
/* 08003af2 */ ADDS R4, R0, R7 @ Set R4 to R0 + R7 \n\
/* 08003af4 */ LSLS R0, R5, 0x10 \n\
/* 08003af6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08003af8 */ LSLS R1, R1, 0x9 \n\
/* 08003afa */ ADDS R6, R0, R1 @ Set R6 to R0 + R1 \n\
 \n\
branch_08003afc: \n\
/* 08003afc */ LSRS R0, R6, 0x10 \n\
/* 08003afe */ BL func_08001980 \n\
/* 08003b02 */ LSLS R0, R0, 0x10 \n\
/* 08003b04 */ LDRH R2, [R4] \n\
/* 08003b06 */ LSRS R0, R0, 0xF \n\
/* 08003b08 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08003b0a */ LDRH R1, [R0] \n\
/* 08003b0c */ STRH R1, [R4] \n\
/* 08003b0e */ STRH R2, [R0] \n\
/* 08003b10 */ SUBS R4, 0x2 @ Subtract 0x2 from R4 \n\
/* 08003b12 */ LDR R0, =0xffff0000 \n\
/* 08003b14 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 08003b16 */ SUBS R5, 0x1 @ Subtract 0x1 from R5 \n\
/* 08003b18 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08003b1a */ BGT branch_08003afc \n\
 \n\
branch_08003b1c: \n\
/* 08003b1c */ POP {R4-R7} \n\
/* 08003b1e */ POP {R0} \n\
/* 08003b20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

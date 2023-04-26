asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022ca0 \n\
/* 08022ca0 */ PUSH {R4, LR} \n\
/* 08022ca2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08022ca4: \n\
/* 08022ca4 */ LDR R0, =gCurrentEngineData \n\
/* 08022ca6 */ LDR R2, [R0] \n\
/* 08022ca8 */ LSLS R3, R4, 0x1 \n\
/* 08022caa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08022cac */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08022cae */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 08022cb0 */ LDRH R0, [R1] \n\
/* 08022cb2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022cb4 */ BEQ branch_08022cd4 \n\
/* 08022cb6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08022cb8 */ STRH R0, [R1] \n\
/* 08022cba */ LSLS R0, R0, 0x10 \n\
/* 08022cbc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022cbe */ BNE branch_08022cd4 \n\
/* 08022cc0 */ LDR R0, =mannequin_input_buttons \n\
/* 08022cc2 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 08022cc4 */ LDRH R1, [R2, 0x2] \n\
/* 08022cc6 */ LDRH R0, [R0] \n\
/* 08022cc8 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08022cca */ STRH R1, [R2, 0x2] \n\
/* 08022ccc */ LDRH R0, [R2, 0x2] \n\
/* 08022cce */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08022cd0 */ BL gameplay_set_input_buttons \n\
 \n\
branch_08022cd4: \n\
/* 08022cd4 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08022cd6 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08022cd8 */ BLS branch_08022ca4 \n\
/* 08022cda */ POP {R4} \n\
/* 08022cdc */ POP {R0} \n\
/* 08022cde */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

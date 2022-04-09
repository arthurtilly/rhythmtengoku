asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008d88 \n\
/* 08008d88 */ PUSH {R4-R7, LR} \n\
/* 08008d8a */ SUB SP, 0x20 \n\
/* 08008d8c */ LDR R6, [SP, 0x34] \n\
/* 08008d8e */ LDR R4, [SP, 0x38] \n\
/* 08008d90 */ LDR R5, [SP, 0x3C] \n\
/* 08008d92 */ STR R5, [SP, 0x8] \n\
/* 08008d94 */ LDR R7, [SP, 0x40] \n\
/* 08008d96 */ STR R7, [SP, 0xC] \n\
/* 08008d98 */ LDR R5, [SP, 0x44] \n\
/* 08008d9a */ LDR R7, [SP, 0x48] \n\
/* 08008d9c */ STR R7, [SP, 0x14] \n\
/* 08008d9e */ LDR R7, [SP, 0x4C] \n\
/* 08008da0 */ STR R7, [SP, 0x18] \n\
/* 08008da2 */ LSLS R5, R5, 0x10 \n\
/* 08008da4 */ LSRS R5, R5, 0x10 \n\
/* 08008da6 */ LSLS R2, R2, 0x10 \n\
/* 08008da8 */ ASRS R2, R2, 0x10 \n\
/* 08008daa */ STR R6, [SP] \n\
/* 08008dac */ LSLS R4, R4, 0x10 \n\
/* 08008dae */ MOVS R6, 0xFE @ Set R6 to 0xFE \n\
/* 08008db0 */ LSLS R6, R6, 0x18 \n\
/* 08008db2 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 08008db4 */ ASRS R4, R4, 0x10 \n\
/* 08008db6 */ STR R4, [SP, 0x4] \n\
/* 08008db8 */ STR R5, [SP, 0x10] \n\
/* 08008dba */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08008dbc */ STR R4, [SP, 0x1C] \n\
/* 08008dbe */ BL func_08008b00 \n\
/* 08008dc2 */ ADD SP, 0x20 \n\
/* 08008dc4 */ POP {R4-R7} \n\
/* 08008dc6 */ POP {R0} \n\
/* 08008dc8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

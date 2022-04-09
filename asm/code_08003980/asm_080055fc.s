asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080055fc \n\
/* 080055fc */ PUSH {R4-R7, LR} \n\
/* 080055fe */ SUB SP, 0x18 \n\
/* 08005600 */ LDR R5, [SP, 0x2C] \n\
/* 08005602 */ LDR R4, [SP, 0x30] \n\
/* 08005604 */ LDR R7, [SP, 0x34] \n\
/* 08005606 */ LSLS R0, R0, 0x10 \n\
/* 08005608 */ LSRS R0, R0, 0x10 \n\
/* 0800560a */ STR R1, [SP, 0x4] \n\
/* 0800560c */ STR R2, [SP, 0x10] \n\
/* 0800560e */ ADD R1, SP, 0x4 \n\
/* 08005610 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08005612 */ STRH R3, [R1, 0x8] \n\
/* 08005614 */ STR R5, [SP, 0x14] \n\
/* 08005616 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08005618 */ LSLS R4, R4, 0x4 \n\
/* 0800561a */ LDRB R2, [R3, 0x4] \n\
/* 0800561c */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 0800561e */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08005620 */ ORRS R1, R4 @ Set R1 to R1 | R4 \n\
/* 08005622 */ STRB R1, [R3, 0x4] \n\
/* 08005624 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08005626 */ STRB R7, [R1, 0x5] \n\
/* 08005628 */ LDR R1, =D_08936b64 \n\
/* 0800562a */ STR R6, [SP] \n\
/* 0800562c */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0800562e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08005630 */ BL func_08005b20 \n\
/* 08005634 */ ADD SP, 0x18 \n\
/* 08005636 */ POP {R4-R7} \n\
/* 08005638 */ POP {R1} \n\
/* 0800563a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

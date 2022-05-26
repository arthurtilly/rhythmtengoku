asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008090 \n\
/* 08008090 */ PUSH {R4-R7, LR} \n\
/* 08008092 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08008094 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08008096 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08008098 */ PUSH {R5-R7} \n\
/* 0800809a */ SUB SP, 0x14 \n\
/* 0800809c */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0800809e */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 080080a0 */ LSLS R0, R0, 0x10 \n\
/* 080080a2 */ LSRS R7, R0, 0x10 \n\
/* 080080a4 */ ADD R3, SP, 0x4 \n\
/* 080080a6 */ LDRB R1, [R3] \n\
/* 080080a8 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080080aa */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080080ac */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080080ae */ STRB R0, [R3] \n\
/* 080080b0 */ LDR R1, =0x7fff \n\
/* 080080b2 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 080080b4 */ LSLS R1, R1, 0x2 \n\
/* 080080b6 */ LDR R0, [SP, 0x4] \n\
/* 080080b8 */ LDR R2, =0xfffe0003 \n\
/* 080080ba */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 080080bc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080080be */ STR R0, [SP, 0x4] \n\
/* 080080c0 */ LDR R0, =(D_03004b10 + 0x3c) \n\
/* 080080c2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080080c4 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080080c6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080080c8 */ BEQ branch_080080ce \n\
/* 080080ca */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080080cc */ ADD R8, R0 @ Add R0 to R8 \n\
 \n\
branch_080080ce: \n\
/* 080080ce */ LDR R1, =(D_03004b10 + 0x40) \n\
/* 080080d0 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080080d2 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080080d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080080d6 */ BEQ branch_080080dc \n\
/* 080080d8 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080080da */ ADD R9, R1 @ Add R1 to R9 \n\
 \n\
branch_080080dc: \n\
/* 080080dc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080080de */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080080e0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080080e2 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 080080e4 */ STR R0, [SP, 0x8] \n\
/* 080080e6 */ STR R4, [SP, 0xC] \n\
/* 080080e8 */ LDR R0, [SP, 0x40] \n\
/* 080080ea */ STR R0, [SP, 0x10] \n\
/* 080080ec */ LDR R5, =D_08936c14 \n\
/* 080080ee */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080080f0 */ STR R4, [SP] \n\
/* 080080f2 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080080f4 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080080f6 */ ADD R2, SP, 0x4 \n\
/* 080080f8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080080fa */ BL func_08005b20 \n\
/* 080080fe */ STR R6, [SP, 0x8] \n\
/* 08008100 */ LDR R0, [SP, 0x34] \n\
/* 08008102 */ STR R0, [SP, 0xC] \n\
/* 08008104 */ LDR R0, [SP, 0x44] \n\
/* 08008106 */ STR R0, [SP, 0x10] \n\
/* 08008108 */ STR R4, [SP] \n\
/* 0800810a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800810c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800810e */ ADD R2, SP, 0x4 \n\
/* 08008110 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08008112 */ BL func_08005b20 \n\
/* 08008116 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08008118 */ STR R0, [SP, 0x8] \n\
/* 0800811a */ LDR R0, [SP, 0x38] \n\
/* 0800811c */ STR R0, [SP, 0xC] \n\
/* 0800811e */ LDR R0, [SP, 0x48] \n\
/* 08008120 */ STR R0, [SP, 0x10] \n\
/* 08008122 */ STR R4, [SP] \n\
/* 08008124 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08008126 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08008128 */ ADD R2, SP, 0x4 \n\
/* 0800812a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800812c */ BL func_08005b20 \n\
/* 08008130 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08008132 */ STR R1, [SP, 0x8] \n\
/* 08008134 */ LDR R0, [SP, 0x3C] \n\
/* 08008136 */ STR R0, [SP, 0xC] \n\
/* 08008138 */ LDR R0, [SP, 0x4C] \n\
/* 0800813a */ STR R0, [SP, 0x10] \n\
/* 0800813c */ STR R4, [SP] \n\
/* 0800813e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08008140 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08008142 */ ADD R2, SP, 0x4 \n\
/* 08008144 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08008146 */ BL func_08005b20 \n\
/* 0800814a */ LDR R2, =D_03004b10 \n\
/* 0800814c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800814e */ LSLS R0, R0, 0x6 \n\
/* 08008150 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08008152 */ LSLS R0, R1 @ Set R0 to R0 << R1 (logical) \n\
/* 08008154 */ LDRH R1, [R2] \n\
/* 08008156 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08008158 */ STRH R0, [R2] \n\
/* 0800815a */ ADD SP, 0x14 \n\
/* 0800815c */ POP {R3-R5} \n\
/* 0800815e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08008160 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08008162 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08008164 */ POP {R4-R7} \n\
/* 08008166 */ POP {R0} \n\
/* 08008168 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

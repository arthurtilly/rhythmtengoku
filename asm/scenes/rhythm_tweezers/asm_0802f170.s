asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f170 \n\
/* 0802f170 */ PUSH {R4-R7, LR} \n\
/* 0802f172 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802f174 */ PUSH {R7} \n\
/* 0802f176 */ SUB SP, 0x8 \n\
/* 0802f178 */ LDR R0, =D_030055d0 \n\
/* 0802f17a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802f17c */ LDR R5, [R0] \n\
/* 0802f17e */ ADDS R6, R5, 0x4 @ Set R6 to R5 + 0x4 \n\
/* 0802f180 */ ADDS R7, R5, 0x0 @ Set R7 to R5 + 0x0 \n\
/* 0802f182 */ ADDS R7, 0x74 @ Add 0x74 to R7 \n\
/* 0802f184 */ LDR R0, [R1, 0x4] \n\
/* 0802f186 */ LDR R1, =D_088e88f8 \n\
/* 0802f188 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802f18a */ STR R4, [SP] \n\
/* 0802f18c */ STR R4, [SP, 0x4] \n\
/* 0802f18e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f190 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f192 */ BL func_08010064 \n\
/* 0802f196 */ LDR R0, [R5, 0x4] \n\
/* 0802f198 */ LDR R1, =D_088e87a8 \n\
/* 0802f19a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802f19c */ STR R2, [SP] \n\
/* 0802f19e */ STR R4, [SP, 0x4] \n\
/* 0802f1a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f1a2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802f1a4 */ BL func_08010064 \n\
/* 0802f1a8 */ LDR R1, =D_03004b10 \n\
/* 0802f1aa */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802f1ac */ STRH R0, [R1, 0x12] \n\
/* 0802f1ae */ LDRB R0, [R6, 0x5] \n\
/* 0802f1b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802f1b2 */ BEQ branch_0802f1ba \n\
/* 0802f1b4 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802f1b6 */ BL func_0802ea74 \n\
 \n\
branch_0802f1ba: \n\
/* 0802f1ba */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802f1bc */ STRB R0, [R6, 0x5] \n\
/* 0802f1be */ LDR R4, =D_03005380 \n\
/* 0802f1c0 */ LDR R0, [R4] \n\
/* 0802f1c2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f1c4 */ LDRSH R1, [R7, R2] \n\
/* 0802f1c6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802f1c8 */ BL func_0804cebc \n\
/* 0802f1cc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802f1ce */ LDR R1, [R0] \n\
/* 0802f1d0 */ ADDS R1, 0x88 @ Add 0x88 to R1 \n\
/* 0802f1d2 */ LDRH R0, [R1] \n\
/* 0802f1d4 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802f1d6 */ STRH R0, [R1] \n\
/* 0802f1d8 */ LDR R5, [R1] \n\
/* 0802f1da */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802f1dc */ BNE branch_0802f1fa \n\
/* 0802f1de */ LDR R0, [R4] \n\
/* 0802f1e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f1e2 */ LDRSH R1, [R7, R2] \n\
/* 0802f1e4 */ STR R5, [SP] \n\
/* 0802f1e6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f1e8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f1ea */ BL func_0804dae0 \n\
/* 0802f1ee */ LDR R0, [R4] \n\
/* 0802f1f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f1f2 */ LDRSH R1, [R7, R2] \n\
/* 0802f1f4 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802f1f6 */ BL func_0804cebc \n\
 \n\
branch_0802f1fa: \n\
/* 0802f1fa */ ADD SP, 0x8 \n\
/* 0802f1fc */ POP {R3} \n\
/* 0802f1fe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802f200 */ POP {R4-R7} \n\
/* 0802f202 */ POP {R0} \n\
/* 0802f204 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

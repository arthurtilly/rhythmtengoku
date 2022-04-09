asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802a154 \n\
/* 0802a154 */ PUSH {R4-R7, LR} \n\
/* 0802a156 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802a158 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802a15a */ PUSH {R6, R7} \n\
/* 0802a15c */ SUB SP, 0xC \n\
/* 0802a15e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802a160 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0802a162 */ LSLS R4, R4, 0x10 \n\
/* 0802a164 */ LSRS R4, R4, 0x10 \n\
/* 0802a166 */ LSLS R5, R5, 0x10 \n\
/* 0802a168 */ LSRS R5, R5, 0x10 \n\
/* 0802a16a */ LDR R7, =D_030055d0 \n\
/* 0802a16c */ LDR R0, [R7] \n\
/* 0802a16e */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802a170 */ MOVS R6, 0xD6 @ Set R6 to 0xD6 \n\
/* 0802a172 */ LSLS R6, R6, 0x2 \n\
/* 0802a174 */ ADD R6, R9 @ Add R9 to R6 \n\
/* 0802a176 */ LDRB R1, [R6] \n\
/* 0802a178 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802a17a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802a17c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802a17e */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802a180 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802a182 */ STRB R0, [R6] \n\
/* 0802a184 */ LDR R1, =D_03005380 \n\
/* 0802a186 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802a188 */ LDR R0, [R1] \n\
/* 0802a18a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a18c */ LDRSH R1, [R6, R2] \n\
/* 0802a18e */ LDR R2, =D_088c9d58 \n\
/* 0802a190 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802a192 */ STR R3, [SP] \n\
/* 0802a194 */ STR R3, [SP, 0x4] \n\
/* 0802a196 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a198 */ STR R3, [SP, 0x8] \n\
/* 0802a19a */ BL func_0804d8f8 \n\
/* 0802a19e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802a1a0 */ LDR R0, [R1] \n\
/* 0802a1a2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a1a4 */ LDRSH R1, [R6, R2] \n\
/* 0802a1a6 */ LDR R2, =0x000003be \n\
/* 0802a1a8 */ ADD R9, R2 @ Add R2 to R9 \n\
/* 0802a1aa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a1ac */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802a1ae */ BL func_0804db44 \n\
/* 0802a1b2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802a1b4 */ LDR R0, [R1] \n\
/* 0802a1b6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a1b8 */ LDRSH R1, [R6, R2] \n\
/* 0802a1ba */ LSLS R4, R4, 0x10 \n\
/* 0802a1bc */ ASRS R4, R4, 0x10 \n\
/* 0802a1be */ LSLS R5, R5, 0x10 \n\
/* 0802a1c0 */ ASRS R5, R5, 0x10 \n\
/* 0802a1c2 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0802a1c4 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0802a1c6 */ BL func_0804d5d4 \n\
/* 0802a1ca */ LDR R2, [R7] \n\
/* 0802a1cc */ LDRB R0, [R2, 0x1] \n\
/* 0802a1ce */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802a1d0 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802a1d2 */ STRB R0, [R2, 0x1] \n\
/* 0802a1d4 */ LDR R0, =s_f_drumtech_miss_seqData \n\
/* 0802a1d6 */ BL func_08002634 \n\
/* 0802a1da */ LDR R0, [R7] \n\
/* 0802a1dc */ MOVS R1, 0xAA @ Set R1 to 0xAA \n\
/* 0802a1de */ LSLS R1, R1, 0x3 \n\
/* 0802a1e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a1e2 */ LDR R0, [R0] \n\
/* 0802a1e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802a1e6 */ BEQ branch_0802a1ec \n\
/* 0802a1e8 */ BL func_0801d95c \n\
 \n\
branch_0802a1ec: \n\
/* 0802a1ec */ LDR R0, [R7] \n\
/* 0802a1ee */ LDR R2, =0x00000554 \n\
/* 0802a1f0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802a1f2 */ LDRB R0, [R0] \n\
/* 0802a1f4 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802a1f6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a1f8 */ BL func_08017928 \n\
/* 0802a1fc */ ADD SP, 0xC \n\
/* 0802a1fe */ POP {R3, R4} \n\
/* 0802a200 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a202 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802a204 */ POP {R4-R7} \n\
/* 0802a206 */ POP {R0} \n\
/* 0802a208 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

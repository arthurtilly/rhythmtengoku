asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d160 \n\
/* 0801d160 */ PUSH {R4-R6, LR} \n\
/* 0801d162 */ SUB SP, 0xC \n\
/* 0801d164 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801d166 */ LDR R5, =gCurrentSceneData \n\
/* 0801d168 */ LDR R0, [R5] \n\
/* 0801d16a */ LDR R0, [R0, 0x14] \n\
/* 0801d16c */ LDR R1, [R0, 0xC] \n\
/* 0801d16e */ LSLS R0, R4, 0x4 \n\
/* 0801d170 */ ADDS R6, R0, R1 @ Set R6 to R0 + R1 \n\
/* 0801d172 */ LDRB R0, [R6, 0xC] \n\
/* 0801d174 */ BL func_0801d388 \n\
/* 0801d178 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d17a */ BL func_0801d204 \n\
/* 0801d17e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d180 */ BEQ branch_0801d1c4 \n\
/* 0801d182 */ LDR R4, =D_03005380 \n\
/* 0801d184 */ LDR R0, [R4] \n\
/* 0801d186 */ LDR R1, [R5] \n\
/* 0801d188 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0801d18a */ LDRSH R1, [R1, R2] \n\
/* 0801d18c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d18e */ BL func_0804d770 \n\
/* 0801d192 */ LDR R0, [R4] \n\
/* 0801d194 */ LDR R1, [R5] \n\
/* 0801d196 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801d198 */ LDRSH R1, [R1, R2] \n\
/* 0801d19a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801d19c */ BL func_0804d770 \n\
/* 0801d1a0 */ LDR R0, [R4] \n\
/* 0801d1a2 */ LDR R1, [R5] \n\
/* 0801d1a4 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801d1a6 */ LDRSH R1, [R1, R2] \n\
/* 0801d1a8 */ LDR R2, [R6, 0x8] \n\
/* 0801d1aa */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801d1ac */ STR R3, [SP] \n\
/* 0801d1ae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801d1b0 */ STR R3, [SP, 0x4] \n\
/* 0801d1b2 */ STR R3, [SP, 0x8] \n\
/* 0801d1b4 */ BL func_0804d8f8 \n\
/* 0801d1b8 */ B branch_0801d1e2 \n\
\n\
.ltorg \n\
 \n\
branch_0801d1c4: \n\
/* 0801d1c4 */ LDR R4, =D_03005380 \n\
/* 0801d1c6 */ LDR R0, [R4] \n\
/* 0801d1c8 */ LDR R1, [R5] \n\
/* 0801d1ca */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0801d1cc */ LDRSH R1, [R1, R2] \n\
/* 0801d1ce */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801d1d0 */ BL func_0804d770 \n\
/* 0801d1d4 */ LDR R0, [R4] \n\
/* 0801d1d6 */ LDR R1, [R5] \n\
/* 0801d1d8 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801d1da */ LDRSH R1, [R1, R2] \n\
/* 0801d1dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d1de */ BL func_0804d770 \n\
 \n\
branch_0801d1e2: \n\
/* 0801d1e2 */ ADD SP, 0xC \n\
/* 0801d1e4 */ POP {R4-R6} \n\
/* 0801d1e6 */ POP {R0} \n\
/* 0801d1e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

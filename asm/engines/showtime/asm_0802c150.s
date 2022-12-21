asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_common_display_text \n\
/* 0802c150 */ PUSH {R4-R6, LR} \n\
/* 0802c152 */ SUB SP, 0xC \n\
/* 0802c154 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802c156 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802c158 */ BNE branch_0802c178 \n\
/* 0802c15a */ LDR R0, =D_03005380 \n\
/* 0802c15c */ LDR R0, [R0] \n\
/* 0802c15e */ LDR R1, =D_030055d0 \n\
/* 0802c160 */ LDR R1, [R1] \n\
/* 0802c162 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802c164 */ LDRSH R1, [R1, R2] \n\
/* 0802c166 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c168 */ BL func_0804d770 \n\
/* 0802c16c */ B branch_0802c1bc \n\
\n\
.ltorg \n\
 \n\
branch_0802c178: \n\
/* 0802c178 */ LDR R4, =D_030055d0 \n\
/* 0802c17a */ LDR R0, [R4] \n\
/* 0802c17c */ LDR R0, [R0] \n\
/* 0802c17e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802c180 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0802c182 */ BL func_08004b98 \n\
/* 0802c186 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802c188 */ LDR R1, [R4] \n\
/* 0802c18a */ LDR R0, [R1] \n\
/* 0802c18c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802c18e */ LDRSH R1, [R1, R2] \n\
/* 0802c190 */ BL func_08007b04 \n\
/* 0802c194 */ LDR R5, =D_03005380 \n\
/* 0802c196 */ LDR R0, [R5] \n\
/* 0802c198 */ LDR R1, [R4] \n\
/* 0802c19a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802c19c */ LDRSH R1, [R1, R2] \n\
/* 0802c19e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c1a0 */ STR R2, [SP] \n\
/* 0802c1a2 */ STR R2, [SP, 0x4] \n\
/* 0802c1a4 */ STR R2, [SP, 0x8] \n\
/* 0802c1a6 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0802c1a8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802c1aa */ BL func_0804d8f8 \n\
/* 0802c1ae */ LDR R0, [R5] \n\
/* 0802c1b0 */ LDR R1, [R4] \n\
/* 0802c1b2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802c1b4 */ LDRSH R1, [R1, R2] \n\
/* 0802c1b6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802c1b8 */ BL func_0804d770 \n\
 \n\
branch_0802c1bc: \n\
/* 0802c1bc */ ADD SP, 0xC \n\
/* 0802c1be */ POP {R4-R6} \n\
/* 0802c1c0 */ POP {R0} \n\
/* 0802c1c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

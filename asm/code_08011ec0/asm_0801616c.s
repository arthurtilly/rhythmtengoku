asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801616c \n\
/* 0801616c */ PUSH {R4-R6, LR} \n\
/* 0801616e */ SUB SP, 0xC \n\
/* 08016170 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08016172 */ LDRB R0, [R6] \n\
/* 08016174 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016176 */ BEQ branch_08016252 \n\
/* 08016178 */ LDRH R0, [R6, 0x1C] \n\
/* 0801617a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801617c */ BEQ branch_08016184 \n\
/* 0801617e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08016180 */ STRH R0, [R6, 0x1C] \n\
/* 08016182 */ B branch_08016252 \n\
 \n\
branch_08016184: \n\
/* 08016184 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08016186 */ LDRSH R5, [R6, R0] \n\
/* 08016188 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801618a */ BEQ branch_080161ec \n\
/* 0801618c */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0801618e */ LDRSH R0, [R6, R1] \n\
/* 08016190 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08016192 */ LDRSH R1, [R6, R2] \n\
/* 08016194 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08016196 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08016198 */ LSLS R5, R5, 0x1 \n\
/* 0801619a */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0801619c */ BL func_08008f04 \n\
/* 080161a0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080161a2 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 080161a4 */ LDRSH R0, [R6, R1] \n\
/* 080161a6 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 080161a8 */ LDRSH R1, [R6, R2] \n\
/* 080161aa */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 080161ac */ LDRSH R2, [R6, R3] \n\
/* 080161ae */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 080161b0 */ BL func_08008f04 \n\
/* 080161b4 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080161b6 */ LDR R5, =D_03005380 \n\
/* 080161b8 */ LDR R0, [R5] \n\
/* 080161ba */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080161bc */ LDRSH R1, [R6, R2] \n\
/* 080161be */ LSLS R4, R4, 0x10 \n\
/* 080161c0 */ ASRS R4, R4, 0x10 \n\
/* 080161c2 */ LSLS R3, R3, 0x10 \n\
/* 080161c4 */ ASRS R3, R3, 0x10 \n\
/* 080161c6 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080161c8 */ BL func_0804d5d4 \n\
/* 080161cc */ LDR R0, [R5] \n\
/* 080161ce */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080161d0 */ LDRSH R1, [R6, R3] \n\
/* 080161d2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080161d4 */ BL func_0804d770 \n\
/* 080161d8 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080161da */ LDRSH R1, [R6, R0] \n\
/* 080161dc */ MOVS R0, 0xE6 @ Set R0 to 0xE6 \n\
/* 080161de */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 080161e0 */ ASRS R0, R0, 0x8 \n\
/* 080161e2 */ STRH R0, [R6, 0x10] \n\
/* 080161e4 */ B branch_08016252 \n\
\n\
.ltorg \n\
 \n\
branch_080161ec: \n\
/* 080161ec */ LDR R1, [R6, 0x14] \n\
/* 080161ee */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080161f0 */ BEQ branch_080161f8 \n\
/* 080161f2 */ LDR R0, [R6, 0x18] \n\
/* 080161f4 */ BL _call_via_r1 \n\
 \n\
branch_080161f8: \n\
/* 080161f8 */ LDR R4, =D_03005380 \n\
/* 080161fa */ LDR R0, [R4] \n\
/* 080161fc */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080161fe */ LDRSH R1, [R6, R2] \n\
/* 08016200 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016202 */ BL func_0804d8c4 \n\
/* 08016206 */ LDR R0, [R4] \n\
/* 08016208 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801620a */ LDRSH R1, [R6, R3] \n\
/* 0801620c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801620e */ LSLS R2, R2, 0x1 \n\
/* 08016210 */ BL func_0804dcb8 \n\
/* 08016214 */ LDR R0, [R4] \n\
/* 08016216 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08016218 */ LDRSH R1, [R6, R2] \n\
/* 0801621a */ LDR R2, =D_08902a40 \n\
/* 0801621c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801621e */ STR R3, [SP] \n\
/* 08016220 */ STR R5, [SP, 0x4] \n\
/* 08016222 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 08016224 */ STR R3, [SP, 0x8] \n\
/* 08016226 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016228 */ BL func_0804d8f8 \n\
/* 0801622c */ LDR R0, [R4] \n\
/* 0801622e */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08016230 */ LDRSH R1, [R6, R3] \n\
/* 08016232 */ LDRH R2, [R6, 0xC] \n\
/* 08016234 */ SUBS R2, 0xC @ Subtract 0xC from R2 \n\
/* 08016236 */ LSLS R2, R2, 0x10 \n\
/* 08016238 */ ASRS R2, R2, 0x10 \n\
/* 0801623a */ LDRH R3, [R6, 0xE] \n\
/* 0801623c */ SUBS R3, 0xC @ Subtract 0xC from R3 \n\
/* 0801623e */ LSLS R3, R3, 0x10 \n\
/* 08016240 */ ASRS R3, R3, 0x10 \n\
/* 08016242 */ LDR R4, =0x4864 \n\
/* 08016244 */ STR R4, [SP] \n\
/* 08016246 */ BL func_0804d55c \n\
/* 0801624a */ LDR R0, =s_f_appear_game_seqData \n\
/* 0801624c */ BL func_08002634 \n\
/* 08016250 */ STRB R5, [R6] \n\
 \n\
branch_08016252: \n\
/* 08016252 */ ADD SP, 0xC \n\
/* 08016254 */ POP {R4-R6} \n\
/* 08016256 */ POP {R0} \n\
/* 08016258 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

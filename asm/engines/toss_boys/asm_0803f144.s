asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_engine_update \n\
/* 0803f144 */ PUSH {LR} \n\
/* 0803f146 */ BL func_0803eea0 \n\
/* 0803f14a */ BL func_0803ee18 \n\
/* 0803f14e */ BL func_0803ef64 \n\
/* 0803f152 */ BL update_drumtech \n\
/* 0803f156 */ BL func_0803f038 \n\
/* 0803f15a */ LDR R0, =gCurrentEngineData \n\
/* 0803f15c */ LDR R1, [R0] \n\
/* 0803f15e */ LDR R0, =0x396 \n\
/* 0803f160 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0803f162 */ LDRH R0, [R2] \n\
/* 0803f164 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f166 */ BEQ branch_0803f17c \n\
/* 0803f168 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803f16a */ STRH R0, [R2] \n\
/* 0803f16c */ LSLS R0, R0, 0x10 \n\
/* 0803f16e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f170 */ BNE branch_0803f17c \n\
/* 0803f172 */ MOVS R2, 0xE6 @ Set R2 to 0xE6 \n\
/* 0803f174 */ LSLS R2, R2, 0x2 \n\
/* 0803f176 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803f178 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803f17a */ STRB R0, [R1] \n\
 \n\
branch_0803f17c: \n\
/* 0803f17c */ LDR R0, =gCurrentEngineData \n\
/* 0803f17e */ LDR R1, [R0] \n\
/* 0803f180 */ MOVS R2, 0xDF @ Set R2 to 0xDF \n\
/* 0803f182 */ LSLS R2, R2, 0x2 \n\
/* 0803f184 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803f186 */ LDRB R0, [R0] \n\
/* 0803f188 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f18a */ BEQ branch_0803f19c \n\
/* 0803f18c */ ADDS R2, 0x1E @ Add 0x1E to R2 \n\
/* 0803f18e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803f190 */ LDRH R2, [R0] \n\
/* 0803f192 */ B branch_0803f19e \n\
\n\
.ltorg \n\
 \n\
branch_0803f19c: \n\
/* 0803f19c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0803f19e: \n\
/* 0803f19e */ LDR R1, =D_03004b10 \n\
/* 0803f1a0 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803f1a2 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0803f1a4 */ LSLS R0, R0, 0x8 \n\
/* 0803f1a6 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0803f1a8 */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 0803f1aa */ STRH R2, [R1] \n\
/* 0803f1ac */ BL func_0803e960 \n\
/* 0803f1b0 */ POP {R0} \n\
/* 0803f1b2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

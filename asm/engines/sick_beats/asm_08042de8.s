asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042de8 \n\
/* 08042de8 */ PUSH {R4-R6, LR} \n\
/* 08042dea */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08042dec */ LDR R0, =gCurrentEngineData \n\
/* 08042dee */ LDR R0, [R0] \n\
/* 08042df0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08042df2 */ ADDS R6, 0x28 @ Add 0x28 to R6 \n\
/* 08042df4 */ LDR R5, [R4] \n\
/* 08042df6 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08042df8 */ BEQ branch_08042e78 \n\
/* 08042dfa */ BL func_0800c398 \n\
/* 08042dfe */ LDR R1, [R4, 0x8] \n\
/* 08042e00 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08042e02 */ STR R1, [R4, 0x8] \n\
/* 08042e04 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08042e06 */ BGE branch_08042e76 \n\
 \n\
branch_08042e08: \n\
/* 08042e08 */ LDRB R0, [R5] \n\
/* 08042e0a */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 08042e0c */ BEQ branch_08042e32 \n\
/* 08042e0e */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 08042e10 */ BGT branch_08042e1c \n\
/* 08042e12 */ CMP R0, 0xE @ Compare R0 and 0xE \n\
/* 08042e14 */ BEQ branch_08042e2a \n\
/* 08042e16 */ B branch_08042e3e \n\
\n\
.ltorg \n\
 \n\
branch_08042e1c: \n\
/* 08042e1c */ CMP R0, 0xFE @ Compare R0 and 0xFE \n\
/* 08042e1e */ BEQ branch_08042e66 \n\
/* 08042e20 */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 08042e22 */ BNE branch_08042e3e \n\
/* 08042e24 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08042e26 */ STR R0, [R4] \n\
/* 08042e28 */ B branch_08042e78 \n\
 \n\
branch_08042e2a: \n\
/* 08042e2a */ LDRB R0, [R5, 0x1] \n\
/* 08042e2c */ BL gameplay_set_marking_criteria \n\
/* 08042e30 */ B branch_08042e66 \n\
 \n\
branch_08042e32: \n\
/* 08042e32 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 08042e34 */ LDRSH R0, [R4, R1] \n\
/* 08042e36 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 08042e38 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08042e3a */ STRB R1, [R0] \n\
/* 08042e3c */ B branch_08042e66 \n\
 \n\
branch_08042e3e: \n\
/* 08042e3e */ LDRB R1, [R5] \n\
/* 08042e40 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08042e42 */ LSLS R2, R2, 0x1 \n\
/* 08042e44 */ ADDS R0, R6, R2 @ Set R0 to R6 + R2 \n\
/* 08042e46 */ STRB R1, [R0] \n\
/* 08042e48 */ LDRH R0, [R4, 0x6] \n\
/* 08042e4a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08042e4c */ ADDS R1, R6, R2 @ Set R1 to R6 + R2 \n\
/* 08042e4e */ STRB R0, [R1] \n\
/* 08042e50 */ LDRB R1, [R4, 0x4] \n\
/* 08042e52 */ ADDS R2, 0x3 @ Add 0x3 to R2 \n\
/* 08042e54 */ ADDS R0, R6, R2 @ Set R0 to R6 + R2 \n\
/* 08042e56 */ STRB R1, [R0] \n\
/* 08042e58 */ LDRB R0, [R4, 0x5] \n\
/* 08042e5a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08042e5c */ ADDS R1, R6, R2 @ Set R1 to R6 + R2 \n\
/* 08042e5e */ STRB R0, [R1] \n\
/* 08042e60 */ LDRB R0, [R5, 0x1] \n\
/* 08042e62 */ BL gameplay_spawn_cue \n\
 \n\
branch_08042e66: \n\
/* 08042e66 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 08042e68 */ LDRH R1, [R5, 0x2] \n\
/* 08042e6a */ LSLS R1, R1, 0x8 \n\
/* 08042e6c */ LDR R0, [R4, 0x8] \n\
/* 08042e6e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042e70 */ STR R0, [R4, 0x8] \n\
/* 08042e72 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042e74 */ BLT branch_08042e08 \n\
 \n\
branch_08042e76: \n\
/* 08042e76 */ STR R5, [R4] \n\
 \n\
branch_08042e78: \n\
/* 08042e78 */ POP {R4-R6} \n\
/* 08042e7a */ POP {R0} \n\
/* 08042e7c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

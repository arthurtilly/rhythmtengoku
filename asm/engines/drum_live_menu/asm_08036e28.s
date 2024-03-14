asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036e28 \n\
/* 08036e28 */ PUSH {R4, R5, LR} \n\
/* 08036e2a */ LDR R0, =gCurrentEngineData \n\
/* 08036e2c */ LDR R1, [R0] \n\
/* 08036e2e */ LDRB R0, [R1, 0x9] \n\
/* 08036e30 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036e32 */ BEQ branch_08036eac \n\
/* 08036e34 */ LDRB R4, [R1, 0x8] \n\
/* 08036e36 */ LDR R0, =D_03004afc \n\
/* 08036e38 */ LDRH R1, [R0] \n\
/* 08036e3a */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08036e3c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036e3e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036e40 */ BEQ branch_08036e4e \n\
/* 08036e42 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08036e44 */ BEQ branch_08036e4e \n\
/* 08036e46 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08036e48 */ LDR R0, =s_keytoy_count2_seqData \n\
/* 08036e4a */ BL play_sound \n\
 \n\
branch_08036e4e: \n\
/* 08036e4e */ LDR R0, =D_03004afc \n\
/* 08036e50 */ LDRH R1, [R0] \n\
/* 08036e52 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08036e54 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036e56 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036e58 */ BEQ branch_08036e66 \n\
/* 08036e5a */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08036e5c */ BHI branch_08036e66 \n\
/* 08036e5e */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08036e60 */ LDR R0, =s_keytoy_count1_seqData \n\
/* 08036e62 */ BL play_sound \n\
 \n\
branch_08036e66: \n\
/* 08036e66 */ LDR R5, =gCurrentEngineData \n\
/* 08036e68 */ LDR R1, [R5] \n\
/* 08036e6a */ LDRB R0, [R1, 0x8] \n\
/* 08036e6c */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08036e6e */ BEQ branch_08036eac \n\
/* 08036e70 */ STRB R4, [R1, 0x8] \n\
/* 08036e72 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08036e74 */ BL func_08036e10 \n\
/* 08036e78 */ LDR R1, [R5] \n\
/* 08036e7a */ LSLS R0, R4, 0x10 \n\
/* 08036e7c */ STR R0, [R1, 0x10] \n\
/* 08036e7e */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 08036e80 */ STRH R0, [R1, 0xA] \n\
/* 08036e82 */ LDR R4, =gSpriteHandler \n\
/* 08036e84 */ LDR R0, [R4] \n\
/* 08036e86 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08036e88 */ LDRSH R1, [R1, R2] \n\
/* 08036e8a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036e8c */ BL sprite_set_visible \n\
/* 08036e90 */ LDR R0, [R4] \n\
/* 08036e92 */ LDR R1, [R5] \n\
/* 08036e94 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08036e96 */ LDRSH R1, [R1, R2] \n\
/* 08036e98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036e9a */ BL sprite_set_visible \n\
/* 08036e9e */ LDR R0, [R4] \n\
/* 08036ea0 */ LDR R1, [R5] \n\
/* 08036ea2 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08036ea4 */ LDRSH R1, [R1, R2] \n\
/* 08036ea6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036ea8 */ BL sprite_set_visible \n\
 \n\
branch_08036eac: \n\
/* 08036eac */ POP {R4, R5} \n\
/* 08036eae */ POP {R0} \n\
/* 08036eb0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

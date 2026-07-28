asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803fa64 \n\
/* 0803fa64 */ PUSH {R4, R5, LR} \n\
/* 0803fa66 */ SUB SP, 0xC \n\
/* 0803fa68 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803fa6a */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803fa6c */ LDR R1, =gCurrentEngineData \n\
/* 0803fa6e */ LDR R0, [R1] \n\
/* 0803fa70 */ LDR R3, =0x35d \n\
/* 0803fa72 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803fa74 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803fa76 */ STRB R2, [R0] \n\
/* 0803fa78 */ LDR R1, [R1] \n\
/* 0803fa7a */ ADDS R3, 0x1F @ Add 0x1F to R3 \n\
/* 0803fa7c */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803fa7e */ LDRB R0, [R0] \n\
/* 0803fa80 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fa82 */ BEQ branch_0803fa98 \n\
/* 0803fa84 */ ADDS R3, 0x1A @ Add 0x1A to R3 \n\
/* 0803fa86 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803fa88 */ LDRH R0, [R0] \n\
/* 0803fa8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fa8c */ BNE branch_0803fa98 \n\
/* 0803fa8e */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 0803fa90 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803fa92 */ LDRB R0, [R0] \n\
/* 0803fa94 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fa96 */ BEQ branch_0803fa9a \n\
 \n\
branch_0803fa98: \n\
/* 0803fa98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0803fa9a: \n\
/* 0803fa9a */ LDR R1, =toss_boys_ready_anim_ids \n\
/* 0803fa9c */ LSLS R0, R2, 0x1 \n\
/* 0803fa9e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803faa0 */ ADDS R5, R4, R0 @ Set R5 to R4 + R0 \n\
/* 0803faa2 */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 0803faa4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803faa6 */ LDRSB R0, [R1, R0] \n\
/* 0803faa8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803faaa */ BLT branch_0803fae2 \n\
/* 0803faac */ BL toss_boys_get_anim \n\
/* 0803fab0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803fab2 */ LDR R0, =gSpriteHandler \n\
/* 0803fab4 */ LDR R0, [R0] \n\
/* 0803fab6 */ LDR R1, =gCurrentEngineData \n\
/* 0803fab8 */ LDR R1, [R1] \n\
/* 0803faba */ LSLS R3, R4, 0x1 \n\
/* 0803fabc */ MOVS R4, 0xD5 @ Set R4 to 0xD5 \n\
/* 0803fabe */ LSLS R4, R4, 0x2 \n\
/* 0803fac0 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803fac2 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803fac4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fac6 */ LDRSH R1, [R1, R3] \n\
/* 0803fac8 */ LDR R3, =toss_boys_ready_anim_playback \n\
/* 0803faca */ ADDS R3, R5, R3 @ Set R3 to R5 + R3 \n\
/* 0803facc */ LDRB R3, [R3] \n\
/* 0803face */ LSLS R3, R3, 0x18 \n\
/* 0803fad0 */ ASRS R3, R3, 0x18 \n\
/* 0803fad2 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0803fad4 */ STR R4, [SP] \n\
/* 0803fad6 */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 0803fad8 */ STR R4, [SP, 0x4] \n\
/* 0803fada */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803fadc */ STR R4, [SP, 0x8] \n\
/* 0803fade */ BL sprite_set_anim \n\
 \n\
branch_0803fae2: \n\
/* 0803fae2 */ ADD SP, 0xC \n\
/* 0803fae4 */ POP {R4, R5} \n\
/* 0803fae6 */ POP {R0} \n\
/* 0803fae8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

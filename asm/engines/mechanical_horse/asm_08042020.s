asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042020 \n\
/* 08042020 */ PUSH {R4-R6, LR} \n\
/* 08042022 */ SUB SP, 0xC \n\
/* 08042024 */ LDR R5, =gCurrentEngineData \n\
/* 08042026 */ LDR R0, [R5] \n\
/* 08042028 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804202a */ STRB R4, [R0, 0x6] \n\
/* 0804202c */ LDR R0, [R5] \n\
/* 0804202e */ STRB R4, [R0, 0x7] \n\
/* 08042030 */ LDR R6, =gSpriteHandler \n\
/* 08042032 */ LDR R0, [R6] \n\
/* 08042034 */ LDR R1, [R5] \n\
/* 08042036 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08042038 */ LDRSH R1, [R1, R2] \n\
/* 0804203a */ LDR R2, =anim_horse_still \n\
/* 0804203c */ STR R4, [SP] \n\
/* 0804203e */ STR R4, [SP, 0x4] \n\
/* 08042040 */ STR R4, [SP, 0x8] \n\
/* 08042042 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08042044 */ BL sprite_set_anim \n\
/* 08042048 */ LDR R0, [R6] \n\
/* 0804204a */ LDR R1, [R5] \n\
/* 0804204c */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 0804204e */ LDRSH R1, [R1, R2] \n\
/* 08042050 */ LDR R2, =anim_horse_walk_jockey \n\
/* 08042052 */ STR R4, [SP] \n\
/* 08042054 */ STR R4, [SP, 0x4] \n\
/* 08042056 */ STR R4, [SP, 0x8] \n\
/* 08042058 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804205a */ BL sprite_set_anim \n\
/* 0804205e */ LDR R0, [R5] \n\
/* 08042060 */ LDR R1, =0x2ea \n\
/* 08042062 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042064 */ STRB R4, [R0] \n\
/* 08042066 */ LDR R2, [R5] \n\
/* 08042068 */ LDR R1, [R2, 0x14] \n\
/* 0804206a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804206c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804206e */ BGE branch_08042072 \n\
/* 08042070 */ ADDS R0, R1, 0x7 @ Set R0 to R1 + 0x7 \n\
 \n\
branch_08042072: \n\
/* 08042072 */ ASRS R0, R0, 0x3 \n\
/* 08042074 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 08042076 */ STR R0, [R2, 0x14] \n\
/* 08042078 */ LDR R1, =0x2ee \n\
/* 0804207a */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0804207c */ LDRH R0, [R0] \n\
/* 0804207e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042080 */ BEQ branch_0804209a \n\
/* 08042082 */ MOVS R0, 0xBC @ Set R0 to 0xBC \n\
/* 08042084 */ LSLS R0, R0, 0x2 \n\
/* 08042086 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08042088 */ LDRH R0, [R2] \n\
/* 0804208a */ LDR R1, =0xffffff00 \n\
/* 0804208c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804208e */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 08042090 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08042092 */ ASRS R0, R0, 0x8 \n\
/* 08042094 */ ADDS R1, 0x24 @ Add 0x24 to R1 \n\
/* 08042096 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042098 */ STRH R0, [R2] \n\
 \n\
branch_0804209a: \n\
/* 0804209a */ ADD SP, 0xC \n\
/* 0804209c */ POP {R4-R6} \n\
/* 0804209e */ POP {R0} \n\
/* 080420a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

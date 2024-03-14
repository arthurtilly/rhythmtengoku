asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08041f80 \n\
/* 08041f80 */ PUSH {R4-R6, LR} \n\
/* 08041f82 */ SUB SP, 0xC \n\
/* 08041f84 */ LDR R5, =gCurrentEngineData \n\
/* 08041f86 */ LDR R0, [R5] \n\
/* 08041f88 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08041f8a */ STRB R4, [R0, 0x6] \n\
/* 08041f8c */ LDR R0, [R5] \n\
/* 08041f8e */ STRB R4, [R0, 0x7] \n\
/* 08041f90 */ LDR R6, =gSpriteHandler \n\
/* 08041f92 */ LDR R0, [R6] \n\
/* 08041f94 */ LDR R1, [R5] \n\
/* 08041f96 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08041f98 */ LDRSH R1, [R1, R2] \n\
/* 08041f9a */ LDR R2, =anim_horse_still \n\
/* 08041f9c */ STR R4, [SP] \n\
/* 08041f9e */ STR R4, [SP, 0x4] \n\
/* 08041fa0 */ STR R4, [SP, 0x8] \n\
/* 08041fa2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08041fa4 */ BL sprite_set_anim \n\
/* 08041fa8 */ LDR R0, [R6] \n\
/* 08041faa */ LDR R1, [R5] \n\
/* 08041fac */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 08041fae */ LDRSH R1, [R1, R2] \n\
/* 08041fb0 */ LDR R2, =anim_horse_walk_jockey \n\
/* 08041fb2 */ STR R4, [SP] \n\
/* 08041fb4 */ STR R4, [SP, 0x4] \n\
/* 08041fb6 */ STR R4, [SP, 0x8] \n\
/* 08041fb8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08041fba */ BL sprite_set_anim \n\
/* 08041fbe */ LDR R0, [R5] \n\
/* 08041fc0 */ LDR R1, =0x2ea \n\
/* 08041fc2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041fc4 */ STRB R4, [R0] \n\
/* 08041fc6 */ LDR R2, [R5] \n\
/* 08041fc8 */ LDR R1, [R2, 0x14] \n\
/* 08041fca */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08041fcc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08041fce */ BGE branch_08041fd2 \n\
/* 08041fd0 */ ADDS R0, R1, 0x7 @ Set R0 to R1 + 0x7 \n\
 \n\
branch_08041fd2: \n\
/* 08041fd2 */ ASRS R0, R0, 0x3 \n\
/* 08041fd4 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 08041fd6 */ STR R0, [R2, 0x14] \n\
/* 08041fd8 */ LDR R1, =0x2ee \n\
/* 08041fda */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08041fdc */ LDRH R0, [R0] \n\
/* 08041fde */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08041fe0 */ BEQ branch_08041ffa \n\
/* 08041fe2 */ MOVS R0, 0xBC @ Set R0 to 0xBC \n\
/* 08041fe4 */ LSLS R0, R0, 0x2 \n\
/* 08041fe6 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08041fe8 */ LDRH R0, [R2] \n\
/* 08041fea */ LDR R1, =0xffffff00 \n\
/* 08041fec */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041fee */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 08041ff0 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08041ff2 */ ASRS R0, R0, 0x8 \n\
/* 08041ff4 */ ADDS R1, 0x24 @ Add 0x24 to R1 \n\
/* 08041ff6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041ff8 */ STRH R0, [R2] \n\
 \n\
branch_08041ffa: \n\
/* 08041ffa */ ADD SP, 0xC \n\
/* 08041ffc */ POP {R4-R6} \n\
/* 08041ffe */ POP {R0} \n\
/* 08042000 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

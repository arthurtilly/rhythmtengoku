asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803baa0 \n\
/* 0803baa0 */ PUSH {R4-R6, LR} \n\
/* 0803baa2 */ SUB SP, 0x14 \n\
/* 0803baa4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803baa6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803baa8 */ STRB R4, [R5, 0x2] \n\
/* 0803baaa */ LDR R6, =gSpriteHandler \n\
/* 0803baac */ LDR R0, [R6] \n\
/* 0803baae */ LDR R1, =anim_rat_dash_particle \n\
/* 0803bab0 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0803bab2 */ STR R2, [SP] \n\
/* 0803bab4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803bab6 */ STR R2, [SP, 0x4] \n\
/* 0803bab8 */ STR R4, [SP, 0x8] \n\
/* 0803baba */ STR R4, [SP, 0xC] \n\
/* 0803babc */ STR R4, [SP, 0x10] \n\
/* 0803babe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bac0 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0803bac2 */ BL sprite_create \n\
/* 0803bac6 */ STRH R0, [R5] \n\
/* 0803bac8 */ STR R4, [R5, 0x4] \n\
/* 0803baca */ LDR R0, [R6] \n\
/* 0803bacc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bace */ LDRSH R1, [R5, R2] \n\
/* 0803bad0 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0803bad2 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0803bad4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bad6 */ BL sprite_set_x_y \n\
/* 0803bada */ LDR R0, [R6] \n\
/* 0803badc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bade */ LDRSH R1, [R5, R2] \n\
/* 0803bae0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bae2 */ BL sprite_set_visible \n\
/* 0803bae6 */ ADD SP, 0x14 \n\
/* 0803bae8 */ POP {R4-R6} \n\
/* 0803baea */ POP {R0} \n\
/* 0803baec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

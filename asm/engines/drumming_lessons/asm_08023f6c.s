asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023f6c \n\
/* 08023f6c */ PUSH {R4-R7, LR} \n\
/* 08023f6e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08023f70 */ PUSH {R7} \n\
/* 08023f72 */ SUB SP, 0xC \n\
/* 08023f74 */ LDR R0, =gCurrentEngineData \n\
/* 08023f76 */ LDR R0, [R0] \n\
/* 08023f78 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08023f7a */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 08023f7c */ LSLS R7, R7, 0x2 \n\
/* 08023f7e */ ADD R7, R8 @ Add R8 to R7 \n\
/* 08023f80 */ BL func_08024bd0 \n\
/* 08023f84 */ LDR R3, =anim_drum_samurai_use_tom \n\
/* 08023f86 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023f88 */ BEQ branch_08023f8c \n\
/* 08023f8a */ LDR R3, =anim_drum_player_use_tom \n\
 \n\
branch_08023f8c: \n\
/* 08023f8c */ LDR R6, =gSpriteHandler \n\
/* 08023f8e */ LDR R0, [R6] \n\
/* 08023f90 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08023f92 */ LDRSH R1, [R7, R2] \n\
/* 08023f94 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08023f96 */ STR R2, [SP] \n\
/* 08023f98 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08023f9a */ STR R2, [SP, 0x4] \n\
/* 08023f9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023f9e */ STR R2, [SP, 0x8] \n\
/* 08023fa0 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08023fa2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023fa4 */ BL sprite_set_anim \n\
/* 08023fa8 */ LDR R4, [R6] \n\
/* 08023faa */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08023fac */ LDRSH R5, [R7, R0] \n\
/* 08023fae */ BL func_08024bd0 \n\
/* 08023fb2 */ BL func_08024bd0 \n\
/* 08023fb6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08023fb8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08023fba */ MOVS R2, 0x7B @ Set R2 to 0x7B \n\
/* 08023fbc */ MOVS R3, 0x6B @ Set R3 to 0x6B \n\
/* 08023fbe */ BL sprite_set_x_y \n\
/* 08023fc2 */ LDR R0, [R6] \n\
/* 08023fc4 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08023fc6 */ LDRSH R1, [R7, R2] \n\
/* 08023fc8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023fca */ BL sprite_set_anim_cel \n\
/* 08023fce */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08023fd0 */ LDRSH R0, [R7, R1] \n\
/* 08023fd2 */ LDR R1, =0x00000379 \n\
/* 08023fd4 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 08023fd6 */ BL func_08023d78 \n\
/* 08023fda */ ADD SP, 0xC \n\
/* 08023fdc */ POP {R3} \n\
/* 08023fde */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08023fe0 */ POP {R4-R7} \n\
/* 08023fe2 */ POP {R0} \n\
/* 08023fe4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

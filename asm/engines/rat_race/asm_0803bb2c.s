asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bb2c \n\
/* 0803bb2c */ PUSH {R4-R7, LR} \n\
/* 0803bb2e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0803bb30 */ PUSH {R7} \n\
/* 0803bb32 */ SUB SP, 0x4 \n\
/* 0803bb34 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803bb36 */ LDR R0, =gCurrentEngineData \n\
/* 0803bb38 */ LDR R0, [R0] \n\
/* 0803bb3a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803bb3c */ ADDS R7, 0x88 @ Add 0x88 to R7 \n\
/* 0803bb3e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803bb40 */ B branch_0803bb54 \n\
\n\
.ltorg \n\
 \n\
branch_0803bb48: \n\
/* 0803bb48 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0803bb4a */ LSLS R0, R0, 0x18 \n\
/* 0803bb4c */ LSRS R1, R0, 0x18 \n\
/* 0803bb4e */ ADDS R7, 0x8 @ Add 0x8 to R7 \n\
/* 0803bb50 */ CMP R1, 0x8 @ Compare R1 and 0x8 \n\
/* 0803bb52 */ BHI branch_0803bbc2 \n\
 \n\
branch_0803bb54: \n\
/* 0803bb54 */ LDRB R0, [R7, 0x2] \n\
/* 0803bb56 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803bb58 */ BNE branch_0803bb48 \n\
/* 0803bb5a */ CMP R1, 0x8 @ Compare R1 and 0x8 \n\
/* 0803bb5c */ BHI branch_0803bbc2 \n\
/* 0803bb5e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803bb60 */ STRB R0, [R7, 0x2] \n\
/* 0803bb62 */ STR R4, [R7, 0x4] \n\
/* 0803bb64 */ LDR R5, =gSpriteHandler \n\
/* 0803bb66 */ LDR R6, [R5] \n\
/* 0803bb68 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803bb6a */ LDRSH R0, [R7, R1] \n\
/* 0803bb6c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803bb6e */ LSLS R4, R4, 0x8 \n\
/* 0803bb70 */ ASRS R4, R4, 0x10 \n\
/* 0803bb72 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 0803bb74 */ BL agb_random \n\
/* 0803bb78 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0803bb7a */ SUBS R3, R3, R0 @ Set R3 to R3 - R0 \n\
/* 0803bb7c */ LSLS R3, R3, 0x10 \n\
/* 0803bb7e */ ASRS R3, R3, 0x10 \n\
/* 0803bb80 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803bb82 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803bb84 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0803bb86 */ BL sprite_set_x_y \n\
/* 0803bb8a */ LDR R0, [R5] \n\
/* 0803bb8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bb8e */ LDRSH R1, [R7, R2] \n\
/* 0803bb90 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803bb92 */ BL sprite_set_visible \n\
/* 0803bb96 */ LDR R0, [R5] \n\
/* 0803bb98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bb9a */ LDRSH R1, [R7, R2] \n\
/* 0803bb9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bb9e */ BL sprite_set_anim_cel \n\
/* 0803bba2 */ LDR R0, [R5] \n\
/* 0803bba4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bba6 */ LDRSH R1, [R7, R2] \n\
/* 0803bba8 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803bbaa */ STR R2, [SP] \n\
/* 0803bbac */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803bbae */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803bbb0 */ BL sprite_set_playback \n\
/* 0803bbb4 */ LDR R0, [R5] \n\
/* 0803bbb6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bbb8 */ LDRSH R1, [R7, R2] \n\
/* 0803bbba */ LDR R2, =func_0803baf8 \n\
/* 0803bbbc */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0803bbbe */ BL sprite_set_callback \n\
 \n\
branch_0803bbc2: \n\
/* 0803bbc2 */ ADD SP, 0x4 \n\
/* 0803bbc4 */ POP {R3} \n\
/* 0803bbc6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803bbc8 */ POP {R4-R7} \n\
/* 0803bbca */ POP {R0} \n\
/* 0803bbcc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080240a4 \n\
/* 080240a4 */ PUSH {R4-R7, LR} \n\
/* 080240a6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080240a8 */ PUSH {R7} \n\
/* 080240aa */ SUB SP, 0xC \n\
/* 080240ac */ LDR R0, =gCurrentEngineData \n\
/* 080240ae */ LDR R0, [R0] \n\
/* 080240b0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080240b2 */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 080240b4 */ LSLS R7, R7, 0x2 \n\
/* 080240b6 */ ADD R7, R8 @ Add R8 to R7 \n\
/* 080240b8 */ BL func_08024bd0 \n\
/* 080240bc */ LDR R3, =anim_drum_samurai_use_splash \n\
/* 080240be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080240c0 */ BEQ branch_080240c4 \n\
/* 080240c2 */ LDR R3, =anim_drum_player_use_splash \n\
 \n\
branch_080240c4: \n\
/* 080240c4 */ LDR R6, =gSpriteHandler \n\
/* 080240c6 */ LDR R0, [R6] \n\
/* 080240c8 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080240ca */ LDRSH R1, [R7, R2] \n\
/* 080240cc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080240ce */ STR R2, [SP] \n\
/* 080240d0 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080240d2 */ STR R2, [SP, 0x4] \n\
/* 080240d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080240d6 */ STR R2, [SP, 0x8] \n\
/* 080240d8 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 080240da */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080240dc */ BL sprite_set_anim \n\
/* 080240e0 */ LDR R4, [R6] \n\
/* 080240e2 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080240e4 */ LDRSH R5, [R7, R0] \n\
/* 080240e6 */ BL func_08024bd0 \n\
/* 080240ea */ BL func_08024bd0 \n\
/* 080240ee */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080240f0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080240f2 */ MOVS R2, 0x6E @ Set R2 to 0x6E \n\
/* 080240f4 */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 080240f6 */ BL sprite_set_x_y \n\
/* 080240fa */ LDR R0, [R6] \n\
/* 080240fc */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080240fe */ LDRSH R1, [R7, R2] \n\
/* 08024100 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024102 */ BL sprite_set_anim_cel \n\
/* 08024106 */ MOVS R1, 0x1C @ Set R1 to 0x1C \n\
/* 08024108 */ LDRSH R0, [R7, R1] \n\
/* 0802410a */ LDR R1, =0x0000037b \n\
/* 0802410c */ ADD R1, R8 @ Add R8 to R1 \n\
/* 0802410e */ BL func_08023d78 \n\
/* 08024112 */ ADD SP, 0xC \n\
/* 08024114 */ POP {R3} \n\
/* 08024116 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08024118 */ POP {R4-R7} \n\
/* 0802411a */ POP {R0} \n\
/* 0802411c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

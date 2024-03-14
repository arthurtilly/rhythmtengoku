asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e1a4 \n\
/* 0803e1a4 */ PUSH {R4, R5, LR} \n\
/* 0803e1a6 */ SUB SP, 0xC \n\
/* 0803e1a8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e1aa */ LDR R5, =gCurrentEngineData \n\
/* 0803e1ac */ LDR R1, [R5] \n\
/* 0803e1ae */ LDRH R0, [R1, 0x1C] \n\
/* 0803e1b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e1b2 */ BNE branch_0803e1f4 \n\
/* 0803e1b4 */ LDRB R4, [R1, 0x1E] \n\
/* 0803e1b6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803e1b8 */ BNE branch_0803e1f4 \n\
/* 0803e1ba */ LDRH R0, [R1, 0x20] \n\
/* 0803e1bc */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0803e1be */ BHI branch_0803e1f4 \n\
/* 0803e1c0 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0803e1c2 */ BL tap_trial_get_anim \n\
/* 0803e1c6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e1c8 */ LDR R0, =gSpriteHandler \n\
/* 0803e1ca */ LDR R0, [R0] \n\
/* 0803e1cc */ LDR R1, [R5] \n\
/* 0803e1ce */ MOVS R3, 0x18 @ Set R3 to 0x18 \n\
/* 0803e1d0 */ LDRSH R1, [R1, R3] \n\
/* 0803e1d2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803e1d4 */ STR R3, [SP] \n\
/* 0803e1d6 */ STR R4, [SP, 0x4] \n\
/* 0803e1d8 */ STR R4, [SP, 0x8] \n\
/* 0803e1da */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e1dc */ BL sprite_set_anim \n\
/* 0803e1e0 */ LDR R4, =D_089e8054 \n\
/* 0803e1e2 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0803e1e4 */ BL agb_random \n\
/* 0803e1e8 */ LSLS R0, R0, 0x10 \n\
/* 0803e1ea */ LSRS R0, R0, 0xE \n\
/* 0803e1ec */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803e1ee */ LDR R0, [R0] \n\
/* 0803e1f0 */ BL func_0803e258 \n\
 \n\
branch_0803e1f4: \n\
/* 0803e1f4 */ ADD SP, 0xC \n\
/* 0803e1f6 */ POP {R4, R5} \n\
/* 0803e1f8 */ POP {R0} \n\
/* 0803e1fa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032070 \n\
/* 08032070 */ PUSH {R4, R5, LR} \n\
/* 08032072 */ SUB SP, 0xC \n\
/* 08032074 */ LSLS R4, R1, 0x10 \n\
/* 08032076 */ LSRS R4, R4, 0x10 \n\
/* 08032078 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803207a */ BL func_0800c604 \n\
/* 0803207e */ LDR R5, =gSpriteHandler \n\
/* 08032080 */ LDR R0, [R5] \n\
/* 08032082 */ LSLS R4, R4, 0x10 \n\
/* 08032084 */ ASRS R4, R4, 0x10 \n\
/* 08032086 */ LDR R2, =anim_samurai_beat_1 \n\
/* 08032088 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803208a */ STR R1, [SP] \n\
/* 0803208c */ STR R1, [SP, 0x4] \n\
/* 0803208e */ STR R1, [SP, 0x8] \n\
/* 08032090 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08032092 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08032094 */ BL sprite_set_anim \n\
/* 08032098 */ LDR R0, [R5] \n\
/* 0803209a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803209c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803209e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080320a0 */ BL sprite_set_callback \n\
/* 080320a4 */ LDR R0, [R5] \n\
/* 080320a6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080320a8 */ LSLS R2, R2, 0x1 \n\
/* 080320aa */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080320ac */ BL sprite_set_anim_speed \n\
/* 080320b0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080320b2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080320b4 */ BL gameplay_set_input_buttons \n\
/* 080320b8 */ ADD SP, 0xC \n\
/* 080320ba */ POP {R4, R5} \n\
/* 080320bc */ POP {R0} \n\
/* 080320be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

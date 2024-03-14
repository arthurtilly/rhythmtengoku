asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038d18 \n\
/* 08038d18 */ PUSH {R4, LR} \n\
/* 08038d1a */ SUB SP, 0xC \n\
/* 08038d1c */ LSLS R4, R1, 0x10 \n\
/* 08038d1e */ LSRS R4, R4, 0x10 \n\
/* 08038d20 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08038d22 */ BL func_0800c604 \n\
/* 08038d26 */ LDR R0, =gSpriteHandler \n\
/* 08038d28 */ LDR R0, [R0] \n\
/* 08038d2a */ LSLS R4, R4, 0x10 \n\
/* 08038d2c */ ASRS R4, R4, 0x10 \n\
/* 08038d2e */ LDR R2, =anim_bunny_hop_water_spout_loop \n\
/* 08038d30 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08038d32 */ STR R1, [SP] \n\
/* 08038d34 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08038d36 */ STR R1, [SP, 0x4] \n\
/* 08038d38 */ STR R1, [SP, 0x8] \n\
/* 08038d3a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08038d3c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038d3e */ BL sprite_set_anim \n\
/* 08038d42 */ ADD SP, 0xC \n\
/* 08038d44 */ POP {R4} \n\
/* 08038d46 */ POP {R0} \n\
/* 08038d48 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

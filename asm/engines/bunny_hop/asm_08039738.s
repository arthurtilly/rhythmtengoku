asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039738 \n\
/* 08039738 */ PUSH {R4, R5, LR} \n\
/* 0803973a */ SUB SP, 0x14 \n\
/* 0803973c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803973e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08039740 */ BL agb_random \n\
/* 08039744 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08039746 */ LSLS R2, R2, 0x18 \n\
/* 08039748 */ ASRS R2, R2, 0x18 \n\
/* 0803974a */ LDR R5, =gSpriteHandler \n\
/* 0803974c */ LDR R0, [R5] \n\
/* 0803974e */ LDR R1, =anim_bunny_hop_splash_particle \n\
/* 08039750 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08039752 */ STR R3, [SP] \n\
/* 08039754 */ LDR R3, =0x4002 \n\
/* 08039756 */ STR R3, [SP, 0x4] \n\
/* 08039758 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803975a */ STR R3, [SP, 0x8] \n\
/* 0803975c */ STR R3, [SP, 0xC] \n\
/* 0803975e */ STR R3, [SP, 0x10] \n\
/* 08039760 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08039762 */ BL sprite_create \n\
/* 08039766 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08039768 */ STRH R0, [R4] \n\
/* 0803976a */ STRB R1, [R4, 0x2] \n\
/* 0803976c */ LDR R0, [R5] \n\
/* 0803976e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039770 */ LDRSH R1, [R4, R2] \n\
/* 08039772 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039774 */ BL sprite_set_visible \n\
/* 08039778 */ ADD SP, 0x14 \n\
/* 0803977a */ POP {R4, R5} \n\
/* 0803977c */ POP {R0} \n\
/* 0803977e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

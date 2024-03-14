asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ca8c \n\
/* 0803ca8c */ PUSH {LR} \n\
/* 0803ca8e */ SUB SP, 0xC \n\
/* 0803ca90 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803ca92 */ BL ninja_get_anim \n\
/* 0803ca96 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803ca98 */ LDR R0, =gSpriteHandler \n\
/* 0803ca9a */ LDR R0, [R0] \n\
/* 0803ca9c */ LDR R1, =gCurrentEngineData \n\
/* 0803ca9e */ LDR R1, [R1] \n\
/* 0803caa0 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 0803caa2 */ LSLS R3, R3, 0x2 \n\
/* 0803caa4 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803caa6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803caa8 */ LDRSH R1, [R1, R3] \n\
/* 0803caaa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803caac */ STR R3, [SP] \n\
/* 0803caae */ STR R3, [SP, 0x4] \n\
/* 0803cab0 */ STR R3, [SP, 0x8] \n\
/* 0803cab2 */ BL sprite_set_anim \n\
/* 0803cab6 */ LDR R0, =s_f_ninja_v_nanu_seqData \n\
/* 0803cab8 */ BL play_sound \n\
/* 0803cabc */ ADD SP, 0xC \n\
/* 0803cabe */ POP {R0} \n\
/* 0803cac0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

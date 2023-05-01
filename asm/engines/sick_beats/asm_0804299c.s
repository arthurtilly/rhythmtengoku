asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804299c \n\
/* 0804299c */ PUSH {R4, LR} \n\
/* 0804299e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080429a0 */ BL func_0800c604 \n\
/* 080429a4 */ LDR R0, =gCurrentEngineData \n\
/* 080429a6 */ LDR R0, [R0] \n\
/* 080429a8 */ LDR R1, =0x26f \n\
/* 080429aa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080429ac */ LDRB R0, [R0] \n\
/* 080429ae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080429b0 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080429b2 */ BL clamp_int32 \n\
/* 080429b6 */ LDR R4, =sick_beats_particle_sfx_pitch \n\
/* 080429b8 */ LSLS R0, R0, 0x10 \n\
/* 080429ba */ LSRS R0, R0, 0x10 \n\
/* 080429bc */ BL agb_random \n\
/* 080429c0 */ LSLS R0, R0, 0x10 \n\
/* 080429c2 */ LSRS R0, R0, 0xF \n\
/* 080429c4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080429c6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080429c8 */ LDRSH R2, [R0, R1] \n\
/* 080429ca */ LDR R0, =s_f_virus_note_land_seqData \n\
/* 080429cc */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080429ce */ BL play_sound_w_pitch_volume \n\
/* 080429d2 */ POP {R4} \n\
/* 080429d4 */ POP {R0} \n\
/* 080429d6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

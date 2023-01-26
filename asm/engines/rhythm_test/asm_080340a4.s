asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080340a4 \n\
/* 080340a4 */ PUSH {LR} \n\
/* 080340a6 */ LDR R0, =s_BD3_seqData \n\
/* 080340a8 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 080340aa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080340ac */ BL play_sound_w_pitch_volume \n\
/* 080340b0 */ POP {R0} \n\
/* 080340b2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

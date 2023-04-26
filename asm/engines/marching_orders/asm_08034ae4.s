asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034ae4 \n\
/* 08034ae4 */ PUSH {LR} \n\
/* 08034ae6 */ LDR R1, =gCurrentEngineData \n\
/* 08034ae8 */ LDR R1, [R1] \n\
/* 08034aea */ LDRB R1, [R1] \n\
/* 08034aec */ LSLS R2, R1, 0x1 \n\
/* 08034aee */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08034af0 */ LSLS R2, R2, 0x5 \n\
/* 08034af2 */ LSLS R0, R0, 0x3 \n\
/* 08034af4 */ LDR R1, =marching_sfx_table \n\
/* 08034af6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08034af8 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08034afa */ LDR R0, [R2] \n\
/* 08034afc */ LDRH R1, [R2, 0x4] \n\
/* 08034afe */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08034b00 */ LDRSH R2, [R2, R3] \n\
/* 08034b02 */ BL play_sound_w_pitch_volume \n\
/* 08034b06 */ POP {R0} \n\
/* 08034b08 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

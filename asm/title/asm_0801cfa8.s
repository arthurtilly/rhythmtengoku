asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cfa8 \n\
/* 0801cfa8 */ PUSH {R4, LR} \n\
/* 0801cfaa */ LDR R0, =D_03004afc \n\
/* 0801cfac */ LDRH R1, [R0] \n\
/* 0801cfae */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0801cfb0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801cfb2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801cfb4 */ BEQ branch_0801d00e \n\
/* 0801cfb6 */ LDR R0, =D_030046a8 \n\
/* 0801cfb8 */ LDR R0, [R0] \n\
/* 0801cfba */ ADDS R0, 0xC0 @ Add 0xC0 to R0 \n\
/* 0801cfbc */ LDRH R0, [R0] \n\
/* 0801cfbe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801cfc0 */ BEQ branch_0801cfd8 \n\
/* 0801cfc2 */ LDR R0, =scene_main_menu \n\
/* 0801cfc4 */ BL func_08000584 \n\
/* 0801cfc8 */ B branch_0801cfde \n\
\n\
.ltorg \n\
 \n\
branch_0801cfd8: \n\
/* 0801cfd8 */ LDR R0, =D_089d3a6c \n\
/* 0801cfda */ BL func_08000584 \n\
 \n\
branch_0801cfde: \n\
/* 0801cfde */ LDR R0, =D_089dcff0 \n\
/* 0801cfe0 */ BL func_0801d968 \n\
/* 0801cfe4 */ LDR R4, =D_030046a4 \n\
/* 0801cfe6 */ LDR R1, [R4] \n\
/* 0801cfe8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801cfea */ STR R0, [R1] \n\
/* 0801cfec */ LDR R0, =s_nyuka_fan_seqData \n\
/* 0801cfee */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0801cff0 */ LSLS R1, R1, 0x1 \n\
/* 0801cff2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801cff4 */ BL play_sound_w_pitch_volume \n\
/* 0801cff8 */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 0801cffa */ BL scene_set_music_volume_env \n\
/* 0801cffe */ LDR R0, =D_030046a8 \n\
/* 0801d000 */ LDR R0, [R0] \n\
/* 0801d002 */ ADDS R0, 0xC0 @ Add 0xC0 to R0 \n\
/* 0801d004 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801d006 */ STRH R1, [R0] \n\
/* 0801d008 */ LDR R1, [R4] \n\
/* 0801d00a */ LDR R0, =0x270f \n\
/* 0801d00c */ STR R0, [R1, 0x4] \n\
 \n\
branch_0801d00e: \n\
/* 0801d00e */ POP {R4} \n\
/* 0801d010 */ POP {R0} \n\
/* 0801d012 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

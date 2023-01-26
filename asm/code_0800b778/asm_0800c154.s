asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start scene_set_music_track_volume_env \n\
/* 0800c154 */ PUSH {LR} \n\
/* 0800c156 */ LSLS R0, R0, 0x10 \n\
/* 0800c158 */ LSRS R0, R0, 0x10 \n\
/* 0800c15a */ LSLS R1, R1, 0x10 \n\
/* 0800c15c */ LSRS R1, R1, 0x10 \n\
/* 0800c15e */ BL scene_set_music_track_volume \n\
/* 0800c162 */ POP {R0} \n\
/* 0800c164 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

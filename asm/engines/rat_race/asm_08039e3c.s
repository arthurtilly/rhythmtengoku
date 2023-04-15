asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_init_gfx1 \n\
/* 08039e3c */ PUSH {LR} \n\
/* 08039e3e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039e40 */ BL func_0800c604 \n\
/* 08039e44 */ BL get_current_mem_id \n\
/* 08039e48 */ LSLS R0, R0, 0x10 \n\
/* 08039e4a */ LSRS R0, R0, 0x10 \n\
/* 08039e4c */ LDR R1, =rat_race_buffered_textures \n\
/* 08039e4e */ BL start_new_texture_loader \n\
/* 08039e52 */ LDR R1, =rat_race_init_gfx2 \n\
/* 08039e54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039e56 */ BL run_func_after_task \n\
/* 08039e5a */ POP {R0} \n\
/* 08039e5c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

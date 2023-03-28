asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start score_results_scene_init_gfx3 \n\
/* 08018e94 */ PUSH {LR} \n\
/* 08018e96 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018e98 */ BL func_0800c604 \n\
/* 08018e9c */ BL get_current_mem_id \n\
/* 08018ea0 */ LSLS R0, R0, 0x10 \n\
/* 08018ea2 */ LSRS R0, R0, 0x10 \n\
/* 08018ea4 */ LDR R1, =score_results_buffered_textures \n\
/* 08018ea6 */ BL start_new_texture_loader \n\
/* 08018eaa */ LDR R1, =score_results_scene_init_gfx4 \n\
/* 08018eac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018eae */ BL run_func_after_task \n\
/* 08018eb2 */ POP {R0} \n\
/* 08018eb4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

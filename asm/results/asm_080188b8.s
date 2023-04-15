asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start results_scene_init_gfx3 \n\
/* 080188b8 */ PUSH {LR} \n\
/* 080188ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080188bc */ BL func_0800c604 \n\
/* 080188c0 */ BL get_current_mem_id \n\
/* 080188c4 */ LSLS R0, R0, 0x10 \n\
/* 080188c6 */ LSRS R0, R0, 0x10 \n\
/* 080188c8 */ LDR R1, =debug_results_buffered_textures \n\
/* 080188ca */ BL start_new_texture_loader \n\
/* 080188ce */ LDR R1, =set_pause_beatscript_scene \n\
/* 080188d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080188d2 */ BL run_func_after_task \n\
/* 080188d6 */ POP {R0} \n\
/* 080188d8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

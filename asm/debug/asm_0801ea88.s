asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ea88 \n\
/* 0801ea88 */ PUSH {LR} \n\
/* 0801ea8a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ea8c */ BL func_0800c604 \n\
/* 0801ea90 */ BL get_current_mem_id \n\
/* 0801ea94 */ LSLS R0, R0, 0x10 \n\
/* 0801ea96 */ LSRS R0, R0, 0x10 \n\
/* 0801ea98 */ LDR R1, =asset_test_buffered_textures \n\
/* 0801ea9a */ BL start_new_texture_loader \n\
/* 0801ea9e */ LDR R1, =set_pause_beatscript_scene \n\
/* 0801eaa0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801eaa2 */ BL run_func_after_task \n\
/* 0801eaa6 */ POP {R0} \n\
/* 0801eaa8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

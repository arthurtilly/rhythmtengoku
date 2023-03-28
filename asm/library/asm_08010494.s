asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010494 \n\
/* 08010494 */ PUSH {LR} \n\
/* 08010496 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010498 */ BL func_0800c604 \n\
/* 0801049c */ BL get_current_mem_id \n\
/* 080104a0 */ LSLS R0, R0, 0x10 \n\
/* 080104a2 */ LSRS R0, R0, 0x10 \n\
/* 080104a4 */ LDR R1, =library_buffered_textures \n\
/* 080104a6 */ BL start_new_texture_loader \n\
/* 080104aa */ LDR R1, =set_pause_beatscript_scene \n\
/* 080104ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080104ae */ BL run_func_after_task \n\
/* 080104b2 */ POP {R0} \n\
/* 080104b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

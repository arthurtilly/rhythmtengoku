asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_init_gfx1 \n\
/* 0803dd58 */ PUSH {LR} \n\
/* 0803dd5a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803dd5c */ BL func_0800c604 \n\
/* 0803dd60 */ BL get_current_mem_id \n\
/* 0803dd64 */ LSLS R0, R0, 0x10 \n\
/* 0803dd66 */ LSRS R0, R0, 0x10 \n\
/* 0803dd68 */ LDR R1, =tap_trial_buffered_textures \n\
/* 0803dd6a */ BL start_new_texture_loader \n\
/* 0803dd6e */ LDR R1, =tap_trial_init_gfx2 \n\
/* 0803dd70 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dd72 */ BL run_func_after_task \n\
/* 0803dd76 */ POP {R0} \n\
/* 0803dd78 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

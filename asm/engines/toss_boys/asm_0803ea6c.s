asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_init_gfx1 \n\
/* 0803ea6c */ PUSH {LR} \n\
/* 0803ea6e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ea70 */ BL func_0800c604 \n\
/* 0803ea74 */ BL get_current_mem_id \n\
/* 0803ea78 */ LSLS R0, R0, 0x10 \n\
/* 0803ea7a */ LSRS R0, R0, 0x10 \n\
/* 0803ea7c */ LDR R1, =toss_boys_buffered_textures \n\
/* 0803ea7e */ BL start_new_texture_loader \n\
/* 0803ea82 */ LDR R1, =toss_boys_init_gfx2 \n\
/* 0803ea84 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ea86 */ BL run_func_after_task \n\
/* 0803ea8a */ POP {R0} \n\
/* 0803ea8c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

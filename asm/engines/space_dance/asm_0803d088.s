asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_init_gfx1 \n\
/* 0803d088 */ PUSH {LR} \n\
/* 0803d08a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d08c */ BL func_0800c604 \n\
/* 0803d090 */ BL get_current_mem_id \n\
/* 0803d094 */ LSLS R0, R0, 0x10 \n\
/* 0803d096 */ LSRS R0, R0, 0x10 \n\
/* 0803d098 */ LDR R1, =space_dance_buffered_textures \n\
/* 0803d09a */ BL start_new_texture_loader \n\
/* 0803d09e */ LDR R1, =space_dance_init_gfx2 \n\
/* 0803d0a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d0a2 */ BL run_func_after_task \n\
/* 0803d0a6 */ POP {R0} \n\
/* 0803d0a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

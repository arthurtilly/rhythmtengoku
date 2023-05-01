asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start quiz_show_init_gfx1 \n\
/* 08037434 */ PUSH {LR} \n\
/* 08037436 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037438 */ BL func_0800c604 \n\
/* 0803743c */ BL get_current_mem_id \n\
/* 08037440 */ LSLS R0, R0, 0x10 \n\
/* 08037442 */ LSRS R0, R0, 0x10 \n\
/* 08037444 */ LDR R1, =quiz_show_buffered_textures \n\
/* 08037446 */ BL start_new_texture_loader \n\
/* 0803744a */ LDR R1, =quiz_show_init_gfx2 \n\
/* 0803744c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803744e */ BL run_func_after_task \n\
/* 08037452 */ POP {R0} \n\
/* 08037454 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

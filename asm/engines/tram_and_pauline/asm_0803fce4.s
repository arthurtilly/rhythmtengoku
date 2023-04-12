asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_init_gfx1 \n\
/* 0803fce4 */ PUSH {LR} \n\
/* 0803fce6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803fce8 */ BL func_0800c604 \n\
/* 0803fcec */ BL get_current_mem_id \n\
/* 0803fcf0 */ LSLS R0, R0, 0x10 \n\
/* 0803fcf2 */ LSRS R0, R0, 0x10 \n\
/* 0803fcf4 */ LDR R1, =tram_pauline_buffered_textures \n\
/* 0803fcf6 */ BL start_new_texture_loader \n\
/* 0803fcfa */ LDR R1, =tram_pauline_init_gfx2 \n\
/* 0803fcfc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fcfe */ BL run_func_after_task \n\
/* 0803fd02 */ POP {R0} \n\
/* 0803fd04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

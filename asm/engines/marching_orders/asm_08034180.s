asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_init_gfx1 \n\
/* 08034180 */ PUSH {LR} \n\
/* 08034182 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08034184 */ BL func_0800c604 \n\
/* 08034188 */ BL get_current_mem_id \n\
/* 0803418c */ LSLS R0, R0, 0x10 \n\
/* 0803418e */ LSRS R0, R0, 0x10 \n\
/* 08034190 */ LDR R1, =marching_buffered_textures \n\
/* 08034192 */ BL start_new_texture_loader \n\
/* 08034196 */ LDR R1, =marching_init_gfx2 \n\
/* 08034198 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803419a */ BL run_func_after_task \n\
/* 0803419e */ POP {R0} \n\
/* 080341a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

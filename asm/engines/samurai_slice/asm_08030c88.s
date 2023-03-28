asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_init_gfx1 \n\
/* 08030c88 */ PUSH {LR} \n\
/* 08030c8a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030c8c */ BL func_0800c604 \n\
/* 08030c90 */ BL get_current_mem_id \n\
/* 08030c94 */ LSLS R0, R0, 0x10 \n\
/* 08030c96 */ LSRS R0, R0, 0x10 \n\
/* 08030c98 */ LDR R1, =samurai_slice_buffered_textures \n\
/* 08030c9a */ BL start_new_texture_loader \n\
/* 08030c9e */ LDR R1, =samurai_slice_init_gfx2 \n\
/* 08030ca0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030ca2 */ BL run_func_after_task \n\
/* 08030ca6 */ POP {R0} \n\
/* 08030ca8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

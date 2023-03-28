asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_init_gfx1 \n\
/* 08037fd4 */ PUSH {LR} \n\
/* 08037fd6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037fd8 */ BL func_0800c604 \n\
/* 08037fdc */ BL get_current_mem_id \n\
/* 08037fe0 */ LSLS R0, R0, 0x10 \n\
/* 08037fe2 */ LSRS R0, R0, 0x10 \n\
/* 08037fe4 */ LDR R1, =bunny_hop_buffered_textures \n\
/* 08037fe6 */ BL start_new_texture_loader \n\
/* 08037fea */ LDR R1, =bunny_hop_init_gfx2 \n\
/* 08037fec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037fee */ BL run_func_after_task \n\
/* 08037ff2 */ POP {R0} \n\
/* 08037ff4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

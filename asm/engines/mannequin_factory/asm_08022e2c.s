asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_init_gfx1 \n\
/* 08022e2c */ PUSH {LR} \n\
/* 08022e2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022e30 */ BL func_0800c604 \n\
/* 08022e34 */ BL get_current_mem_id \n\
/* 08022e38 */ LSLS R0, R0, 0x10 \n\
/* 08022e3a */ LSRS R0, R0, 0x10 \n\
/* 08022e3c */ LDR R1, =mannequin_buffered_textures \n\
/* 08022e3e */ BL start_new_texture_loader \n\
/* 08022e42 */ LDR R1, =mannequin_init_gfx2 \n\
/* 08022e44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022e46 */ BL run_func_after_task \n\
/* 08022e4a */ POP {R0} \n\
/* 08022e4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

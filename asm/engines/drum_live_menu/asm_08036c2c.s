asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_menu_init_gfx1 \n\
/* 08036c2c */ PUSH {LR} \n\
/* 08036c2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036c30 */ BL func_0800c604 \n\
/* 08036c34 */ BL get_current_mem_id \n\
/* 08036c38 */ LSLS R0, R0, 0x10 \n\
/* 08036c3a */ LSRS R0, R0, 0x10 \n\
/* 08036c3c */ LDR R1, =drum_live_menu_buffered_textures \n\
/* 08036c3e */ BL start_new_texture_loader \n\
/* 08036c42 */ LDR R1, =drum_live_menu_init_gfx2 \n\
/* 08036c44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036c46 */ BL run_func_after_task \n\
/* 08036c4a */ POP {R0} \n\
/* 08036c4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

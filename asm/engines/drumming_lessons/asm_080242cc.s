asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_init_gfx1 \n\
/* 080242cc */ PUSH {LR} \n\
/* 080242ce */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080242d0 */ BL func_0800c604 \n\
/* 080242d4 */ BL get_current_mem_id \n\
/* 080242d8 */ LSLS R0, R0, 0x10 \n\
/* 080242da */ LSRS R0, R0, 0x10 \n\
/* 080242dc */ LDR R1, =drum_intro_buffered_textures \n\
/* 080242de */ BL start_new_texture_loader \n\
/* 080242e2 */ LDR R1, =drum_intro_init_gfx2 \n\
/* 080242e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080242e6 */ BL run_func_after_task \n\
/* 080242ea */ POP {R0} \n\
/* 080242ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

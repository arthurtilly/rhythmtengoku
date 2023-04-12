asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_init_gfx1 \n\
/* 0803545c */ PUSH {LR} \n\
/* 0803545e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035460 */ BL func_0800c604 \n\
/* 08035464 */ BL get_current_mem_id \n\
/* 08035468 */ LSLS R0, R0, 0x10 \n\
/* 0803546a */ LSRS R0, R0, 0x10 \n\
/* 0803546c */ LDR R1, =metronome_buffered_textures \n\
/* 0803546e */ BL start_new_texture_loader \n\
/* 08035472 */ LDR R1, =metronome_init_gfx2 \n\
/* 08035474 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035476 */ BL run_func_after_task \n\
/* 0803547a */ POP {R0} \n\
/* 0803547c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

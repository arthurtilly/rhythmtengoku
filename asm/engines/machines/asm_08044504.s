asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_toys_init_gfx1 \n\
/* 08044504 */ PUSH {LR} \n\
/* 08044506 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08044508 */ BL func_0800c604 \n\
/* 0804450c */ BL get_current_mem_id \n\
/* 08044510 */ LSLS R0, R0, 0x10 \n\
/* 08044512 */ LSRS R0, R0, 0x10 \n\
/* 08044514 */ LDR R1, =rhythm_toys_buffered_textures \n\
/* 08044516 */ BL start_new_texture_loader \n\
/* 0804451a */ LDR R1, =rhythm_toys_init_gfx2 \n\
/* 0804451c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804451e */ BL run_func_after_task \n\
/* 08044522 */ POP {R0} \n\
/* 08044524 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mr_upbeat_init_gfx1 \n\
/* 08035228 */ PUSH {LR} \n\
/* 0803522a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803522c */ BL func_0800c604 \n\
/* 08035230 */ BL get_current_mem_id \n\
/* 08035234 */ LSLS R0, R0, 0x10 \n\
/* 08035236 */ LSRS R0, R0, 0x10 \n\
/* 08035238 */ LDR R1, =mr_upbeat_buffered_textures \n\
/* 0803523a */ BL start_new_texture_loader \n\
/* 0803523e */ LDR R1, =mr_upbeat_init_gfx2 \n\
/* 08035240 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035242 */ BL run_func_after_task \n\
/* 08035246 */ POP {R0} \n\
/* 08035248 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

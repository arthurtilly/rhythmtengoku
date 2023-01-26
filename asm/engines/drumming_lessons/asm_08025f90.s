asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_init_gfx1 \n\
/* 08025f90 */ PUSH {LR} \n\
/* 08025f92 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025f94 */ BL func_0800c604 \n\
/* 08025f98 */ BL get_current_mem_id \n\
/* 08025f9c */ LSLS R0, R0, 0x10 \n\
/* 08025f9e */ LSRS R0, R0, 0x10 \n\
/* 08025fa0 */ LDR R1, =drum_live_buffered_textures \n\
/* 08025fa2 */ BL func_080087b4 \n\
/* 08025fa6 */ LDR R1, =drum_live_init_gfx2 \n\
/* 08025fa8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025faa */ BL run_func_after_task \n\
/* 08025fae */ POP {R0} \n\
/* 08025fb0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

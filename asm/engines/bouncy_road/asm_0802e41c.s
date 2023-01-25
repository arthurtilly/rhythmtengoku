asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bouncy_road_init_gfx1 \n\
/* 0802e41c */ PUSH {LR} \n\
/* 0802e41e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802e420 */ BL func_0800c604 \n\
/* 0802e424 */ BL get_current_mem_id \n\
/* 0802e428 */ LSLS R0, R0, 0x10 \n\
/* 0802e42a */ LSRS R0, R0, 0x10 \n\
/* 0802e42c */ LDR R1, =bouncy_road_buffered_textures \n\
/* 0802e42e */ BL func_080087b4 \n\
/* 0802e432 */ LDR R1, =bouncy_road_init_gfx2 \n\
/* 0802e434 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e436 */ BL run_func_after_task \n\
/* 0802e43a */ POP {R0} \n\
/* 0802e43c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

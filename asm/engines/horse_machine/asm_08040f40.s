asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start horse_machine_init_gfx1 \n\
/* 08040f40 */ PUSH {LR} \n\
/* 08040f42 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040f44 */ BL func_0800c604 \n\
/* 08040f48 */ BL get_current_mem_id \n\
/* 08040f4c */ LSLS R0, R0, 0x10 \n\
/* 08040f4e */ LSRS R0, R0, 0x10 \n\
/* 08040f50 */ LDR R1, =horse_machine_buffered_textures \n\
/* 08040f52 */ BL func_080087b4 \n\
/* 08040f56 */ LDR R1, =horse_machine_init_gfx2 \n\
/* 08040f58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040f5a */ BL run_func_after_task \n\
/* 08040f5e */ POP {R0} \n\
/* 08040f60 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

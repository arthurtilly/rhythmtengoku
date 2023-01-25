asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_init_gfx2 \n\
/* 08030c58 */ PUSH {LR} \n\
/* 08030c5a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030c5c */ BL func_0800c604 \n\
/* 08030c60 */ BL get_current_mem_id \n\
/* 08030c64 */ LSLS R0, R0, 0x10 \n\
/* 08030c66 */ LSRS R0, R0, 0x10 \n\
/* 08030c68 */ LDR R1, =samurai_slice_gfx_table \n\
/* 08030c6a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08030c6c */ LSLS R2, R2, 0x6 \n\
/* 08030c6e */ BL func_08002ee0 \n\
/* 08030c72 */ LDR R1, =samurai_slice_init_gfx3 \n\
/* 08030c74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030c76 */ BL run_func_after_task \n\
/* 08030c7a */ POP {R0} \n\
/* 08030c7c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

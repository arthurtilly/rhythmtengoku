asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_test_init_gfx2 \n\
/* 08033c50 */ PUSH {LR} \n\
/* 08033c52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08033c54 */ BL func_0800c604 \n\
/* 08033c58 */ BL get_current_mem_id \n\
/* 08033c5c */ LSLS R0, R0, 0x10 \n\
/* 08033c5e */ LSRS R0, R0, 0x10 \n\
/* 08033c60 */ LDR R1, =rhythm_test_gfx_table \n\
/* 08033c62 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08033c64 */ LSLS R2, R2, 0x6 \n\
/* 08033c66 */ BL func_08002ee0 \n\
/* 08033c6a */ LDR R1, =rhythm_test_init_gfx3 \n\
/* 08033c6c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033c6e */ BL run_func_after_task \n\
/* 08033c72 */ POP {R0} \n\
/* 08033c74 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

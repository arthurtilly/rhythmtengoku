asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_init_gfx2 \n\
/* 08022dfc */ PUSH {LR} \n\
/* 08022dfe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022e00 */ BL func_0800c604 \n\
/* 08022e04 */ BL get_current_mem_id \n\
/* 08022e08 */ LSLS R0, R0, 0x10 \n\
/* 08022e0a */ LSRS R0, R0, 0x10 \n\
/* 08022e0c */ LDR R1, =mannequin_gfx_table \n\
/* 08022e0e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08022e10 */ LSLS R2, R2, 0x6 \n\
/* 08022e12 */ BL func_08002ee0 \n\
/* 08022e16 */ LDR R1, =mannequin_init_gfx3 \n\
/* 08022e18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022e1a */ BL run_func_after_task \n\
/* 08022e1e */ POP {R0} \n\
/* 08022e20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

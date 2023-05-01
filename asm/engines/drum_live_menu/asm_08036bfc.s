asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_menu_init_gfx2 \n\
/* 08036bfc */ PUSH {LR} \n\
/* 08036bfe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036c00 */ BL func_0800c604 \n\
/* 08036c04 */ BL get_current_mem_id \n\
/* 08036c08 */ LSLS R0, R0, 0x10 \n\
/* 08036c0a */ LSRS R0, R0, 0x10 \n\
/* 08036c0c */ LDR R1, =drum_live_menu_gfx_table \n\
/* 08036c0e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08036c10 */ LSLS R2, R2, 0x6 \n\
/* 08036c12 */ BL func_08002ee0 \n\
/* 08036c16 */ LDR R1, =drum_live_menu_init_gfx3 \n\
/* 08036c18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036c1a */ BL run_func_after_task \n\
/* 08036c1e */ POP {R0} \n\
/* 08036c20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

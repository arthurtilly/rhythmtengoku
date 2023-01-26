asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016a58 \n\
/* 08016a58 */ PUSH {LR} \n\
/* 08016a5a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016a5c */ BL func_0800c604 \n\
/* 08016a60 */ BL get_current_mem_id \n\
/* 08016a64 */ LSLS R0, R0, 0x10 \n\
/* 08016a66 */ LSRS R0, R0, 0x10 \n\
/* 08016a68 */ LDR R1, =D_089cfc74 \n\
/* 08016a6a */ BL func_080087b4 \n\
/* 08016a6e */ LDR R1, =pause_beatscript_scene \n\
/* 08016a70 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016a72 */ BL run_func_after_task \n\
/* 08016a76 */ POP {R0} \n\
/* 08016a78 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start sick_beats_init_gfx2 \n\
/* 0804338c */ PUSH {LR} \n\
/* 0804338e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08043390 */ BL func_0800c604 \n\
/* 08043394 */ BL get_current_mem_id \n\
/* 08043398 */ LSLS R0, R0, 0x10 \n\
/* 0804339a */ LSRS R0, R0, 0x10 \n\
/* 0804339c */ LDR R1, =gfx_table_sick_beats \n\
/* 0804339e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080433a0 */ LSLS R2, R2, 0x6 \n\
/* 080433a2 */ BL func_08002ee0 \n\
/* 080433a6 */ LDR R1, =sick_beats_init_gfx3 \n\
/* 080433a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080433aa */ BL run_func_after_task \n\
/* 080433ae */ POP {R0} \n\
/* 080433b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

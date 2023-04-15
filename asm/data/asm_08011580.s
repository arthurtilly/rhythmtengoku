asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011580 \n\
/* 08011580 */ PUSH {LR} \n\
/* 08011582 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011584 */ BL func_0800c604 \n\
/* 08011588 */ BL get_current_mem_id \n\
/* 0801158c */ LSLS R0, R0, 0x10 \n\
/* 0801158e */ LSRS R0, R0, 0x10 \n\
/* 08011590 */ LDR R1, =data_check_gfx_table \n\
/* 08011592 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08011594 */ LSLS R2, R2, 0x6 \n\
/* 08011596 */ BL func_08002ee0 \n\
/* 0801159a */ LDR R1, =func_08011534 \n\
/* 0801159c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801159e */ BL run_func_after_task \n\
/* 080115a2 */ POP {R0} \n\
/* 080115a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

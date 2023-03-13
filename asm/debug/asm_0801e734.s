asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e734 \n\
/* 0801e734 */ PUSH {LR} \n\
/* 0801e736 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e738 */ BL func_0800c604 \n\
/* 0801e73c */ BL get_current_mem_id \n\
/* 0801e740 */ LSLS R0, R0, 0x10 \n\
/* 0801e742 */ LSRS R0, R0, 0x10 \n\
/* 0801e744 */ LDR R1, =flash_mem_test_gfx_table \n\
/* 0801e746 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801e748 */ LSLS R2, R2, 0x6 \n\
/* 0801e74a */ BL func_08002ee0 \n\
/* 0801e74e */ LDR R1, =func_0801e708 \n\
/* 0801e750 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e752 */ BL run_func_after_task \n\
/* 0801e756 */ POP {R0} \n\
/* 0801e758 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

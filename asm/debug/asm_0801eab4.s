asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801eab4 \n\
/* 0801eab4 */ PUSH {LR} \n\
/* 0801eab6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801eab8 */ BL func_0800c604 \n\
/* 0801eabc */ BL get_current_mem_id \n\
/* 0801eac0 */ LSLS R0, R0, 0x10 \n\
/* 0801eac2 */ LSRS R0, R0, 0x10 \n\
/* 0801eac4 */ LDR R1, =D_089de0e8 \n\
/* 0801eac6 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801eac8 */ LSLS R2, R2, 0x6 \n\
/* 0801eaca */ BL func_08002ee0 \n\
/* 0801eace */ LDR R1, =func_0801ea88 \n\
/* 0801ead0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ead2 */ BL run_func_after_task \n\
/* 0801ead6 */ POP {R0} \n\
/* 0801ead8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

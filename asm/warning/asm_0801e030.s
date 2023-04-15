asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e030 \n\
/* 0801e030 */ PUSH {LR} \n\
/* 0801e032 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e034 */ BL func_0800c604 \n\
/* 0801e038 */ BL get_current_mem_id \n\
/* 0801e03c */ LSLS R0, R0, 0x10 \n\
/* 0801e03e */ LSRS R0, R0, 0x10 \n\
/* 0801e040 */ LDR R1, =warning_gfx_table \n\
/* 0801e042 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801e044 */ LSLS R2, R2, 0x6 \n\
/* 0801e046 */ BL func_08002ee0 \n\
/* 0801e04a */ LDR R1, =func_0801dfe8 \n\
/* 0801e04c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e04e */ BL run_func_after_task \n\
/* 0801e052 */ POP {R0} \n\
/* 0801e054 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

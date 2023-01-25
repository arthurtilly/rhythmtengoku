asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ed7c \n\
/* 0801ed7c */ PUSH {LR} \n\
/* 0801ed7e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ed80 */ BL func_0800c604 \n\
/* 0801ed84 */ BL get_current_mem_id \n\
/* 0801ed88 */ LSLS R0, R0, 0x10 \n\
/* 0801ed8a */ LSRS R0, R0, 0x10 \n\
/* 0801ed8c */ LDR R1, =D_089de244 \n\
/* 0801ed8e */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801ed90 */ LSLS R2, R2, 0x6 \n\
/* 0801ed92 */ BL func_08002ee0 \n\
/* 0801ed96 */ LDR R1, =func_0801ed50 \n\
/* 0801ed98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ed9a */ BL run_func_after_task \n\
/* 0801ed9e */ POP {R0} \n\
/* 0801eda0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e764 \n\
/* 0801e764 */ PUSH {LR} \n\
/* 0801e766 */ BL get_current_mem_id \n\
/* 0801e76a */ LSLS R0, R0, 0x10 \n\
/* 0801e76c */ LSRS R0, R0, 0x10 \n\
/* 0801e76e */ LDR R1, =func_0801e734 \n\
/* 0801e770 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e772 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801e774 */ BL schedule_function_call \n\
/* 0801e778 */ POP {R0} \n\
/* 0801e77a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

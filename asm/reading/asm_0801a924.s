asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a924 \n\
/* 0801a924 */ PUSH {LR} \n\
/* 0801a926 */ BL get_current_mem_id \n\
/* 0801a92a */ LSLS R0, R0, 0x10 \n\
/* 0801a92c */ LSRS R0, R0, 0x10 \n\
/* 0801a92e */ LDR R1, =func_0801a8f4 \n\
/* 0801a930 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a932 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801a934 */ BL schedule_function_call \n\
/* 0801a938 */ POP {R0} \n\
/* 0801a93a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

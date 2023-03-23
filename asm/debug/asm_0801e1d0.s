asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e1d0 \n\
/* 0801e1d0 */ PUSH {LR} \n\
/* 0801e1d2 */ BL get_current_mem_id \n\
/* 0801e1d6 */ LSLS R0, R0, 0x10 \n\
/* 0801e1d8 */ LSRS R0, R0, 0x10 \n\
/* 0801e1da */ LDR R1, =func_0801e1a0 \n\
/* 0801e1dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e1de */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801e1e0 */ BL schedule_function_call \n\
/* 0801e1e4 */ BL scene_show_obj_layer \n\
/* 0801e1e8 */ POP {R0} \n\
/* 0801e1ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

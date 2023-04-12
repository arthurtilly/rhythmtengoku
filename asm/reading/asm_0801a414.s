asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a414 \n\
/* 0801a414 */ PUSH {LR} \n\
/* 0801a416 */ SUB SP, 0xC \n\
/* 0801a418 */ BL get_current_mem_id \n\
/* 0801a41c */ LSLS R0, R0, 0x10 \n\
/* 0801a41e */ LSRS R0, R0, 0x10 \n\
/* 0801a420 */ LDR R1, =func_0801a3e4 \n\
/* 0801a422 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a424 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801a426 */ BL schedule_function_call \n\
/* 0801a42a */ BL scene_show_obj_layer \n\
/* 0801a42e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a430 */ STR R0, [SP] \n\
/* 0801a432 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0801a434 */ STR R0, [SP, 0x4] \n\
/* 0801a436 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801a438 */ STR R0, [SP, 0x8] \n\
/* 0801a43a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801a43c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801a43e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a440 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801a442 */ BL scene_set_bg_layer_display \n\
/* 0801a446 */ ADD SP, 0xC \n\
/* 0801a448 */ POP {R0} \n\
/* 0801a44a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

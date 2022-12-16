asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d5f4 \n\
/* 0801d5f4 */ PUSH {LR} \n\
/* 0801d5f6 */ SUB SP, 0xC \n\
/* 0801d5f8 */ BL get_current_mem_id \n\
/* 0801d5fc */ LSLS R0, R0, 0x10 \n\
/* 0801d5fe */ LSRS R0, R0, 0x10 \n\
/* 0801d600 */ LDR R1, =func_0801d5c0 \n\
/* 0801d602 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d604 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801d606 */ BL func_0800856c \n\
/* 0801d60a */ BL scene_show_obj_layer \n\
/* 0801d60e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d610 */ STR R0, [SP] \n\
/* 0801d612 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0801d614 */ STR R0, [SP, 0x4] \n\
/* 0801d616 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801d618 */ STR R0, [SP, 0x8] \n\
/* 0801d61a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801d61c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d61e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801d620 */ BL scene_set_bg_layer_display \n\
/* 0801d624 */ ADD SP, 0xC \n\
/* 0801d626 */ POP {R0} \n\
/* 0801d628 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

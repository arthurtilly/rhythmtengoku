asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c290 \n\
/* 0801c290 */ PUSH {R4, LR} \n\
/* 0801c292 */ SUB SP, 0xC \n\
/* 0801c294 */ BL get_current_mem_id \n\
/* 0801c298 */ LSLS R0, R0, 0x10 \n\
/* 0801c29a */ LSRS R0, R0, 0x10 \n\
/* 0801c29c */ LDR R1, =func_0801c260 \n\
/* 0801c29e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c2a0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801c2a2 */ BL schedule_function_call \n\
/* 0801c2a6 */ BL scene_show_obj_layer \n\
/* 0801c2aa */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801c2ac */ STR R4, [SP] \n\
/* 0801c2ae */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0801c2b0 */ STR R0, [SP, 0x4] \n\
/* 0801c2b2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801c2b4 */ LSLS R0, R0, 0x7 \n\
/* 0801c2b6 */ STR R0, [SP, 0x8] \n\
/* 0801c2b8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c2ba */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801c2bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c2be */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801c2c0 */ BL scene_set_bg_layer_display \n\
/* 0801c2c4 */ STR R4, [SP] \n\
/* 0801c2c6 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0801c2c8 */ STR R0, [SP, 0x4] \n\
/* 0801c2ca */ LDR R0, =0x4001 \n\
/* 0801c2cc */ STR R0, [SP, 0x8] \n\
/* 0801c2ce */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801c2d0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801c2d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c2d4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801c2d6 */ BL scene_set_bg_layer_display \n\
/* 0801c2da */ ADD SP, 0xC \n\
/* 0801c2dc */ POP {R4} \n\
/* 0801c2de */ POP {R0} \n\
/* 0801c2e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

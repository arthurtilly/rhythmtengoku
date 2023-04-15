asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a174 \n\
/* 0801a174 */ PUSH {LR} \n\
/* 0801a176 */ SUB SP, 0xC \n\
/* 0801a178 */ BL get_current_mem_id \n\
/* 0801a17c */ LSLS R0, R0, 0x10 \n\
/* 0801a17e */ LSRS R0, R0, 0x10 \n\
/* 0801a180 */ LDR R1, =func_0801a140 \n\
/* 0801a182 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a184 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801a186 */ BL schedule_function_call \n\
/* 0801a18a */ BL scene_show_obj_layer \n\
/* 0801a18e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a190 */ STR R0, [SP] \n\
/* 0801a192 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0801a194 */ STR R0, [SP, 0x4] \n\
/* 0801a196 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801a198 */ STR R0, [SP, 0x8] \n\
/* 0801a19a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801a19c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a19e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801a1a0 */ BL scene_set_bg_layer_display \n\
/* 0801a1a4 */ ADD SP, 0xC \n\
/* 0801a1a6 */ POP {R0} \n\
/* 0801a1a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

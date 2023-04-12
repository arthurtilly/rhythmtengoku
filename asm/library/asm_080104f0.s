asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080104f0 \n\
/* 080104f0 */ PUSH {LR} \n\
/* 080104f2 */ SUB SP, 0xC \n\
/* 080104f4 */ BL get_current_mem_id \n\
/* 080104f8 */ LSLS R0, R0, 0x10 \n\
/* 080104fa */ LSRS R0, R0, 0x10 \n\
/* 080104fc */ LDR R1, =func_080104c0 \n\
/* 080104fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010500 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08010502 */ BL schedule_function_call \n\
/* 08010506 */ BL scene_show_obj_layer \n\
/* 0801050a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801050c */ STR R0, [SP] \n\
/* 0801050e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08010510 */ STR R0, [SP, 0x4] \n\
/* 08010512 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08010514 */ STR R0, [SP, 0x8] \n\
/* 08010516 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08010518 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801051a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801051c */ BL scene_set_bg_layer_display \n\
/* 08010520 */ ADD SP, 0xC \n\
/* 08010522 */ POP {R0} \n\
/* 08010524 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

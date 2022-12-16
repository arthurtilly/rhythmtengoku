asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016ab4 \n\
/* 08016ab4 */ PUSH {LR} \n\
/* 08016ab6 */ SUB SP, 0xC \n\
/* 08016ab8 */ BL get_current_mem_id \n\
/* 08016abc */ LSLS R0, R0, 0x10 \n\
/* 08016abe */ LSRS R0, R0, 0x10 \n\
/* 08016ac0 */ LDR R1, =func_08016a84 \n\
/* 08016ac2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016ac4 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08016ac6 */ BL func_0800856c \n\
/* 08016aca */ BL scene_show_obj_layer \n\
/* 08016ace */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016ad0 */ STR R0, [SP] \n\
/* 08016ad2 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08016ad4 */ STR R0, [SP, 0x4] \n\
/* 08016ad6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08016ad8 */ STR R0, [SP, 0x8] \n\
/* 08016ada */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016adc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016ade */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016ae0 */ BL scene_set_bg_layer_display \n\
/* 08016ae4 */ ADD SP, 0xC \n\
/* 08016ae6 */ POP {R0} \n\
/* 08016ae8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

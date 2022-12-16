asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016328 \n\
/* 08016328 */ PUSH {LR} \n\
/* 0801632a */ SUB SP, 0xC \n\
/* 0801632c */ BL get_current_mem_id \n\
/* 08016330 */ LSLS R0, R0, 0x10 \n\
/* 08016332 */ LSRS R0, R0, 0x10 \n\
/* 08016334 */ LDR R1, =func_080162f8 \n\
/* 08016336 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016338 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801633a */ BL func_0800856c \n\
/* 0801633e */ BL scene_show_obj_layer \n\
/* 08016342 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016344 */ STR R0, [SP] \n\
/* 08016346 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08016348 */ STR R0, [SP, 0x4] \n\
/* 0801634a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801634c */ STR R0, [SP, 0x8] \n\
/* 0801634e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016350 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016352 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016354 */ BL scene_set_bg_layer_display \n\
/* 08016358 */ ADD SP, 0xC \n\
/* 0801635a */ POP {R0} \n\
/* 0801635c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

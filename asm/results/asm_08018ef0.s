asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018ef0 \n\
/* 08018ef0 */ PUSH {LR} \n\
/* 08018ef2 */ BL get_current_mem_id \n\
/* 08018ef6 */ LSLS R0, R0, 0x10 \n\
/* 08018ef8 */ LSRS R0, R0, 0x10 \n\
/* 08018efa */ LDR R1, =func_08018ec0 \n\
/* 08018efc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018efe */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08018f00 */ BL func_0800856c \n\
/* 08018f04 */ BL scene_show_obj_layer \n\
/* 08018f08 */ POP {R0} \n\
/* 08018f0a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

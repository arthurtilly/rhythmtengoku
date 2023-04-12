asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a8c8 \n\
/* 0801a8c8 */ PUSH {LR} \n\
/* 0801a8ca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a8cc */ BL func_0800c604 \n\
/* 0801a8d0 */ BL get_current_mem_id \n\
/* 0801a8d4 */ LSLS R0, R0, 0x10 \n\
/* 0801a8d6 */ LSRS R0, R0, 0x10 \n\
/* 0801a8d8 */ LDR R1, =D_089d80f8 \n\
/* 0801a8da */ BL start_new_texture_loader \n\
/* 0801a8de */ LDR R1, =set_pause_beatscript_scene \n\
/* 0801a8e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a8e2 */ BL run_func_after_task \n\
/* 0801a8e6 */ POP {R0} \n\
/* 0801a8e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

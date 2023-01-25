asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d594 \n\
/* 0801d594 */ PUSH {LR} \n\
/* 0801d596 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d598 */ BL func_0800c604 \n\
/* 0801d59c */ BL get_current_mem_id \n\
/* 0801d5a0 */ LSLS R0, R0, 0x10 \n\
/* 0801d5a2 */ LSRS R0, R0, 0x10 \n\
/* 0801d5a4 */ LDR R1, =D_089dd79c \n\
/* 0801d5a6 */ BL func_080087b4 \n\
/* 0801d5aa */ LDR R1, =pause_beatscript_scene \n\
/* 0801d5ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d5ae */ BL run_func_after_task \n\
/* 0801d5b2 */ POP {R0} \n\
/* 0801d5b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

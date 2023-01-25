asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e954 \n\
/* 0801e954 */ PUSH {LR} \n\
/* 0801e956 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e958 */ BL func_0800c604 \n\
/* 0801e95c */ BL get_current_mem_id \n\
/* 0801e960 */ LSLS R0, R0, 0x10 \n\
/* 0801e962 */ LSRS R0, R0, 0x10 \n\
/* 0801e964 */ LDR R1, =D_089de088 \n\
/* 0801e966 */ BL func_080087b4 \n\
/* 0801e96a */ LDR R1, =pause_beatscript_scene \n\
/* 0801e96c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e96e */ BL run_func_after_task \n\
/* 0801e972 */ POP {R0} \n\
/* 0801e974 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

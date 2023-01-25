asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e174 \n\
/* 0801e174 */ PUSH {LR} \n\
/* 0801e176 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e178 */ BL func_0800c604 \n\
/* 0801e17c */ BL get_current_mem_id \n\
/* 0801e180 */ LSLS R0, R0, 0x10 \n\
/* 0801e182 */ LSRS R0, R0, 0x10 \n\
/* 0801e184 */ LDR R1, =D_089ddb20 \n\
/* 0801e186 */ BL func_080087b4 \n\
/* 0801e18a */ LDR R1, =pause_beatscript_scene \n\
/* 0801e18c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e18e */ BL run_func_after_task \n\
/* 0801e192 */ POP {R0} \n\
/* 0801e194 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

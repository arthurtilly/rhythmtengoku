asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ed50 \n\
/* 0801ed50 */ PUSH {LR} \n\
/* 0801ed52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ed54 */ BL func_0800c604 \n\
/* 0801ed58 */ BL get_current_mem_id \n\
/* 0801ed5c */ LSLS R0, R0, 0x10 \n\
/* 0801ed5e */ LSRS R0, R0, 0x10 \n\
/* 0801ed60 */ LDR R1, =D_089de250 \n\
/* 0801ed62 */ BL func_080087b4 \n\
/* 0801ed66 */ LDR R1, =pause_beatscript_scene \n\
/* 0801ed68 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ed6a */ BL run_func_after_task \n\
/* 0801ed6e */ POP {R0} \n\
/* 0801ed70 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

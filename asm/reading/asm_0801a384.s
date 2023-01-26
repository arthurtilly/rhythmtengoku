asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a384 \n\
/* 0801a384 */ PUSH {LR} \n\
/* 0801a386 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a388 */ BL func_0800c604 \n\
/* 0801a38c */ BL get_current_mem_id \n\
/* 0801a390 */ LSLS R0, R0, 0x10 \n\
/* 0801a392 */ LSRS R0, R0, 0x10 \n\
/* 0801a394 */ LDR R1, =D_089d7fe4 \n\
/* 0801a396 */ BL func_080087b4 \n\
/* 0801a39a */ LDR R1, =pause_beatscript_scene \n\
/* 0801a39c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a39e */ BL run_func_after_task \n\
/* 0801a3a2 */ POP {R0} \n\
/* 0801a3a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

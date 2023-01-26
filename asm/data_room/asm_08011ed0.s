asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011ed0 \n\
/* 08011ed0 */ PUSH {LR} \n\
/* 08011ed2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011ed4 */ BL func_0800c604 \n\
/* 08011ed8 */ BL get_current_mem_id \n\
/* 08011edc */ LSLS R0, R0, 0x10 \n\
/* 08011ede */ LSRS R0, R0, 0x10 \n\
/* 08011ee0 */ LDR R1, =D_089cdb3c \n\
/* 08011ee2 */ BL func_080087b4 \n\
/* 08011ee6 */ LDR R1, =pause_beatscript_scene \n\
/* 08011ee8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011eea */ BL run_func_after_task \n\
/* 08011eee */ POP {R0} \n\
/* 08011ef0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

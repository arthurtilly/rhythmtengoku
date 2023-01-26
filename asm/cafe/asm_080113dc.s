asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080113dc \n\
/* 080113dc */ PUSH {LR} \n\
/* 080113de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080113e0 */ BL func_0800c604 \n\
/* 080113e4 */ BL get_current_mem_id \n\
/* 080113e8 */ LSLS R0, R0, 0x10 \n\
/* 080113ea */ LSRS R0, R0, 0x10 \n\
/* 080113ec */ LDR R1, =D_089cd4e0 \n\
/* 080113ee */ BL func_080087b4 \n\
/* 080113f2 */ LDR R1, =pause_beatscript_scene \n\
/* 080113f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080113f6 */ BL run_func_after_task \n\
/* 080113fa */ POP {R0} \n\
/* 080113fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start staff_credit_init_gfx1 \n\
/* 080235d8 */ PUSH {LR} \n\
/* 080235da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080235dc */ BL func_0800c604 \n\
/* 080235e0 */ BL get_current_mem_id \n\
/* 080235e4 */ LSLS R0, R0, 0x10 \n\
/* 080235e6 */ LSRS R0, R0, 0x10 \n\
/* 080235e8 */ LDR R1, =staff_credit_buffered_textures \n\
/* 080235ea */ BL func_080087b4 \n\
/* 080235ee */ LDR R1, =staff_credit_init_gfx2 \n\
/* 080235f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080235f2 */ BL task_run_after \n\
/* 080235f6 */ POP {R0} \n\
/* 080235f8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

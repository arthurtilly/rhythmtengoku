asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c234 \n\
/* 0801c234 */ PUSH {LR} \n\
/* 0801c236 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c238 */ BL func_0800c604 \n\
/* 0801c23c */ BL get_current_mem_id \n\
/* 0801c240 */ LSLS R0, R0, 0x10 \n\
/* 0801c242 */ LSRS R0, R0, 0x10 \n\
/* 0801c244 */ LDR R1, =D_089d849c \n\
/* 0801c246 */ BL func_080087b4 \n\
/* 0801c24a */ LDR R1, =func_0801c1ec \n\
/* 0801c24c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c24e */ BL run_func_after_task \n\
/* 0801c252 */ POP {R0} \n\
/* 0801c254 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

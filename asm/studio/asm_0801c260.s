asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c260 \n\
/* 0801c260 */ PUSH {LR} \n\
/* 0801c262 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c264 */ BL func_0800c604 \n\
/* 0801c268 */ BL get_current_mem_id \n\
/* 0801c26c */ LSLS R0, R0, 0x10 \n\
/* 0801c26e */ LSRS R0, R0, 0x10 \n\
/* 0801c270 */ LDR R1, =D_089d8448 \n\
/* 0801c272 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801c274 */ LSLS R2, R2, 0x6 \n\
/* 0801c276 */ BL func_08002ee0 \n\
/* 0801c27a */ LDR R1, =func_0801c234 \n\
/* 0801c27c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c27e */ BL run_func_after_task \n\
/* 0801c282 */ POP {R0} \n\
/* 0801c284 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

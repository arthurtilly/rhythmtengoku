asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080104c0 \n\
/* 080104c0 */ PUSH {LR} \n\
/* 080104c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080104c4 */ BL func_0800c604 \n\
/* 080104c8 */ BL get_current_mem_id \n\
/* 080104cc */ LSLS R0, R0, 0x10 \n\
/* 080104ce */ LSRS R0, R0, 0x10 \n\
/* 080104d0 */ LDR R1, =library_gfx_table \n\
/* 080104d2 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 080104d4 */ LSLS R2, R2, 0x6 \n\
/* 080104d6 */ BL func_08002ee0 \n\
/* 080104da */ LDR R1, =func_08010494 \n\
/* 080104dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080104de */ BL run_func_after_task \n\
/* 080104e2 */ POP {R0} \n\
/* 080104e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

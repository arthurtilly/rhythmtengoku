asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cd90 \n\
/* 0801cd90 */ PUSH {LR} \n\
/* 0801cd92 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801cd94 */ BL func_0800c604 \n\
/* 0801cd98 */ BL get_current_mem_id \n\
/* 0801cd9c */ LSLS R0, R0, 0x10 \n\
/* 0801cd9e */ LSRS R0, R0, 0x10 \n\
/* 0801cda0 */ LDR R1, =D_089dcfa4 \n\
/* 0801cda2 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801cda4 */ LSLS R2, R2, 0x6 \n\
/* 0801cda6 */ BL func_08002ee0 \n\
/* 0801cdaa */ LDR R1, =func_0801cd64 \n\
/* 0801cdac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801cdae */ BL run_func_after_task \n\
/* 0801cdb2 */ POP {R0} \n\
/* 0801cdb4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018ec0 \n\
/* 08018ec0 */ PUSH {LR} \n\
/* 08018ec2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018ec4 */ BL func_0800c604 \n\
/* 08018ec8 */ BL get_current_mem_id \n\
/* 08018ecc */ LSLS R0, R0, 0x10 \n\
/* 08018ece */ LSRS R0, R0, 0x10 \n\
/* 08018ed0 */ LDR R1, =D_089d7804 \n\
/* 08018ed2 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08018ed4 */ LSLS R2, R2, 0x6 \n\
/* 08018ed6 */ BL func_08002ee0 \n\
/* 08018eda */ LDR R1, =func_08018e94 \n\
/* 08018edc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018ede */ BL run_func_after_task \n\
/* 08018ee2 */ POP {R0} \n\
/* 08018ee4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

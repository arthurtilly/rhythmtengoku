asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a8f4 \n\
/* 0801a8f4 */ PUSH {LR} \n\
/* 0801a8f6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a8f8 */ BL func_0800c604 \n\
/* 0801a8fc */ BL get_current_mem_id \n\
/* 0801a900 */ LSLS R0, R0, 0x10 \n\
/* 0801a902 */ LSRS R0, R0, 0x10 \n\
/* 0801a904 */ LDR R1, =D_089d80ec \n\
/* 0801a906 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801a908 */ LSLS R2, R2, 0x6 \n\
/* 0801a90a */ BL func_08002ee0 \n\
/* 0801a90e */ LDR R1, =func_0801a8c8 \n\
/* 0801a910 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a912 */ BL run_func_after_task \n\
/* 0801a916 */ POP {R0} \n\
/* 0801a918 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

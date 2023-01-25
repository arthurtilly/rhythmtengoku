asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080188e4 \n\
/* 080188e4 */ PUSH {LR} \n\
/* 080188e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080188e8 */ BL func_0800c604 \n\
/* 080188ec */ BL get_current_mem_id \n\
/* 080188f0 */ LSLS R0, R0, 0x10 \n\
/* 080188f2 */ LSRS R0, R0, 0x10 \n\
/* 080188f4 */ LDR R1, =D_089d751c \n\
/* 080188f6 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 080188f8 */ LSLS R2, R2, 0x6 \n\
/* 080188fa */ BL func_08002ee0 \n\
/* 080188fe */ LDR R1, =func_080188b8 \n\
/* 08018900 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018902 */ BL run_func_after_task \n\
/* 08018906 */ POP {R0} \n\
/* 08018908 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

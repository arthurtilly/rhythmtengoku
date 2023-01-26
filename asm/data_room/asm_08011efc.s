asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011efc \n\
/* 08011efc */ PUSH {LR} \n\
/* 08011efe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011f00 */ BL func_0800c604 \n\
/* 08011f04 */ BL get_current_mem_id \n\
/* 08011f08 */ LSLS R0, R0, 0x10 \n\
/* 08011f0a */ LSRS R0, R0, 0x10 \n\
/* 08011f0c */ LDR R1, =D_089cdaf4 \n\
/* 08011f0e */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08011f10 */ LSLS R2, R2, 0x6 \n\
/* 08011f12 */ BL func_08002ee0 \n\
/* 08011f16 */ LDR R1, =func_08011ed0 \n\
/* 08011f18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011f1a */ BL run_func_after_task \n\
/* 08011f1e */ POP {R0} \n\
/* 08011f20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

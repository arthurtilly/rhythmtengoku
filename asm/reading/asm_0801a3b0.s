asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a3b0 \n\
/* 0801a3b0 */ PUSH {LR} \n\
/* 0801a3b2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a3b4 */ BL func_0800c604 \n\
/* 0801a3b8 */ BL get_current_mem_id \n\
/* 0801a3bc */ LSLS R0, R0, 0x10 \n\
/* 0801a3be */ LSRS R0, R0, 0x10 \n\
/* 0801a3c0 */ LDR R1, =gCurrentSceneData \n\
/* 0801a3c2 */ LDR R1, [R1] \n\
/* 0801a3c4 */ LDR R1, [R1] \n\
/* 0801a3c6 */ LDR R1, [R1, 0x8] \n\
/* 0801a3c8 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801a3ca */ LSLS R2, R2, 0x6 \n\
/* 0801a3cc */ BL func_08002ee0 \n\
/* 0801a3d0 */ LDR R1, =func_0801a384 \n\
/* 0801a3d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a3d4 */ BL run_func_after_task \n\
/* 0801a3d8 */ POP {R0} \n\
/* 0801a3da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

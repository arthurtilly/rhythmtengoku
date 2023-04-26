asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_init_gfx2 \n\
/* 08034140 */ PUSH {LR} \n\
/* 08034142 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08034144 */ BL func_0800c604 \n\
/* 08034148 */ BL get_current_mem_id \n\
/* 0803414c */ LSLS R0, R0, 0x10 \n\
/* 0803414e */ LSRS R0, R0, 0x10 \n\
/* 08034150 */ LDR R2, =marching_gfx_tables \n\
/* 08034152 */ LDR R1, =gCurrentEngineData \n\
/* 08034154 */ LDR R1, [R1] \n\
/* 08034156 */ LDRB R1, [R1] \n\
/* 08034158 */ LSLS R1, R1, 0x2 \n\
/* 0803415a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803415c */ LDR R1, [R1] \n\
/* 0803415e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08034160 */ LSLS R2, R2, 0x6 \n\
/* 08034162 */ BL func_08002ee0 \n\
/* 08034166 */ LDR R1, =marching_init_gfx3 \n\
/* 08034168 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803416a */ BL run_func_after_task \n\
/* 0803416e */ POP {R0} \n\
/* 08034170 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

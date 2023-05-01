asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_init_gfx2 \n\
/* 08037f94 */ PUSH {LR} \n\
/* 08037f96 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037f98 */ BL func_0800c604 \n\
/* 08037f9c */ BL get_current_mem_id \n\
/* 08037fa0 */ LSLS R0, R0, 0x10 \n\
/* 08037fa2 */ LSRS R0, R0, 0x10 \n\
/* 08037fa4 */ LDR R2, =bunny_hop_gfx_tables \n\
/* 08037fa6 */ LDR R1, =gCurrentEngineData \n\
/* 08037fa8 */ LDR R1, [R1] \n\
/* 08037faa */ LDRB R1, [R1] \n\
/* 08037fac */ LSLS R1, R1, 0x2 \n\
/* 08037fae */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08037fb0 */ LDR R1, [R1] \n\
/* 08037fb2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08037fb4 */ LSLS R2, R2, 0x6 \n\
/* 08037fb6 */ BL func_08002ee0 \n\
/* 08037fba */ LDR R1, =bunny_hop_init_gfx3 \n\
/* 08037fbc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037fbe */ BL run_func_after_task \n\
/* 08037fc2 */ POP {R0} \n\
/* 08037fc4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

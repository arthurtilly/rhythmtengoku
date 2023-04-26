asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_init_gfx2 \n\
/* 0803fca4 */ PUSH {LR} \n\
/* 0803fca6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803fca8 */ BL func_0800c604 \n\
/* 0803fcac */ BL get_current_mem_id \n\
/* 0803fcb0 */ LSLS R0, R0, 0x10 \n\
/* 0803fcb2 */ LSRS R0, R0, 0x10 \n\
/* 0803fcb4 */ LDR R2, =tram_pauline_gfx_tables \n\
/* 0803fcb6 */ LDR R1, =gCurrentEngineData \n\
/* 0803fcb8 */ LDR R1, [R1] \n\
/* 0803fcba */ LDRB R1, [R1] \n\
/* 0803fcbc */ LSLS R1, R1, 0x2 \n\
/* 0803fcbe */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803fcc0 */ LDR R1, [R1] \n\
/* 0803fcc2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803fcc4 */ LSLS R2, R2, 0x6 \n\
/* 0803fcc6 */ BL func_08002ee0 \n\
/* 0803fcca */ LDR R1, =tram_pauline_init_gfx3 \n\
/* 0803fccc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fcce */ BL run_func_after_task \n\
/* 0803fcd2 */ POP {R0} \n\
/* 0803fcd4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

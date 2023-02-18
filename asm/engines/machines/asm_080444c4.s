asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_toys_init_gfx2 \n\
/* 080444c4 */ PUSH {LR} \n\
/* 080444c6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080444c8 */ BL func_0800c604 \n\
/* 080444cc */ BL get_current_mem_id \n\
/* 080444d0 */ LSLS R0, R0, 0x10 \n\
/* 080444d2 */ LSRS R0, R0, 0x10 \n\
/* 080444d4 */ LDR R2, =rhythm_toys_gfx_tables \n\
/* 080444d6 */ LDR R1, =D_030055d0 \n\
/* 080444d8 */ LDR R1, [R1] \n\
/* 080444da */ LDRB R1, [R1] \n\
/* 080444dc */ LSLS R1, R1, 0x2 \n\
/* 080444de */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080444e0 */ LDR R1, [R1] \n\
/* 080444e2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080444e4 */ LSLS R2, R2, 0x6 \n\
/* 080444e6 */ BL func_08002ee0 \n\
/* 080444ea */ LDR R1, =rhythm_toys_init_gfx3 \n\
/* 080444ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080444ee */ BL run_func_after_task \n\
/* 080444f2 */ POP {R0} \n\
/* 080444f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

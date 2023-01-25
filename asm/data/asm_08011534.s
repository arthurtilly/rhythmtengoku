asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011534 \n\
/* 08011534 */ PUSH {LR} \n\
/* 08011536 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011538 */ BL func_0800c604 \n\
/* 0801153c */ LDR R1, =D_03004b10 \n\
/* 0801153e */ LDR R0, =0x356 \n\
/* 08011540 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08011542 */ LDR R0, =0x7fff \n\
/* 08011544 */ STRH R0, [R2] \n\
/* 08011546 */ LDR R0, =0x376 \n\
/* 08011548 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801154a */ ADDS R0, 0x89 @ Add 0x89 to R0 \n\
/* 0801154c */ STRH R0, [R1] \n\
/* 0801154e */ BL get_current_mem_id \n\
/* 08011552 */ LSLS R0, R0, 0x10 \n\
/* 08011554 */ LSRS R0, R0, 0x10 \n\
/* 08011556 */ LDR R1, =D_089cda38 \n\
/* 08011558 */ BL func_080087b4 \n\
/* 0801155c */ LDR R1, =pause_beatscript_scene \n\
/* 0801155e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011560 */ BL run_func_after_task \n\
/* 08011564 */ POP {R0} \n\
/* 08011566 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

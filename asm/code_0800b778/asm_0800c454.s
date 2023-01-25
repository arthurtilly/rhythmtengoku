asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c454 \n\
/* 0800c454 */ PUSH {R4-R6, LR} \n\
/* 0800c456 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800c458 */ PUSH {R6} \n\
/* 0800c45a */ SUB SP, 0x4 \n\
/* 0800c45c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800c45e */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800c460 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800c462 */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 0800c464 */ BL get_current_mem_id \n\
/* 0800c468 */ LSLS R0, R0, 0x10 \n\
/* 0800c46a */ LSRS R0, R0, 0x10 \n\
/* 0800c46c */ STR R4, [SP] \n\
/* 0800c46e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800c470 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800c472 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800c474 */ BL start_new_task \n\
/* 0800c478 */ ADD SP, 0x4 \n\
/* 0800c47a */ POP {R3} \n\
/* 0800c47c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800c47e */ POP {R4-R6} \n\
/* 0800c480 */ POP {R1} \n\
/* 0800c482 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

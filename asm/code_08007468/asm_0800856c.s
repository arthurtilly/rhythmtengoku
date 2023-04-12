asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start schedule_function_call \n\
/* 0800856c */ PUSH {LR} \n\
/* 0800856e */ SUB SP, 0x10 \n\
/* 08008570 */ LSLS R0, R0, 0x10 \n\
/* 08008572 */ LSRS R0, R0, 0x10 \n\
/* 08008574 */ STR R1, [SP, 0x4] \n\
/* 08008576 */ STR R2, [SP, 0x8] \n\
/* 08008578 */ STR R3, [SP, 0xC] \n\
/* 0800857a */ LDR R1, =D_08936c8c \n\
/* 0800857c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800857e */ STR R2, [SP] \n\
/* 08008580 */ ADD R2, SP, 0x4 \n\
/* 08008582 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08008584 */ BL start_new_task \n\
/* 08008588 */ ADD SP, 0x10 \n\
/* 0800858a */ POP {R1} \n\
/* 0800858c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

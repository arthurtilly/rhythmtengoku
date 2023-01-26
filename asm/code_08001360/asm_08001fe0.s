asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001fe0 \n\
/* 08001fe0 */ PUSH {R4-R7, LR} \n\
/* 08001fe2 */ SUB SP, 0x14 \n\
/* 08001fe4 */ LDR R6, [SP, 0x28] \n\
/* 08001fe6 */ LDR R7, [SP, 0x2C] \n\
/* 08001fe8 */ LSLS R0, R0, 0x10 \n\
/* 08001fea */ LSRS R0, R0, 0x10 \n\
/* 08001fec */ LSLS R2, R2, 0x18 \n\
/* 08001fee */ LSRS R2, R2, 0x18 \n\
/* 08001ff0 */ ADD R4, SP, 0x4 \n\
/* 08001ff2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08001ff4 */ STRB R1, [R4] \n\
/* 08001ff6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08001ff8 */ STRB R2, [R1, 0x1] \n\
/* 08001ffa */ STR R3, [SP, 0x8] \n\
/* 08001ffc */ STR R6, [SP, 0xC] \n\
/* 08001ffe */ STR R7, [SP, 0x10] \n\
/* 08002000 */ LDR R1, =D_089363cc \n\
/* 08002002 */ STR R5, [SP] \n\
/* 08002004 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08002006 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08002008 */ BL start_new_task \n\
/* 0800200c */ ADD SP, 0x14 \n\
/* 0800200e */ POP {R4-R7} \n\
/* 08002010 */ POP {R1} \n\
/* 08002012 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

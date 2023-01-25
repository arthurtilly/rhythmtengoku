asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002018 \n\
/* 08002018 */ PUSH {R4-R7, LR} \n\
/* 0800201a */ SUB SP, 0x14 \n\
/* 0800201c */ LDR R6, [SP, 0x28] \n\
/* 0800201e */ LDR R7, [SP, 0x2C] \n\
/* 08002020 */ LSLS R0, R0, 0x10 \n\
/* 08002022 */ LSRS R0, R0, 0x10 \n\
/* 08002024 */ LSLS R2, R2, 0x18 \n\
/* 08002026 */ LSRS R2, R2, 0x18 \n\
/* 08002028 */ ADD R4, SP, 0x4 \n\
/* 0800202a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800202c */ STRB R1, [R4] \n\
/* 0800202e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08002030 */ STRB R2, [R1, 0x1] \n\
/* 08002032 */ STR R3, [SP, 0x8] \n\
/* 08002034 */ STR R6, [SP, 0xC] \n\
/* 08002036 */ STR R7, [SP, 0x10] \n\
/* 08002038 */ LDR R1, =D_089363dc \n\
/* 0800203a */ STR R5, [SP] \n\
/* 0800203c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800203e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08002040 */ BL start_new_task \n\
/* 08002044 */ ADD SP, 0x14 \n\
/* 08002046 */ POP {R4-R7} \n\
/* 08002048 */ POP {R1} \n\
/* 0800204a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

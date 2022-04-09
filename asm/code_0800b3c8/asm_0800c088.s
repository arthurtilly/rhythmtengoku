asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c088 \n\
/* 0800c088 */ PUSH {R4, LR} \n\
/* 0800c08a */ LSLS R0, R0, 0x10 \n\
/* 0800c08c */ LSRS R0, R0, 0x10 \n\
/* 0800c08e */ LDR R4, =D_030053c0 \n\
/* 0800c090 */ STRH R0, [R4, 0x1E] \n\
/* 0800c092 */ LSLS R0, R0, 0x10 \n\
/* 0800c094 */ ASRS R0, R0, 0x10 \n\
/* 0800c096 */ LDRH R1, [R4, 0x20] \n\
/* 0800c098 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800c09a */ LSLS R0, R0, 0x10 \n\
/* 0800c09c */ LSRS R0, R0, 0x10 \n\
/* 0800c09e */ STRH R0, [R4, 0x22] \n\
/* 0800c0a0 */ LDR R2, [R4, 0x4] \n\
/* 0800c0a2 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c0a4 */ BEQ branch_0800c0b0 \n\
/* 0800c0a6 */ LSLS R1, R0, 0x10 \n\
/* 0800c0a8 */ ASRS R1, R1, 0x10 \n\
/* 0800c0aa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800c0ac */ BL func_080028a8 \n\
 \n\
branch_0800c0b0: \n\
/* 0800c0b0 */ LDRB R1, [R4, 0x2] \n\
/* 0800c0b2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800c0b4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800c0b6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800c0b8 */ STRB R0, [R4, 0x2] \n\
/* 0800c0ba */ POP {R4} \n\
/* 0800c0bc */ POP {R0} \n\
/* 0800c0be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

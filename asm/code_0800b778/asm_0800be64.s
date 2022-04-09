asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800be64 \n\
/* 0800be64 */ PUSH {R4, R5, LR} \n\
/* 0800be66 */ LDR R5, =D_030053c0 \n\
/* 0800be68 */ LDRB R4, [R5, 0x1] \n\
/* 0800be6a */ LSRS R4, R4, 0x7 \n\
/* 0800be6c */ LDRH R0, [R5, 0xA] \n\
/* 0800be6e */ BL func_0800bdf8 \n\
/* 0800be72 */ LSLS R4, R4, 0x7 \n\
/* 0800be74 */ LDRB R1, [R5, 0x1] \n\
/* 0800be76 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0800be78 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800be7a */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0800be7c */ STRB R0, [R5, 0x1] \n\
/* 0800be7e */ POP {R4, R5} \n\
/* 0800be80 */ POP {R0} \n\
/* 0800be82 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

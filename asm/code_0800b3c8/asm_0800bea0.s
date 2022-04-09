asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bea0 \n\
/* 0800bea0 */ PUSH {LR} \n\
/* 0800bea2 */ LDR R3, =D_030053c0 \n\
/* 0800bea4 */ LSLS R0, R0, 0x7 \n\
/* 0800bea6 */ LDRB R2, [R3] \n\
/* 0800bea8 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0800beaa */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800beac */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800beae */ STRB R1, [R3] \n\
/* 0800beb0 */ BL func_0800be64 \n\
/* 0800beb4 */ POP {R0} \n\
/* 0800beb6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

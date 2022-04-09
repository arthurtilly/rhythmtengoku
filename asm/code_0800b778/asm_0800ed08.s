asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ed08 \n\
/* 0800ed08 */ LDR R3, =D_030053c0 \n\
/* 0800ed0a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800ed0c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ed0e */ LSLS R0, R0, 0x1 \n\
/* 0800ed10 */ LDRB R2, [R3, 0x2] \n\
/* 0800ed12 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0800ed14 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800ed16 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800ed18 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800ed1a */ STRB R1, [R3, 0x2] \n\
/* 0800ed1c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

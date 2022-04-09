asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e9d8 \n\
/* 0800e9d8 */ LDR R2, =D_030053c0 \n\
/* 0800e9da */ MOVS R0, 0xB6 @ Set R0 to 0xB6 \n\
/* 0800e9dc */ LSLS R0, R0, 0x1 \n\
/* 0800e9de */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0800e9e0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e9e2 */ STRH R0, [R1] \n\
/* 0800e9e4 */ LDRB R0, [R2, 0x1] \n\
/* 0800e9e6 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0800e9e8 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800e9ea */ MOVS R1, 0x21 @ Set R1 to 0x21 \n\
/* 0800e9ec */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800e9ee */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800e9f0 */ STRB R0, [R2, 0x1] \n\
/* 0800e9f2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

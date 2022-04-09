asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ea70 \n\
/* 0800ea70 */ PUSH {R4, LR} \n\
/* 0800ea72 */ LDR R3, =D_030053c0 \n\
/* 0800ea74 */ LDRB R2, [R3, 0x1] \n\
/* 0800ea76 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0800ea78 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 0800ea7a */ MOVS R4, 0xB7 @ Set R4 to 0xB7 \n\
/* 0800ea7c */ LSLS R4, R4, 0x1 \n\
/* 0800ea7e */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 0800ea80 */ STRH R0, [R1] \n\
/* 0800ea82 */ MOVS R0, 0xB8 @ Set R0 to 0xB8 \n\
/* 0800ea84 */ LSLS R0, R0, 0x1 \n\
/* 0800ea86 */ ADDS R1, R3, R0 @ Set R1 to R3 + R0 \n\
/* 0800ea88 */ LDR R0, =0xffff \n\
/* 0800ea8a */ STRH R0, [R1] \n\
/* 0800ea8c */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0800ea8e */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0800ea90 */ STRB R2, [R3, 0x1] \n\
/* 0800ea92 */ POP {R4} \n\
/* 0800ea94 */ POP {R0} \n\
/* 0800ea96 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

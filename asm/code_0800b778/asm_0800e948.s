asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e948 \n\
/* 0800e948 */ LDR R2, =D_030053c0 \n\
/* 0800e94a */ LDRB R1, [R2, 0x1] \n\
/* 0800e94c */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0800e94e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800e950 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800e952 */ STRB R0, [R2, 0x1] \n\
/* 0800e954 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 0800e956 */ LSLS R0, R0, 0x1 \n\
/* 0800e958 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0800e95a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e95c */ STRH R0, [R1] \n\
/* 0800e95e */ MOVS R0, 0xB5 @ Set R0 to 0xB5 \n\
/* 0800e960 */ LSLS R0, R0, 0x1 \n\
/* 0800e962 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0800e964 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0800e966 */ STRH R0, [R1] \n\
/* 0800e968 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

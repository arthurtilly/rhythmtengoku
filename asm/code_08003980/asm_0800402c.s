asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800402c \n\
/* 0800402c */ PUSH {R4, LR} \n\
/* 0800402e */ LDR R4, =D_03000748 \n\
/* 08004030 */ STR R0, [R4, 0x10] \n\
/* 08004032 */ STR R1, [R4, 0x14] \n\
/* 08004034 */ STRH R2, [R4, 0x4] \n\
/* 08004036 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08004038 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0800403a */ LSLS R3, R3, 0x2 \n\
/* 0800403c */ LDRB R1, [R4] \n\
/* 0800403e */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08004040 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08004042 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08004044 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 08004046 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08004048 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800404a */ STRB R0, [R4] \n\
/* 0800404c */ POP {R4} \n\
/* 0800404e */ POP {R0} \n\
/* 08004050 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

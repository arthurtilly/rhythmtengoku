asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c060 \n\
/* 0800c060 */ PUSH {R4, R5, LR} \n\
/* 0800c062 */ LDR R5, =D_030053c0 \n\
/* 0800c064 */ LDRB R4, [R5, 0x2] \n\
/* 0800c066 */ LSLS R4, R4, 0x1F \n\
/* 0800c068 */ LSRS R4, R4, 0x1F \n\
/* 0800c06a */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 0800c06c */ LDRSH R0, [R5, R1] \n\
/* 0800c06e */ BL func_0800c088 \n\
/* 0800c072 */ LDRB R1, [R5, 0x2] \n\
/* 0800c074 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800c076 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800c078 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800c07a */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0800c07c */ STRB R0, [R5, 0x2] \n\
/* 0800c07e */ POP {R4, R5} \n\
/* 0800c080 */ POP {R0} \n\
/* 0800c082 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

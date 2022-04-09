asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005db0 \n\
/* 08005db0 */ PUSH {R4-R6, LR} \n\
/* 08005db2 */ LSLS R0, R0, 0x10 \n\
/* 08005db4 */ LSRS R6, R0, 0x10 \n\
/* 08005db6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08005db8 */ LDR R4, =D_03000908 \n\
 \n\
branch_08005dba: \n\
/* 08005dba */ LDRB R1, [R4] \n\
/* 08005dbc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005dbe */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005dc0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005dc2 */ BEQ branch_08005dd2 \n\
/* 08005dc4 */ LDRH R0, [R4, 0x2] \n\
/* 08005dc6 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08005dc8 */ BNE branch_08005dd2 \n\
/* 08005dca */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08005dcc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005dce */ BL func_08005a40 \n\
 \n\
branch_08005dd2: \n\
/* 08005dd2 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005dd4 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 08005dd6 */ CMP R5, 0x2F @ Compare R5 and 0x2F \n\
/* 08005dd8 */ BLS branch_08005dba \n\
/* 08005dda */ POP {R4-R6} \n\
/* 08005ddc */ POP {R0} \n\
/* 08005dde */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018870 \n\
/* 08018870 */ PUSH {R4, R5, LR} \n\
/* 08018872 */ LSLS R0, R0, 0x10 \n\
/* 08018874 */ LSRS R5, R0, 0x10 \n\
/* 08018876 */ LDR R0, =D_03005380 \n\
/* 08018878 */ LDR R0, [R0] \n\
/* 0801887a */ LDR R4, =D_030046a4 \n\
/* 0801887c */ LDR R1, [R4] \n\
/* 0801887e */ LDR R2, =0x496 \n\
/* 08018880 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08018882 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018884 */ LDRSH R1, [R1, R2] \n\
/* 08018886 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08018888 */ BL func_0804d67c \n\
/* 0801888c */ LDR R0, [R4] \n\
/* 0801888e */ MOVS R1, 0x93 @ Set R1 to 0x93 \n\
/* 08018890 */ LSLS R1, R1, 0x3 \n\
/* 08018892 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018894 */ LDR R0, [R0] \n\
/* 08018896 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018898 */ BEQ branch_080188a0 \n\
/* 0801889a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801889c */ BL func_0800aca0 \n\
 \n\
branch_080188a0: \n\
/* 080188a0 */ POP {R4, R5} \n\
/* 080188a2 */ POP {R0} \n\
/* 080188a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

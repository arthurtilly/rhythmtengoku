asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080158f4 \n\
/* 080158f4 */ PUSH {R4, R5, LR} \n\
/* 080158f6 */ SUB SP, 0x4 \n\
/* 080158f8 */ LDR R1, =D_0600a000 \n\
/* 080158fa */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080158fc */ LSLS R0, R0, 0x2 \n\
/* 080158fe */ STR R0, [SP] \n\
/* 08015900 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08015902 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08015904 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08015906 */ BL func_080018e0 \n\
/* 0801590a */ LDR R1, =D_089cfa74 \n\
/* 0801590c */ LDR R0, [R1] \n\
/* 0801590e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015910 */ BEQ branch_08015928 \n\
/* 08015912 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08015914 */ LDR R4, =0x101 \n\
 \n\
branch_08015916: \n\
/* 08015916 */ LDMIA R5!, {R0} \n\
/* 08015918 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801591a */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801591c */ BL func_08015a24 \n\
/* 08015920 */ ADDS R4, 0x9 @ Add 0x9 to R4 \n\
/* 08015922 */ LDR R0, [R5] \n\
/* 08015924 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015926 */ BNE branch_08015916 \n\
 \n\
branch_08015928: \n\
/* 08015928 */ ADD SP, 0x4 \n\
/* 0801592a */ POP {R4, R5} \n\
/* 0801592c */ POP {R0} \n\
/* 0801592e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e8f4 \n\
/* 0800e8f4 */ PUSH {R4, R5, LR} \n\
/* 0800e8f6 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800e8f8 */ LSLS R0, R0, 0x10 \n\
/* 0800e8fa */ LSRS R1, R0, 0x10 \n\
/* 0800e8fc */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800e8fe */ BEQ branch_0800e924 \n\
/* 0800e900 */ LDR R5, =D_03005380 \n\
/* 0800e902 */ LDR R0, [R5] \n\
/* 0800e904 */ LSLS R4, R1, 0x10 \n\
/* 0800e906 */ ASRS R4, R4, 0x10 \n\
/* 0800e908 */ LDR R2, =func_0800e8d8 \n\
/* 0800e90a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800e90c */ BL func_0804daa8 \n\
/* 0800e910 */ LDR R0, [R5] \n\
/* 0800e912 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800e914 */ BL func_0804df6c \n\
/* 0800e918 */ B branch_0800e934 \n\
\n\
.ltorg \n\
 \n\
branch_0800e924: \n\
/* 0800e924 */ LDR R0, =D_03005380 \n\
/* 0800e926 */ LDR R0, [R0] \n\
/* 0800e928 */ LSLS R1, R1, 0x10 \n\
/* 0800e92a */ ASRS R1, R1, 0x10 \n\
/* 0800e92c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e92e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e930 */ BL func_0804daa8 \n\
 \n\
branch_0800e934: \n\
/* 0800e934 */ POP {R4, R5} \n\
/* 0800e936 */ POP {R0} \n\
/* 0800e938 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

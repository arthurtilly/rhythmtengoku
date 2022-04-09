asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d8d8 \n\
/* 0801d8d8 */ PUSH {R4, LR} \n\
/* 0801d8da */ BL func_08006e88 \n\
/* 0801d8de */ BL func_08003fb4 \n\
/* 0801d8e2 */ LDR R4, =D_030055e0 \n\
/* 0801d8e4 */ LDRB R1, [R4, 0x1] \n\
/* 0801d8e6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801d8e8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d8ea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d8ec */ BEQ branch_0801d8f2 \n\
/* 0801d8ee */ BL func_0800b974 \n\
 \n\
branch_0801d8f2: \n\
/* 0801d8f2 */ BL func_08005ad4 \n\
/* 0801d8f6 */ BL func_08005a84 \n\
/* 0801d8fa */ LDRB R0, [R4] \n\
/* 0801d8fc */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801d8fe */ BEQ branch_0801d91c \n\
/* 0801d900 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801d902 */ BGT branch_0801d910 \n\
/* 0801d904 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d906 */ BEQ branch_0801d916 \n\
/* 0801d908 */ B branch_0801d946 \n\
\n\
.ltorg \n\
 \n\
branch_0801d910: \n\
/* 0801d910 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0801d912 */ BEQ branch_0801d93a \n\
/* 0801d914 */ B branch_0801d946 \n\
 \n\
branch_0801d916: \n\
/* 0801d916 */ BL func_0801d9d0 \n\
/* 0801d91a */ B branch_0801d922 \n\
 \n\
branch_0801d91c: \n\
/* 0801d91c */ BL func_0801da48 \n\
/* 0801d920 */ LDRB R0, [R4] \n\
 \n\
branch_0801d922: \n\
/* 0801d922 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d924 */ BNE branch_0801d946 \n\
/* 0801d926 */ BL func_0800b9fc \n\
/* 0801d92a */ BL func_0800bc14 \n\
/* 0801d92e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d930 */ BEQ branch_0801d946 \n\
/* 0801d932 */ BL func_0801d98c \n\
/* 0801d936 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801d938 */ B branch_0801d954 \n\
 \n\
branch_0801d93a: \n\
/* 0801d93a */ BL func_0801dabc \n\
/* 0801d93e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d940 */ BEQ branch_0801d946 \n\
/* 0801d942 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801d944 */ B branch_0801d954 \n\
 \n\
branch_0801d946: \n\
/* 0801d946 */ BL func_08007410 \n\
/* 0801d94a */ BL func_08006f84 \n\
/* 0801d94e */ BL func_080042a4 \n\
/* 0801d952 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801d954: \n\
/* 0801d954 */ POP {R4} \n\
/* 0801d956 */ POP {R1} \n\
/* 0801d958 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080458ec \n\
/* 080458ec */ PUSH {LR} \n\
/* 080458ee */ SUB SP, 0x4 \n\
/* 080458f0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080458f2 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080458f4 */ BEQ branch_080458fc \n\
/* 080458f6 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 080458f8 */ BEQ branch_0804591c \n\
/* 080458fa */ B branch_08045934 \n\
 \n\
branch_080458fc: \n\
/* 080458fc */ LDR R0, =D_03005380 \n\
/* 080458fe */ LDR R0, [R0] \n\
/* 08045900 */ LDR R1, =D_030055d0 \n\
/* 08045902 */ LDR R1, [R1] \n\
/* 08045904 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08045906 */ LDRSH R1, [R1, R3] \n\
/* 08045908 */ STR R2, [SP] \n\
/* 0804590a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804590c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0804590e */ BL func_0804dae0 \n\
/* 08045912 */ B branch_08045934 \n\
\n\
.ltorg \n\
 \n\
branch_0804591c: \n\
/* 0804591c */ LDR R0, =D_03005380 \n\
/* 0804591e */ LDR R0, [R0] \n\
/* 08045920 */ LDR R1, =D_030055d0 \n\
/* 08045922 */ LDR R1, [R1] \n\
/* 08045924 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08045926 */ LDRSH R1, [R1, R2] \n\
/* 08045928 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804592a */ STR R2, [SP] \n\
/* 0804592c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804592e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08045930 */ BL func_0804dae0 \n\
 \n\
branch_08045934: \n\
/* 08045934 */ ADD SP, 0x4 \n\
/* 08045936 */ POP {R0} \n\
/* 08045938 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

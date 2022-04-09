asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804823c \n\
/* 0804823c */ PUSH {LR} \n\
/* 0804823e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08048240 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08048242 */ BEQ branch_08048254 \n\
/* 08048244 */ LDR R1, =s_intro_stick_seqData \n\
/* 08048246 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08048248 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804824a */ BL func_080026c4 \n\
/* 0804824e */ B branch_0804825c \n\
\n\
.ltorg \n\
 \n\
branch_08048254: \n\
/* 08048254 */ LDR R1, =s_intro_stick_seqData \n\
/* 08048256 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08048258 */ BL func_0800267c \n\
 \n\
branch_0804825c: \n\
/* 0804825c */ POP {R0} \n\
/* 0804825e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

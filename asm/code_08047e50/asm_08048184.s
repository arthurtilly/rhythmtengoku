asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048184 \n\
/* 08048184 */ PUSH {LR} \n\
/* 08048186 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08048188 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804818a */ BEQ branch_0804819c \n\
/* 0804818c */ LDR R1, =s_intro_stick_seqData \n\
/* 0804818e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08048190 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08048192 */ BL func_080026c4 \n\
/* 08048196 */ B branch_080481a4 \n\
\n\
.ltorg \n\
 \n\
branch_0804819c: \n\
/* 0804819c */ LDR R1, =s_intro_stick_seqData \n\
/* 0804819e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080481a0 */ BL func_0800267c \n\
 \n\
branch_080481a4: \n\
/* 080481a4 */ POP {R0} \n\
/* 080481a6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

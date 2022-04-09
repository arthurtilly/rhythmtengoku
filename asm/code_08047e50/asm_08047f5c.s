asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047f5c \n\
/* 08047f5c */ PUSH {LR} \n\
/* 08047f5e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08047f60 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08047f62 */ BEQ branch_08047f74 \n\
/* 08047f64 */ LDR R1, =s_intro_stick_seqData \n\
/* 08047f66 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08047f68 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047f6a */ BL func_080026c4 \n\
/* 08047f6e */ B branch_08047f7c \n\
\n\
.ltorg \n\
 \n\
branch_08047f74: \n\
/* 08047f74 */ LDR R1, =s_intro_stick_seqData \n\
/* 08047f76 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08047f78 */ BL func_0800267c \n\
 \n\
branch_08047f7c: \n\
/* 08047f7c */ POP {R0} \n\
/* 08047f7e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

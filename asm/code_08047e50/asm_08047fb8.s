asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047fb8 \n\
/* 08047fb8 */ PUSH {LR} \n\
/* 08047fba */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08047fbc */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08047fbe */ BEQ branch_08047fd0 \n\
/* 08047fc0 */ LDR R1, =s_intro_stick_seqData \n\
/* 08047fc2 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08047fc4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047fc6 */ BL func_080026c4 \n\
/* 08047fca */ B branch_08047fd8 \n\
\n\
.ltorg \n\
 \n\
branch_08047fd0: \n\
/* 08047fd0 */ LDR R1, =s_intro_stick_seqData \n\
/* 08047fd2 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08047fd4 */ BL func_0800267c \n\
 \n\
branch_08047fd8: \n\
/* 08047fd8 */ POP {R0} \n\
/* 08047fda */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

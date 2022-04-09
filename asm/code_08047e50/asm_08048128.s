asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048128 \n\
/* 08048128 */ PUSH {LR} \n\
/* 0804812a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804812c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804812e */ BEQ branch_08048140 \n\
/* 08048130 */ LDR R1, =s_intro_stick_seqData \n\
/* 08048132 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08048134 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08048136 */ BL func_080026c4 \n\
/* 0804813a */ B branch_08048148 \n\
\n\
.ltorg \n\
 \n\
branch_08048140: \n\
/* 08048140 */ LDR R1, =s_intro_stick_seqData \n\
/* 08048142 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08048144 */ BL func_0800267c \n\
 \n\
branch_08048148: \n\
/* 08048148 */ POP {R0} \n\
/* 0804814a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

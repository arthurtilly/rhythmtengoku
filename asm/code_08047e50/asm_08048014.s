asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048014 \n\
/* 08048014 */ PUSH {LR} \n\
/* 08048016 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08048018 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804801a */ BEQ branch_0804802c \n\
/* 0804801c */ LDR R1, =s_intro_stick_seqData \n\
/* 0804801e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08048020 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08048022 */ BL func_080026c4 \n\
/* 08048026 */ B branch_08048034 \n\
\n\
.ltorg \n\
 \n\
branch_0804802c: \n\
/* 0804802c */ LDR R1, =s_intro_stick_seqData \n\
/* 0804802e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08048030 */ BL func_0800267c \n\
 \n\
branch_08048034: \n\
/* 08048034 */ POP {R0} \n\
/* 08048036 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

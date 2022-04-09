asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080481e0 \n\
/* 080481e0 */ PUSH {LR} \n\
/* 080481e2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080481e4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080481e6 */ BEQ branch_080481f8 \n\
/* 080481e8 */ LDR R1, =s_intro_stick_seqData \n\
/* 080481ea */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080481ec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080481ee */ BL func_080026c4 \n\
/* 080481f2 */ B branch_08048200 \n\
\n\
.ltorg \n\
 \n\
branch_080481f8: \n\
/* 080481f8 */ LDR R1, =s_intro_stick_seqData \n\
/* 080481fa */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080481fc */ BL func_0800267c \n\
 \n\
branch_08048200: \n\
/* 08048200 */ POP {R0} \n\
/* 08048202 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a994 \n\
/* 0802a994 */ PUSH {R4, LR} \n\
/* 0802a996 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a998 */ LDR R4, =D_03001568 \n\
/* 0802a99a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0802a99c: \n\
/* 0802a99c */ LDR R0, [R4] \n\
/* 0802a99e */ LSLS R1, R2, 0x3 \n\
/* 0802a9a0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a9a2 */ STRH R3, [R0, 0x16] \n\
/* 0802a9a4 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0802a9a6 */ CMP R2, 0x63 @ Compare R2 and 0x63 \n\
/* 0802a9a8 */ BLS branch_0802a99c \n\
/* 0802a9aa */ POP {R4} \n\
/* 0802a9ac */ POP {R0} \n\
/* 0802a9ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

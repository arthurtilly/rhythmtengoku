asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802139c \n\
/* 0802139c */ PUSH {R4, LR} \n\
/* 0802139e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080213a0 */ LDR R1, =D_089df1bc \n\
/* 080213a2 */ LSLS R0, R0, 0x2 \n\
/* 080213a4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080213a6 */ LDR R0, [R0] \n\
/* 080213a8 */ LDR R1, =D_06008000 \n\
/* 080213aa */ BL func_08003eb8 \n\
/* 080213ae */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080213b0 */ BL func_0800e030 \n\
/* 080213b4 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080213b6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080213b8 */ BL func_0800c3a4 \n\
/* 080213bc */ LDR R1, =D_030055d0 \n\
/* 080213be */ LDR R1, [R1] \n\
/* 080213c0 */ STRH R0, [R1, 0x32] \n\
/* 080213c2 */ POP {R4} \n\
/* 080213c4 */ POP {R0} \n\
/* 080213c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

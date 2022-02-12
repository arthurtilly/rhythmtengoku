asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080213e4 \n\
/* 080213e4 */ PUSH {LR} \n\
/* 080213e6 */ LDR R0, =D_030055d0 \n\
/* 080213e8 */ LDR R1, [R0] \n\
/* 080213ea */ LDRH R0, [R1, 0x32] \n\
/* 080213ec */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080213ee */ BEQ branch_08021400 \n\
/* 080213f0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080213f2 */ STRH R0, [R1, 0x32] \n\
/* 080213f4 */ LSLS R0, R0, 0x10 \n\
/* 080213f6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080213f8 */ BNE branch_08021400 \n\
/* 080213fa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080213fc */ BL func_0800e044 \n\
 \n\
branch_08021400: \n\
/* 08021400 */ POP {R0} \n\
/* 08021402 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

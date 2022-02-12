asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021524 \n\
/* 08021524 */ PUSH {LR} \n\
/* 08021526 */ LDR R0, =D_030055d0 \n\
/* 08021528 */ LDR R0, [R0] \n\
/* 0802152a */ LDRH R0, [R0, 0x30] \n\
/* 0802152c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802152e */ BEQ branch_0802153c \n\
/* 08021530 */ BL func_0800bc40 \n\
/* 08021534 */ B branch_08021540 \n\
\n\
.ltorg \n\
 \n\
branch_0802153c: \n\
/* 0802153c */ BL func_0800bce4 \n\
 \n\
branch_08021540: \n\
/* 08021540 */ POP {R0} \n\
/* 08021542 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

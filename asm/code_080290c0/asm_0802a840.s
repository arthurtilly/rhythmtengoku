asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a840 \n\
/* 0802a840 */ PUSH {R4, R5, LR} \n\
/* 0802a842 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802a844 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802a846 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0802a848 */ BCS branch_0802a854 \n\
 \n\
branch_0802a84a: \n\
/* 0802a84a */ BL func_0802a78c \n\
/* 0802a84e */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802a850 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0802a852 */ BCC branch_0802a84a \n\
 \n\
branch_0802a854: \n\
/* 0802a854 */ POP {R4, R5} \n\
/* 0802a856 */ POP {R0} \n\
/* 0802a858 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

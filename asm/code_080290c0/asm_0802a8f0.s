asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a8f0 \n\
/* 0802a8f0 */ PUSH {R4, R5, LR} \n\
/* 0802a8f2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802a8f4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802a8f6 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0802a8f8 */ BCS branch_0802a904 \n\
 \n\
branch_0802a8fa: \n\
/* 0802a8fa */ BL func_0802a868 \n\
/* 0802a8fe */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802a900 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0802a902 */ BCC branch_0802a8fa \n\
 \n\
branch_0802a904: \n\
/* 0802a904 */ POP {R4, R5} \n\
/* 0802a906 */ POP {R0} \n\
/* 0802a908 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

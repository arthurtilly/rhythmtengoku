asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802bf38 \n\
/* 0802bf38 */ PUSH {R4, LR} \n\
/* 0802bf3a */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0802bf3c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0802bf3e */ BL func_0800c3a4 \n\
/* 0802bf42 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802bf44 */ BHI branch_0802bf4a \n\
/* 0802bf46 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802bf48 */ B branch_0802bf4c \n\
 \n\
branch_0802bf4a: \n\
/* 0802bf4a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802bf4c: \n\
/* 0802bf4c */ POP {R4} \n\
/* 0802bf4e */ POP {R1} \n\
/* 0802bf50 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

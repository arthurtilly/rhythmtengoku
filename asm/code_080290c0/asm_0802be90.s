asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802be90 \n\
/* 0802be90 */ PUSH {R4, LR} \n\
/* 0802be92 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0802be94 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 0802be96 */ BL func_0800c3a4 \n\
/* 0802be9a */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802be9c */ BHI branch_0802bea2 \n\
/* 0802be9e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802bea0 */ B branch_0802bea4 \n\
 \n\
branch_0802bea2: \n\
/* 0802bea2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802bea4: \n\
/* 0802bea4 */ POP {R4} \n\
/* 0802bea6 */ POP {R1} \n\
/* 0802bea8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

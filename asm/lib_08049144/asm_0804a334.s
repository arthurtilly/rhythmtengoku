asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a334 \n\
/* 0804a334 */ PUSH {R4, R5, LR} \n\
/* 0804a336 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804a338 */ LDR R0, =D_03005b8c \n\
/* 0804a33a */ LDRH R1, [R0] \n\
/* 0804a33c */ CMP R4, R1 @ Check R4 - R1 \n\
/* 0804a33e */ BCS branch_0804a350 \n\
/* 0804a340 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0804a342: \n\
/* 0804a342 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804a344 */ BL func_0804a2c4 \n\
/* 0804a348 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804a34a */ LDRH R0, [R5] \n\
/* 0804a34c */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804a34e */ BCC branch_0804a342 \n\
 \n\
branch_0804a350: \n\
/* 0804a350 */ BL func_0804b2c4 \n\
/* 0804a354 */ POP {R4, R5} \n\
/* 0804a356 */ POP {R0} \n\
/* 0804a358 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

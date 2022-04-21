asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b5f0 \n\
/* 0804b5f0 */ PUSH {R4-R6, LR} \n\
/* 0804b5f2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804b5f4 */ LDR R1, =D_08aa4318 \n\
/* 0804b5f6 */ LDR R0, [R1] \n\
/* 0804b5f8 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804b5fa */ BHI branch_0804b610 \n\
/* 0804b5fc */ LDR R6, =D_08aa4324 \n\
/* 0804b5fe */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
 \n\
branch_0804b600: \n\
/* 0804b600 */ LDMIA R6!, {R0} \n\
/* 0804b602 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804b604 */ BL func_0804b574 \n\
/* 0804b608 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804b60a */ LDR R0, [R5] \n\
/* 0804b60c */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804b60e */ BLS branch_0804b600 \n\
 \n\
branch_0804b610: \n\
/* 0804b610 */ POP {R4-R6} \n\
/* 0804b612 */ POP {R0} \n\
/* 0804b614 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

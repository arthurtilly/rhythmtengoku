asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b620 \n\
/* 0804b620 */ PUSH {R4-R6, LR} \n\
/* 0804b622 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804b624 */ LDR R1, =D_08aa4318 \n\
/* 0804b626 */ LDR R0, [R1] \n\
/* 0804b628 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804b62a */ BHI branch_0804b640 \n\
/* 0804b62c */ LDR R6, =D_08aa4324 \n\
/* 0804b62e */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
 \n\
branch_0804b630: \n\
/* 0804b630 */ LDMIA R6!, {R0} \n\
/* 0804b632 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804b634 */ BL func_0804b574 \n\
/* 0804b638 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804b63a */ LDR R0, [R5] \n\
/* 0804b63c */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804b63e */ BLS branch_0804b630 \n\
 \n\
branch_0804b640: \n\
/* 0804b640 */ POP {R4-R6} \n\
/* 0804b642 */ POP {R0} \n\
/* 0804b644 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

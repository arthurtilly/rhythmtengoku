asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b6c4 \n\
/* 0804b6c4 */ PUSH {R4, R5, LR} \n\
/* 0804b6c6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804b6c8 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804b6ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804b6cc */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804b6ce */ BCS branch_0804b6e6 \n\
 \n\
branch_0804b6d0: \n\
/* 0804b6d0 */ ADDS R0, R5, R3 @ Set R0 to R5 + R3 \n\
/* 0804b6d2 */ ADDS R1, R4, R3 @ Set R1 to R4 + R3 \n\
/* 0804b6d4 */ LDRB R0, [R0] \n\
/* 0804b6d6 */ LDRB R1, [R1] \n\
/* 0804b6d8 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0804b6da */ BEQ branch_0804b6e0 \n\
/* 0804b6dc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804b6de */ B branch_0804b6e8 \n\
 \n\
branch_0804b6e0: \n\
/* 0804b6e0 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804b6e2 */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804b6e4 */ BCC branch_0804b6d0 \n\
 \n\
branch_0804b6e6: \n\
/* 0804b6e6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0804b6e8: \n\
/* 0804b6e8 */ POP {R4, R5} \n\
/* 0804b6ea */ POP {R1} \n\
/* 0804b6ec */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080114f4 \n\
/* 080114f4 */ PUSH {LR} \n\
/* 080114f6 */ LDR R0, =D_030046a4 \n\
/* 080114f8 */ LDR R0, [R0] \n\
/* 080114fa */ LDR R0, [R0] \n\
/* 080114fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080114fe */ BNE branch_08011508 \n\
/* 08011500 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011502 */ B branch_0801150a \n\
\n\
.ltorg \n\
 \n\
branch_08011508: \n\
/* 08011508 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801150a: \n\
/* 0801150a */ POP {R1} \n\
/* 0801150c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

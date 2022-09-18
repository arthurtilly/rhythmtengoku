asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801075c \n\
/* 0801075c */ PUSH {LR} \n\
/* 0801075e */ LDR R0, =D_030046a4 \n\
/* 08010760 */ LDR R0, [R0] \n\
/* 08010762 */ LDR R0, [R0] \n\
/* 08010764 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010766 */ BNE branch_08010770 \n\
/* 08010768 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801076a */ B branch_08010772 \n\
\n\
.ltorg \n\
 \n\
branch_08010770: \n\
/* 08010770 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08010772: \n\
/* 08010772 */ POP {R1} \n\
/* 08010774 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

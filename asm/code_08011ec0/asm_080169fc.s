asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080169fc \n\
/* 080169fc */ PUSH {LR} \n\
/* 080169fe */ LDR R0, =D_030046a4 \n\
/* 08016a00 */ LDR R0, [R0] \n\
/* 08016a02 */ LDR R0, [R0, 0x10] \n\
/* 08016a04 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016a06 */ BNE branch_08016a10 \n\
/* 08016a08 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016a0a */ B branch_08016a12 \n\
\n\
.ltorg \n\
 \n\
branch_08016a10: \n\
/* 08016a10 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08016a12: \n\
/* 08016a12 */ POP {R1} \n\
/* 08016a14 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

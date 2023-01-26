asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080141a4 \n\
/* 080141a4 */ PUSH {LR} \n\
/* 080141a6 */ LDR R0, =D_030046a4 \n\
/* 080141a8 */ LDR R0, [R0] \n\
/* 080141aa */ LDR R0, [R0, 0x4] \n\
/* 080141ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080141ae */ BNE branch_080141b8 \n\
/* 080141b0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080141b2 */ B branch_080141ba \n\
\n\
.ltorg \n\
 \n\
branch_080141b8: \n\
/* 080141b8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080141ba: \n\
/* 080141ba */ POP {R1} \n\
/* 080141bc */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

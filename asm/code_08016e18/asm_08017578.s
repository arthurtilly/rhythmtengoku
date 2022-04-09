asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017578 \n\
/* 08017578 */ PUSH {LR} \n\
/* 0801757a */ LDR R0, =D_030046a4 \n\
/* 0801757c */ LDR R0, [R0] \n\
/* 0801757e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08017580 */ ADDS R1, 0x84 @ Add 0x84 to R1 \n\
/* 08017582 */ LDRH R0, [R1] \n\
/* 08017584 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017586 */ BEQ branch_0801758e \n\
/* 08017588 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801758a */ BL func_0800703c \n\
 \n\
branch_0801758e: \n\
/* 0801758e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08017590 */ BL func_08007324 \n\
/* 08017594 */ BL func_08007370 \n\
/* 08017598 */ POP {R0} \n\
/* 0801759a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

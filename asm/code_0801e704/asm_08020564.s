asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020564 \n\
/* 08020564 */ PUSH {R4, R5, LR} \n\
/* 08020566 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08020568 */ LDRB R0, [R1] \n\
/* 0802056a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802056c */ BEQ branch_08020586 \n\
/* 0802056e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08020570 */ BGT branch_08020578 \n\
/* 08020572 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020574 */ BEQ branch_0802057e \n\
/* 08020576 */ B branch_08020596 \n\
 \n\
branch_08020578: \n\
/* 08020578 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802057a */ BEQ branch_0802058e \n\
/* 0802057c */ B branch_08020596 \n\
 \n\
branch_0802057e: \n\
/* 0802057e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020580 */ BL func_080203fc \n\
/* 08020584 */ B branch_08020594 \n\
 \n\
branch_08020586: \n\
/* 08020586 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020588 */ BL func_080204b8 \n\
/* 0802058c */ B branch_08020594 \n\
 \n\
branch_0802058e: \n\
/* 0802058e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020590 */ BL func_08020500 \n\
 \n\
branch_08020594: \n\
/* 08020594 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_08020596: \n\
/* 08020596 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08020598 */ POP {R4, R5} \n\
/* 0802059a */ POP {R1} \n\
/* 0802059c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

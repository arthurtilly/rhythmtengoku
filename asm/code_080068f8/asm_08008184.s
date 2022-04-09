asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008184 \n\
/* 08008184 */ PUSH {R4, R5, LR} \n\
/* 08008186 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08008188 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800818a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800818c */ B branch_08008196 \n\
 \n\
branch_0800818e: \n\
/* 0800818e */ STRB R3, [R0] \n\
/* 08008190 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08008192 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08008194 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
 \n\
branch_08008196: \n\
/* 08008196 */ LDRB R3, [R1] \n\
/* 08008198 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800819a */ BEQ branch_080081a0 \n\
/* 0800819c */ CMP R2, R4 @ Check R2 - R4 \n\
/* 0800819e */ BCC branch_0800818e \n\
 \n\
branch_080081a0: \n\
/* 080081a0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080081a2 */ POP {R4, R5} \n\
/* 080081a4 */ POP {R1} \n\
/* 080081a6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

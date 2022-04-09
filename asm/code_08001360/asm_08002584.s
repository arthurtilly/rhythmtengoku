asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002584 \n\
/* 08002584 */ PUSH {R4, R5, LR} \n\
/* 08002586 */ LDR R4, =D_03000360 \n\
/* 08002588 */ LDRB R0, [R4] \n\
/* 0800258a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800258c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800258e */ BEQ branch_080025aa \n\
/* 08002590 */ LDR R5, =D_03000338 \n\
/* 08002592 */ LDR R3, =D_03000138 \n\
 \n\
branch_08002594: \n\
/* 08002594 */ LDR R1, [R5] \n\
/* 08002596 */ LSLS R0, R2, 0x3 \n\
/* 08002598 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800259a */ LDRH R1, [R3] \n\
/* 0800259c */ STRH R1, [R0, 0x6] \n\
/* 0800259e */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 080025a0 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080025a2 */ LDRB R0, [R4] \n\
/* 080025a4 */ LSLS R0, R0, 0x2 \n\
/* 080025a6 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080025a8 */ BCC branch_08002594 \n\
 \n\
branch_080025aa: \n\
/* 080025aa */ POP {R4, R5} \n\
/* 080025ac */ POP {R0} \n\
/* 080025ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021424 \n\
/* 08021424 */ PUSH {LR} \n\
/* 08021426 */ LDR R0, =D_030055d0 \n\
/* 08021428 */ LDR R1, [R0] \n\
/* 0802142a */ LDRB R0, [R1] \n\
/* 0802142c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802142e */ BNE branch_08021436 \n\
/* 08021430 */ ADDS R1, 0x35 @ Add 0x35 to R1 \n\
/* 08021432 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021434 */ STRB R0, [R1] \n\
 \n\
branch_08021436: \n\
/* 08021436 */ POP {R0} \n\
/* 08021438 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

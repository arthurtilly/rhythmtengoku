asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021408 \n\
/* 08021408 */ PUSH {LR} \n\
/* 0802140a */ LDR R0, =D_030055d0 \n\
/* 0802140c */ LDR R1, [R0] \n\
/* 0802140e */ LDRB R0, [R1] \n\
/* 08021410 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021412 */ BNE branch_0802141a \n\
/* 08021414 */ ADDS R1, 0x34 @ Add 0x34 to R1 \n\
/* 08021416 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021418 */ STRB R0, [R1] \n\
 \n\
branch_0802141a: \n\
/* 0802141a */ POP {R0} \n\
/* 0802141c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

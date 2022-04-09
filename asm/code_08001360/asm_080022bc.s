asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080022bc \n\
/* 080022bc */ PUSH {LR} \n\
/* 080022be */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080022c0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080022c2 */ BLT branch_080022d0 \n\
/* 080022c4 */ LDR R0, =D_03000340 \n\
/* 080022c6 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 080022c8 */ LDRB R2, [R0] \n\
/* 080022ca */ MOVS R1, 0xF7 @ Set R1 to 0xF7 \n\
/* 080022cc */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 080022ce */ STRB R1, [R0] \n\
 \n\
branch_080022d0: \n\
/* 080022d0 */ POP {R0} \n\
/* 080022d2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

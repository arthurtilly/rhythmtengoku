asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801714c \n\
/* 0801714c */ PUSH {LR} \n\
/* 0801714e */ LDR R0, =D_030046a4 \n\
/* 08017150 */ LDR R0, [R0] \n\
/* 08017152 */ LDRB R0, [R0, 0x8] \n\
/* 08017154 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017156 */ BNE branch_08017160 \n\
/* 08017158 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801715a */ B branch_08017162 \n\
\n\
.ltorg \n\
 \n\
branch_08017160: \n\
/* 08017160 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08017162: \n\
/* 08017162 */ POP {R1} \n\
/* 08017164 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

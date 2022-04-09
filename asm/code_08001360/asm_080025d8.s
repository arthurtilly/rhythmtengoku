asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080025d8 \n\
/* 080025d8 */ PUSH {LR} \n\
/* 080025da */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080025dc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080025de */ LDR R3, =D_03000340 \n\
 \n\
branch_080025e0: \n\
/* 080025e0 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080025e2 */ LDRB R0, [R0] \n\
/* 080025e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080025e6 */ BEQ branch_080025ea \n\
/* 080025e8 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
 \n\
branch_080025ea: \n\
/* 080025ea */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080025ec */ CMP R1, 0x1F @ Compare R1 and 0x1F \n\
/* 080025ee */ BLS branch_080025e0 \n\
/* 080025f0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080025f2 */ POP {R1} \n\
/* 080025f4 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

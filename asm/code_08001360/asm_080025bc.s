asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080025bc \n\
/* 080025bc */ PUSH {LR} \n\
/* 080025be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080025c0 */ BLT branch_080025d0 \n\
/* 080025c2 */ LSLS R0, R0, 0x3 \n\
/* 080025c4 */ LDR R1, =D_03000138 \n\
/* 080025c6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080025c8 */ B branch_080025d2 \n\
\n\
.ltorg \n\
 \n\
branch_080025d0: \n\
/* 080025d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080025d2: \n\
/* 080025d2 */ POP {R1} \n\
/* 080025d4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

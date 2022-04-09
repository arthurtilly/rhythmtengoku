asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030114 \n\
/* 08030114 */ PUSH {LR} \n\
/* 08030116 */ LDR R0, =D_03005380 \n\
/* 08030118 */ LDR R0, [R0] \n\
/* 0803011a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803011c */ LDRSH R1, [R1, R2] \n\
/* 0803011e */ BL func_0804d504 \n\
/* 08030122 */ POP {R0} \n\
/* 08030124 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

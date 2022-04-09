asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013130 \n\
/* 08013130 */ PUSH {LR} \n\
/* 08013132 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013134 */ BLT branch_08013144 \n\
/* 08013136 */ LSLS R0, R0, 0x5 \n\
/* 08013138 */ LDR R1, =D_089ce344 \n\
/* 0801313a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801313c */ B branch_08013146 \n\
\n\
.ltorg \n\
 \n\
branch_08013144: \n\
/* 08013144 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08013146: \n\
/* 08013146 */ POP {R1} \n\
/* 08013148 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

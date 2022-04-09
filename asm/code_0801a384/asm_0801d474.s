asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d474 \n\
/* 0801d474 */ PUSH {R4, LR} \n\
/* 0801d476 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801d478 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801d47a */ BLT branch_0801d488 \n\
/* 0801d47c */ LDR R0, =D_030046a4 \n\
/* 0801d47e */ LDR R0, [R0] \n\
/* 0801d480 */ LDR R0, [R0, 0x14] \n\
/* 0801d482 */ LDRB R0, [R0] \n\
/* 0801d484 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0801d486 */ BLT branch_0801d490 \n\
 \n\
branch_0801d488: \n\
/* 0801d488 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d48a */ B branch_0801d4a4 \n\
\n\
.ltorg \n\
 \n\
branch_0801d490: \n\
/* 0801d490 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d492 */ BL func_0801d204 \n\
/* 0801d496 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d498 */ BEQ branch_0801d4a2 \n\
/* 0801d49a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d49c */ BL func_0801d14c \n\
/* 0801d4a0 */ B branch_0801d4a4 \n\
 \n\
branch_0801d4a2: \n\
/* 0801d4a2 */ LDR R0, =D_089dd794 \n\
 \n\
branch_0801d4a4: \n\
/* 0801d4a4 */ POP {R4} \n\
/* 0801d4a6 */ POP {R1} \n\
/* 0801d4a8 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013100 \n\
/* 08013100 */ PUSH {LR} \n\
/* 08013102 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08013104 */ CMP R0, 0xE @ Compare R0 and 0xE \n\
/* 08013106 */ BHI branch_08013128 \n\
/* 08013108 */ CMP R3, 0xB @ Compare R3 and 0xB \n\
/* 0801310a */ BHI branch_08013128 \n\
/* 0801310c */ LDR R2, =D_089ceafc \n\
/* 0801310e */ LSLS R1, R3, 0x4 \n\
/* 08013110 */ SUBS R1, R1, R3 @ Set R1 to R1 - R3 \n\
/* 08013112 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 08013114 */ LSLS R0, R1, 0x2 \n\
/* 08013116 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08013118 */ LSLS R0, R0, 0x2 \n\
/* 0801311a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801311c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801311e */ LDRSH R0, [R0, R1] \n\
/* 08013120 */ B branch_0801312c \n\
\n\
.ltorg \n\
 \n\
branch_08013128: \n\
/* 08013128 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801312a */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0801312c: \n\
/* 0801312c */ POP {R1} \n\
/* 0801312e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d86c \n\
/* 0801d86c */ PUSH {R4, R5, LR} \n\
/* 0801d86e */ SUB SP, 0x10 \n\
/* 0801d870 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801d872 */ LDR R2, =D_030055e0 \n\
/* 0801d874 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801d876 */ STRB R4, [R2] \n\
/* 0801d878 */ LDRB R1, [R2, 0x1] \n\
/* 0801d87a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801d87c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801d87e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d880 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801d882 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0801d884 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d886 */ STRB R0, [R2, 0x1] \n\
/* 0801d888 */ STR R4, [R2, 0x4] \n\
/* 0801d88a */ LDR R0, =D_0300155c \n\
/* 0801d88c */ LDRB R0, [R0] \n\
/* 0801d88e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d890 */ BEQ branch_0801d896 \n\
/* 0801d892 */ BL func_08006d80 \n\
 \n\
branch_0801d896: \n\
/* 0801d896 */ BL func_08006da8 \n\
/* 0801d89a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d89c */ BL func_08007014 \n\
/* 0801d8a0 */ BL func_08006fec \n\
/* 0801d8a4 */ BL func_080073f0 \n\
/* 0801d8a8 */ BL func_08003f28 \n\
/* 0801d8ac */ LDR R0, =func_0801d9cc \n\
/* 0801d8ae */ BL func_080013e8 \n\
/* 0801d8b2 */ STR R5, [SP] \n\
/* 0801d8b4 */ STR R4, [SP, 0x4] \n\
/* 0801d8b6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d8b8 */ BL func_0800b778 \n\
/* 0801d8bc */ MOV R0, SP @ Set R0 to SP \n\
/* 0801d8be */ BL func_0800b834 \n\
/* 0801d8c2 */ ADD SP, 0x10 \n\
/* 0801d8c4 */ POP {R4, R5} \n\
/* 0801d8c6 */ POP {R0} \n\
/* 0801d8c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

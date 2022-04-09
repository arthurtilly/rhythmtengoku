asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dabc \n\
/* 0801dabc */ PUSH {LR} \n\
/* 0801dabe */ LDR R0, =D_03004b10 \n\
/* 0801dac0 */ LDR R1, =0x854 \n\
/* 0801dac2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801dac4 */ LDRB R1, [R0] \n\
/* 0801dac6 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0801dac8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801daca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801dacc */ BEQ branch_0801daf0 \n\
/* 0801dace */ LDR R0, =D_030053c0 \n\
/* 0801dad0 */ LDR R0, [R0, 0x4] \n\
/* 0801dad2 */ BL func_08002828 \n\
/* 0801dad6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801dad8 */ BL func_08005ce0 \n\
/* 0801dadc */ BL func_0800bd2c \n\
/* 0801dae0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801dae2 */ B branch_0801daf2 \n\
\n\
.ltorg \n\
 \n\
branch_0801daf0: \n\
/* 0801daf0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801daf2: \n\
/* 0801daf2 */ POP {R1} \n\
/* 0801daf4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

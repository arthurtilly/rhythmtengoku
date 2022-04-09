asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010218 \n\
/* 08010218 */ PUSH {R4, LR} \n\
/* 0801021a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801021c */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0801021e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08010220 */ BEQ branch_0801022e \n\
/* 08010222 */ LDR R0, =D_03005380 \n\
/* 08010224 */ LDR R0, [R0] \n\
/* 08010226 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08010228 */ LDRSH R1, [R3, R4] \n\
/* 0801022a */ BL func_0804d820 \n\
 \n\
branch_0801022e: \n\
/* 0801022e */ POP {R4} \n\
/* 08010230 */ POP {R0} \n\
/* 08010232 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

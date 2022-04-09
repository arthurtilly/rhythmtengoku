asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010110 \n\
/* 08010110 */ PUSH {LR} \n\
/* 08010112 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08010114 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08010116 */ BEQ branch_08010126 \n\
/* 08010118 */ LDR R0, =D_03005380 \n\
/* 0801011a */ LDR R0, [R0] \n\
/* 0801011c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801011e */ LDRSH R1, [R1, R2] \n\
/* 08010120 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08010122 */ BL func_0804ddb0 \n\
 \n\
branch_08010126: \n\
/* 08010126 */ POP {R1} \n\
/* 08010128 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

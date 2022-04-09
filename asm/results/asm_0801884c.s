asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801884c \n\
/* 0801884c */ PUSH {LR} \n\
/* 0801884e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08018850 */ LDR R0, =D_030046a4 \n\
/* 08018852 */ LDR R0, [R0] \n\
/* 08018854 */ MOVS R2, 0x93 @ Set R2 to 0x93 \n\
/* 08018856 */ LSLS R2, R2, 0x3 \n\
/* 08018858 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801885a */ LDR R0, [R0] \n\
/* 0801885c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801885e */ BEQ branch_08018868 \n\
/* 08018860 */ LSLS R1, R1, 0x10 \n\
/* 08018862 */ ASRS R1, R1, 0x10 \n\
/* 08018864 */ BL func_0800ac90 \n\
 \n\
branch_08018868: \n\
/* 08018868 */ POP {R0} \n\
/* 0801886a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

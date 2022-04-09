asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005814 \n\
/* 08005814 */ PUSH {R4-R7, LR} \n\
/* 08005816 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08005818 */ PUSH {R7} \n\
/* 0800581a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800581c */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0800581e */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 08005820 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08005822 */ LDR R0, [R2] \n\
/* 08005824 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005826 */ BEQ branch_0800583e \n\
/* 08005828 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
 \n\
branch_0800582a: \n\
/* 0800582a */ LDMIA R4!, {R2} \n\
/* 0800582c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800582e */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08005830 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08005832 */ BL func_0800568c \n\
/* 08005836 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005838 */ LDR R0, [R4] \n\
/* 0800583a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800583c */ BNE branch_0800582a \n\
 \n\
branch_0800583e: \n\
/* 0800583e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08005840 */ POP {R3} \n\
/* 08005842 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005844 */ POP {R4-R7} \n\
/* 08005846 */ POP {R1} \n\
/* 08005848 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010040 \n\
/* 08010040 */ PUSH {R4, LR} \n\
/* 08010042 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08010044 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08010046 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08010048 */ BEQ branch_0801005a \n\
/* 0801004a */ LDR R0, =D_03005380 \n\
/* 0801004c */ LDR R0, [R0] \n\
/* 0801004e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08010050 */ LDRSH R1, [R3, R4] \n\
/* 08010052 */ LSLS R2, R2, 0x10 \n\
/* 08010054 */ LSRS R2, R2, 0x10 \n\
/* 08010056 */ BL func_0804d770 \n\
 \n\
branch_0801005a: \n\
/* 0801005a */ POP {R4} \n\
/* 0801005c */ POP {R0} \n\
/* 0801005e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

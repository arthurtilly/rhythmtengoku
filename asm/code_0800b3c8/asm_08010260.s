asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010260 \n\
/* 08010260 */ PUSH {R4, LR} \n\
/* 08010262 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08010264 */ LSLS R1, R1, 0x18 \n\
/* 08010266 */ LSRS R2, R1, 0x18 \n\
/* 08010268 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0801026a */ BEQ branch_0801027c \n\
/* 0801026c */ LDR R0, =D_03005380 \n\
/* 0801026e */ LDR R0, [R0] \n\
/* 08010270 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08010272 */ LDRSH R1, [R3, R4] \n\
/* 08010274 */ LSLS R2, R2, 0x18 \n\
/* 08010276 */ ASRS R2, R2, 0x18 \n\
/* 08010278 */ BL func_0804df4c \n\
 \n\
branch_0801027c: \n\
/* 0801027c */ POP {R4} \n\
/* 0801027e */ POP {R0} \n\
/* 08010280 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010174 \n\
/* 08010174 */ PUSH {R4, LR} \n\
/* 08010176 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08010178 */ LSLS R1, R1, 0x10 \n\
/* 0801017a */ LSRS R2, R1, 0x10 \n\
/* 0801017c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0801017e */ BEQ branch_0801018c \n\
/* 08010180 */ LDR R0, =D_03005380 \n\
/* 08010182 */ LDR R0, [R0] \n\
/* 08010184 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08010186 */ LDRSH R1, [R3, R4] \n\
/* 08010188 */ BL func_0804dcb8 \n\
 \n\
branch_0801018c: \n\
/* 0801018c */ POP {R4} \n\
/* 0801018e */ POP {R0} \n\
/* 08010190 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010130 \n\
/* 08010130 */ PUSH {LR} \n\
/* 08010132 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08010134 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08010136 */ BEQ branch_08010146 \n\
/* 08010138 */ LDR R0, =D_03005380 \n\
/* 0801013a */ LDR R0, [R0] \n\
/* 0801013c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801013e */ LDRSH R1, [R1, R2] \n\
/* 08010140 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08010142 */ BL func_0804ddb0 \n\
 \n\
branch_08010146: \n\
/* 08010146 */ POP {R1} \n\
/* 08010148 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

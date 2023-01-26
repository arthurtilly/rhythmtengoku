asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010904 \n\
/* 08010904 */ PUSH {R4-R6, LR} \n\
/* 08010906 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08010908 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0801090a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801090c */ MOVS R6, 0xFF @ Set R6 to 0xFF \n\
/* 0801090e */ LDR R3, =D_030055a0 \n\
 \n\
branch_08010910: \n\
/* 08010910 */ LDRB R2, [R3] \n\
/* 08010912 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08010914 */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 08010916 */ BEQ branch_08010926 \n\
/* 08010918 */ LDRH R0, [R3, 0x4] \n\
/* 0801091a */ SUBS R0, R5, R0 @ Set R0 to R5 - R0 \n\
/* 0801091c */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0801091e */ BLS branch_08010926 \n\
/* 08010920 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08010922 */ ORRS R0, R6 @ Set R0 to R0 | R6 \n\
/* 08010924 */ STRB R0, [R3] \n\
 \n\
branch_08010926: \n\
/* 08010926 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 08010928 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0801092a */ CMP R1, 0x4 @ Compare R1 and 0x4 \n\
/* 0801092c */ BLS branch_08010910 \n\
/* 0801092e */ POP {R4-R6} \n\
/* 08010930 */ POP {R0} \n\
/* 08010932 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

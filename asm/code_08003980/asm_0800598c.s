asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800598c \n\
/* 0800598c */ PUSH {R4-R7, LR} \n\
/* 0800598e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08005990 */ PUSH {R7} \n\
/* 08005992 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08005994 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08005996 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08005998 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0800599a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800599c */ BEQ branch_08005a00 \n\
/* 0800599e */ LDR R0, [R4] \n\
/* 080059a0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080059a2 */ BEQ branch_08005a00 \n\
/* 080059a4 */ LDR R0, [SP, 0x18] \n\
/* 080059a6 */ LSLS R6, R0, 0x10 \n\
 \n\
branch_080059a8: \n\
/* 080059a8 */ LDR R1, [R4] \n\
/* 080059aa */ LDRB R0, [R1] \n\
/* 080059ac */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080059ae */ BEQ branch_080059c0 \n\
/* 080059b0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080059b2 */ BGT branch_080059ba \n\
/* 080059b4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080059b6 */ BEQ branch_080059c0 \n\
/* 080059b8 */ B branch_080059f8 \n\
 \n\
branch_080059ba: \n\
/* 080059ba */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080059bc */ BEQ branch_080059da \n\
/* 080059be */ B branch_080059f8 \n\
 \n\
branch_080059c0: \n\
/* 080059c0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080059c2 */ LDRSB R0, [R1, R0] \n\
/* 080059c4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080059c6 */ BLT branch_080059f8 \n\
/* 080059c8 */ LSLS R0, R0, 0x1 \n\
/* 080059ca */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080059cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080059ce */ LDRSH R1, [R0, R2] \n\
/* 080059d0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080059d2 */ LSRS R2, R6, 0x10 \n\
/* 080059d4 */ BL func_0804d770 \n\
/* 080059d8 */ B branch_080059f8 \n\
 \n\
branch_080059da: \n\
/* 080059da */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080059dc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080059de */ BEQ branch_080059f8 \n\
/* 080059e0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080059e2 */ LDRSB R0, [R1, R0] \n\
/* 080059e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080059e6 */ BLT branch_080059f8 \n\
/* 080059e8 */ LSLS R0, R0, 0x1 \n\
/* 080059ea */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080059ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080059ee */ LDRSH R1, [R0, R2] \n\
/* 080059f0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080059f2 */ LSRS R2, R6, 0x10 \n\
/* 080059f4 */ BL func_0804d770 \n\
 \n\
branch_080059f8: \n\
/* 080059f8 */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 080059fa */ LDR R0, [R4] \n\
/* 080059fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080059fe */ BNE branch_080059a8 \n\
 \n\
branch_08005a00: \n\
/* 08005a00 */ POP {R3} \n\
/* 08005a02 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005a04 */ POP {R4-R7} \n\
/* 08005a06 */ POP {R0} \n\
/* 08005a08 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

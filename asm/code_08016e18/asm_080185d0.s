asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080185d0 \n\
/* 080185d0 */ PUSH {R4-R7, LR} \n\
/* 080185d2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080185d4 */ PUSH {R7} \n\
/* 080185d6 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080185d8 */ LSLS R0, R0, 0x10 \n\
/* 080185da */ LSRS R7, R0, 0x10 \n\
/* 080185dc */ LSLS R1, R1, 0x10 \n\
/* 080185de */ LSRS R1, R1, 0x10 \n\
/* 080185e0 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080185e2 */ LDR R6, =D_03005380 \n\
/* 080185e4 */ LDR R0, [R6] \n\
/* 080185e6 */ LDR R5, =D_030046a4 \n\
/* 080185e8 */ LDR R1, [R5] \n\
/* 080185ea */ LDR R2, =0x496 \n\
/* 080185ec */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080185ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080185f0 */ LDRSH R1, [R1, R2] \n\
/* 080185f2 */ LSLS R2, R4, 0x10 \n\
/* 080185f4 */ LSRS R2, R2, 0x10 \n\
/* 080185f6 */ BL func_0804d770 \n\
/* 080185fa */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080185fc */ BEQ branch_08018618 \n\
/* 080185fe */ LDR R0, [R6] \n\
/* 08018600 */ LDR R1, [R5] \n\
/* 08018602 */ LDR R4, =0x496 \n\
/* 08018604 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08018606 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018608 */ LDRSH R1, [R1, R2] \n\
/* 0801860a */ LSLS R2, R7, 0x10 \n\
/* 0801860c */ ASRS R2, R2, 0x10 \n\
/* 0801860e */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08018610 */ LSLS R3, R4, 0x10 \n\
/* 08018612 */ ASRS R3, R3, 0x10 \n\
/* 08018614 */ BL func_0804d5d4 \n\
 \n\
branch_08018618: \n\
/* 08018618 */ POP {R3} \n\
/* 0801861a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801861c */ POP {R4-R7} \n\
/* 0801861e */ POP {R0} \n\
/* 08018620 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

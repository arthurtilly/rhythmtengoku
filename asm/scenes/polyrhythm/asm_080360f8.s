asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080360f8 \n\
/* 080360f8 */ PUSH {R4-R7, LR} \n\
/* 080360fa */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080360fc */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080360fe */ PUSH {R6, R7} \n\
/* 08036100 */ SUB SP, 0x4 \n\
/* 08036102 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08036104 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08036106 */ LDR R0, =D_030055d0 \n\
/* 08036108 */ LDR R2, [R0] \n\
/* 0803610a */ LDRB R1, [R2] \n\
/* 0803610c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803610e */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08036110 */ BEQ branch_080361ae \n\
/* 08036112 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 08036114 */ BEQ branch_080361ae \n\
/* 08036116 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08036118 */ BEQ branch_08036124 \n\
/* 0803611a */ MOVS R1, 0xBA @ Set R1 to 0xBA \n\
/* 0803611c */ LSLS R1, R1, 0x2 \n\
/* 0803611e */ B branch_08036126 \n\
\n\
.ltorg \n\
 \n\
branch_08036124: \n\
/* 08036124 */ LDR R1, =0x2ea \n\
 \n\
branch_08036126: \n\
/* 08036126 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08036128 */ LDRH R5, [R0] \n\
/* 0803612a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803612c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0803612e */ BLT branch_080361a0 \n\
/* 08036130 */ LSLS R0, R7, 0x7 \n\
/* 08036132 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08036134 */ LDR R4, [R4] \n\
/* 08036136 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08036138 */ LSLS R0, R2, 0x3 \n\
/* 0803613a */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0803613c */ LDR R0, =D_03005380 \n\
/* 0803613e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08036140 */ LDR R0, [R0] \n\
/* 08036142 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036144 */ LDRSH R1, [R4, R2] \n\
/* 08036146 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036148 */ BL func_0804ddb0 \n\
/* 0803614c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803614e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08036150 */ LDR R0, [R1] \n\
/* 08036152 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036154 */ LDRSH R1, [R4, R2] \n\
/* 08036156 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08036158 */ BL func_0804ddb0 \n\
/* 0803615c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803615e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08036160 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08036162 */ BL func_080364d4 \n\
/* 08036166 */ SUBS R0, 0x5 @ Subtract 0x5 from R0 \n\
/* 08036168 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803616a */ LDR R1, [R2] \n\
/* 0803616c */ LSLS R5, R5, 0x10 \n\
/* 0803616e */ ASRS R5, R5, 0x10 \n\
/* 08036170 */ LSLS R6, R6, 0x10 \n\
/* 08036172 */ ASRS R6, R6, 0x10 \n\
/* 08036174 */ LSLS R4, R4, 0x10 \n\
/* 08036176 */ ASRS R4, R4, 0x10 \n\
/* 08036178 */ LSLS R0, R0, 0x10 \n\
/* 0803617a */ LSRS R0, R0, 0x10 \n\
/* 0803617c */ STR R0, [SP] \n\
/* 0803617e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08036180 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08036182 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08036184 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08036186 */ BL func_0804d55c \n\
/* 0803618a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803618c */ LDR R0, [R1] \n\
/* 0803618e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08036190 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036192 */ BL func_0804d770 \n\
/* 08036196 */ B branch_080361ae \n\
\n\
.ltorg \n\
 \n\
branch_080361a0: \n\
/* 080361a0 */ LDR R0, =D_03005380 \n\
/* 080361a2 */ LDR R0, [R0] \n\
/* 080361a4 */ LSLS R1, R5, 0x10 \n\
/* 080361a6 */ ASRS R1, R1, 0x10 \n\
/* 080361a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080361aa */ BL func_0804d770 \n\
 \n\
branch_080361ae: \n\
/* 080361ae */ ADD SP, 0x4 \n\
/* 080361b0 */ POP {R3, R4} \n\
/* 080361b2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080361b4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080361b6 */ POP {R4-R7} \n\
/* 080361b8 */ POP {R0} \n\
/* 080361ba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

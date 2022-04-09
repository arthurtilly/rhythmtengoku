asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080020ec \n\
/* 080020ec */ PUSH {R4-R7, LR} \n\
/* 080020ee */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080020f0 */ LDR R0, =D_03000338 \n\
/* 080020f2 */ STR R1, [R0] \n\
/* 080020f4 */ LDR R0, =D_03000360 \n\
/* 080020f6 */ STRB R6, [R0] \n\
/* 080020f8 */ LDR R2, =D_03000138 \n\
/* 080020fa */ LDR R1, =D_03000238 \n\
/* 080020fc */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080020fe */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08002100 */ BCS branch_08002136 \n\
/* 08002102 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08002104 */ LSLS R0, R0, 0x1 \n\
/* 08002106 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002108 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800210a */ LDR R7, =D_03000340 \n\
 \n\
branch_0800210c: \n\
/* 0800210c */ STRH R4, [R2] \n\
/* 0800210e */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08002110 */ STRH R3, [R2] \n\
/* 08002112 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08002114 */ STRH R3, [R2] \n\
/* 08002116 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08002118 */ STRH R4, [R2] \n\
/* 0800211a */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0800211c */ STRH R4, [R1] \n\
/* 0800211e */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08002120 */ STRH R3, [R1] \n\
/* 08002122 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08002124 */ STRH R3, [R1] \n\
/* 08002126 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08002128 */ STRH R4, [R1] \n\
/* 0800212a */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0800212c */ ADDS R0, R5, R7 @ Set R0 to R5 + R7 \n\
/* 0800212e */ STRB R3, [R0] \n\
/* 08002130 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08002132 */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08002134 */ BCC branch_0800210c \n\
 \n\
branch_08002136: \n\
/* 08002136 */ POP {R4-R7} \n\
/* 08002138 */ POP {R0} \n\
/* 0800213a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

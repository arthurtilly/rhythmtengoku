asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080082cc \n\
/* 080082cc */ PUSH {R4-R7, LR} \n\
/* 080082ce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080082d0 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080082d2 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 080082d4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080082d6 */ CMP R5, 0x9 @ Compare R5 and 0x9 \n\
/* 080082d8 */ BLS branch_080082e6 \n\
 \n\
branch_080082da: \n\
/* 080082da */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 080082dc */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080082de */ BL __udivsi3 \n\
/* 080082e2 */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 080082e4 */ BHI branch_080082da \n\
 \n\
branch_080082e6: \n\
/* 080082e6 */ LSLS R0, R7, 0x1 \n\
/* 080082e8 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080082ea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080082ec */ STRB R0, [R4] \n\
/* 080082ee */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080082f0 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 080082f2 */ BCS branch_0800831c \n\
 \n\
branch_080082f4: \n\
/* 080082f4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080082f6 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080082f8 */ BL __umodsi3 \n\
/* 080082fc */ LSLS R0, R0, 0x1 \n\
/* 080082fe */ LDR R1, =D_08936c64 \n\
/* 08008300 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08008302 */ SUBS R4, 0x2 @ Subtract 0x2 from R4 \n\
/* 08008304 */ LDRB R1, [R0] \n\
/* 08008306 */ STRB R1, [R4] \n\
/* 08008308 */ LDRB R0, [R0, 0x1] \n\
/* 0800830a */ STRB R0, [R4, 0x1] \n\
/* 0800830c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800830e */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08008310 */ BL __udivsi3 \n\
/* 08008314 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08008316 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08008318 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 0800831a */ BCC branch_080082f4 \n\
 \n\
branch_0800831c: \n\
/* 0800831c */ POP {R4-R7} \n\
/* 0800831e */ POP {R0} \n\
/* 08008320 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

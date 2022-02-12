asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080205e8 \n\
/* 080205e8 */ PUSH {R4-R6, LR} \n\
/* 080205ea */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080205ec */ LDR R0, =D_030055d0 \n\
/* 080205ee */ LDR R4, [R0] \n\
/* 080205f0 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 080205f2 */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 080205f4 */ LDR R0, [R4, 0x8] \n\
/* 080205f6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080205f8 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080205fa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080205fc */ BL func_08010008 \n\
/* 08020600 */ LDR R0, [R4, 0x8] \n\
/* 08020602 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08020604 */ BL func_0800ffc0 \n\
/* 08020608 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0802060a */ BL func_0800c3a4 \n\
/* 0802060e */ STR R0, [R5, 0x10] \n\
/* 08020610 */ BL func_08018054 \n\
/* 08020614 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08020616 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020618 */ BGE branch_0802061c \n\
/* 0802061a */ SUBS R1, 0x6 @ Subtract 0x6 from R1 \n\
 \n\
branch_0802061c: \n\
/* 0802061c */ STR R1, [R6, 0x20] \n\
/* 0802061e */ LDR R0, =0x0000fff8 \n\
/* 08020620 */ STRH R0, [R6, 0xE] \n\
/* 08020622 */ LDR R0, [R6, 0x14] \n\
/* 08020624 */ LSLS R0, R0, 0x8 \n\
/* 08020626 */ STR R0, [R6, 0x14] \n\
/* 08020628 */ LDR R0, =0xfffffc00 \n\
/* 0802062a */ STR R0, [R6, 0x24] \n\
/* 0802062c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802062e */ STRB R0, [R6] \n\
/* 08020630 */ POP {R4-R6} \n\
/* 08020632 */ POP {R0} \n\
/* 08020634 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

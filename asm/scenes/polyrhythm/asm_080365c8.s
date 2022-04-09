asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080365c8 \n\
/* 080365c8 */ PUSH {R4-R6, LR} \n\
/* 080365ca */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080365cc */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080365ce */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 080365d0 */ SUBS R1, R4, 0x2 @ Set R1 to R4 - 0x2 \n\
/* 080365d2 */ ASRS R1, R1, 0x4 \n\
/* 080365d4 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 080365d6 */ ASRS R4, R4, 0x4 \n\
/* 080365d8 */ LDRB R0, [R5] \n\
/* 080365da */ LSRS R0, R0, 0x7 \n\
/* 080365dc */ BL func_0803648c \n\
/* 080365e0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080365e2 */ LDRB R0, [R5] \n\
/* 080365e4 */ LSRS R0, R0, 0x7 \n\
/* 080365e6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080365e8 */ BL func_0803648c \n\
/* 080365ec */ CMP R0, R6 @ Check R0 - R6 \n\
/* 080365ee */ BGE branch_080365f2 \n\
/* 080365f0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
 \n\
branch_080365f2: \n\
/* 080365f2 */ POP {R4-R6} \n\
/* 080365f4 */ POP {R1} \n\
/* 080365f6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

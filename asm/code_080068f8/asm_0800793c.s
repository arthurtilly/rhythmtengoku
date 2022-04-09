asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800793c \n\
/* 0800793c */ PUSH {R4-R6, LR} \n\
/* 0800793e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08007940 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 08007942 */ LDRSH R0, [R6, R1] \n\
/* 08007944 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08007946 */ LDRSH R1, [R6, R2] \n\
/* 08007948 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800794a */ LDRH R1, [R6, 0xE] \n\
/* 0800794c */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800794e */ LDRH R1, [R6, 0x10] \n\
/* 08007950 */ BL func_08007b80 \n\
/* 08007954 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08007956 */ LDRSH R5, [R6, R1] \n\
/* 08007958 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0800795a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800795c */ BL func_080019a4 \n\
/* 08007960 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08007962 */ LDRSH R1, [R6, R2] \n\
/* 08007964 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08007966 */ MULS R4, R0 @ Multiply R4 by R0 \n\
/* 08007968 */ ASRS R4, R4, 0x8 \n\
/* 0800796a */ LDRH R0, [R6, 0x2] \n\
/* 0800796c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0800796e */ LSLS R4, R4, 0x10 \n\
/* 08007970 */ LSRS R4, R4, 0x10 \n\
/* 08007972 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08007974 */ BL func_080019a4 \n\
/* 08007978 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0800797a */ LDRSH R1, [R6, R2] \n\
/* 0800797c */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800797e */ MULS R3, R0 @ Multiply R3 by R0 \n\
/* 08007980 */ ASRS R3, R3, 0x8 \n\
/* 08007982 */ LDRH R0, [R6, 0x4] \n\
/* 08007984 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08007986 */ LDR R0, =D_03005380 \n\
/* 08007988 */ LDR R0, [R0] \n\
/* 0800798a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800798c */ LDRSH R1, [R6, R2] \n\
/* 0800798e */ LSLS R4, R4, 0x10 \n\
/* 08007990 */ ASRS R4, R4, 0x10 \n\
/* 08007992 */ LSLS R3, R3, 0x10 \n\
/* 08007994 */ ASRS R3, R3, 0x10 \n\
/* 08007996 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08007998 */ BL func_0804d5d4 \n\
/* 0800799c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800799e */ LDRH R0, [R6, 0xE] \n\
/* 080079a0 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080079a2 */ STRH R0, [R6, 0xE] \n\
/* 080079a4 */ LSLS R0, R0, 0x10 \n\
/* 080079a6 */ LSRS R0, R0, 0x10 \n\
/* 080079a8 */ LDRH R6, [R6, 0x10] \n\
/* 080079aa */ CMP R0, R6 @ Check R0 - R6 \n\
/* 080079ac */ BLS branch_080079b0 \n\
/* 080079ae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_080079b0: \n\
/* 080079b0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080079b2 */ POP {R4-R6} \n\
/* 080079b4 */ POP {R1} \n\
/* 080079b6 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

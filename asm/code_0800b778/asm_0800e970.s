asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e970 \n\
/* 0800e970 */ PUSH {R4, R5, LR} \n\
/* 0800e972 */ LDR R5, =D_030053c0 \n\
/* 0800e974 */ LDRB R0, [R5, 0x1] \n\
/* 0800e976 */ LSLS R0, R0, 0x1B \n\
/* 0800e978 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e97a */ BGE branch_0800e9ca \n\
/* 0800e97c */ MOVS R1, 0xB5 @ Set R1 to 0xB5 \n\
/* 0800e97e */ LSLS R1, R1, 0x1 \n\
/* 0800e980 */ ADDS R0, R5, R1 @ Set R0 to R5 + R1 \n\
/* 0800e982 */ LDRH R0, [R0] \n\
/* 0800e984 */ BL func_0800c3a4 \n\
/* 0800e988 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800e98a */ MOVS R2, 0xB6 @ Set R2 to 0xB6 \n\
/* 0800e98c */ LSLS R2, R2, 0x1 \n\
/* 0800e98e */ ADDS R4, R5, R2 @ Set R4 to R5 + R2 \n\
/* 0800e990 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800e992 */ LSLS R0, R0, 0x9 \n\
/* 0800e994 */ BL __udivsi3 \n\
/* 0800e998 */ LDRH R1, [R4] \n\
/* 0800e99a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800e99c */ STRH R1, [R4] \n\
/* 0800e99e */ LSLS R1, R1, 0x10 \n\
/* 0800e9a0 */ LSRS R1, R1, 0x18 \n\
/* 0800e9a2 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 0800e9a4 */ LSLS R3, R3, 0x1 \n\
/* 0800e9a6 */ ADDS R0, R5, R3 @ Set R0 to R5 + R3 \n\
/* 0800e9a8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e9aa */ LDRSH R2, [R0, R3] \n\
/* 0800e9ac */ LDR R0, =D_08935fcc \n\
/* 0800e9ae */ LSLS R1, R1, 0x1 \n\
/* 0800e9b0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800e9b2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e9b4 */ LDRSH R0, [R1, R3] \n\
/* 0800e9b6 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800e9b8 */ MULS R4, R0 @ Multiply R4 by R0 \n\
/* 0800e9ba */ ASRS R4, R4, 0x8 \n\
/* 0800e9bc */ BL func_0800eaa0 \n\
/* 0800e9c0 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0800e9c2 */ LSLS R0, R0, 0x8 \n\
/* 0800e9c4 */ ASRS R0, R0, 0x10 \n\
/* 0800e9c6 */ BL func_0800c0c4 \n\
 \n\
branch_0800e9ca: \n\
/* 0800e9ca */ POP {R4, R5} \n\
/* 0800e9cc */ POP {R0} \n\
/* 0800e9ce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

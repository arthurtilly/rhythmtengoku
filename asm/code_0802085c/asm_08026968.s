asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08026968 \n\
/* 08026968 */ PUSH {R4, R5, LR} \n\
/* 0802696a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802696c */ LDR R4, =D_030055d0 \n\
/* 0802696e */ LDR R1, [R4] \n\
/* 08026970 */ MOVS R2, 0xE8 @ Set R2 to 0xE8 \n\
/* 08026972 */ LSLS R2, R2, 0x2 \n\
/* 08026974 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08026976 */ LDRB R0, [R0] \n\
/* 08026978 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802697a */ BEQ branch_080269de \n\
/* 0802697c */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802697e */ BEQ branch_080269ac \n\
/* 08026980 */ BL func_0800c1a8 \n\
/* 08026984 */ LDR R2, [R4] \n\
/* 08026986 */ MOVS R3, 0xE7 @ Set R3 to 0xE7 \n\
/* 08026988 */ LSLS R3, R3, 0x2 \n\
/* 0802698a */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802698c */ STR R0, [R1] \n\
/* 0802698e */ LDR R0, =D_03005380 \n\
/* 08026990 */ LDR R0, [R0] \n\
/* 08026992 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 08026994 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08026996 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026998 */ LDRSH R1, [R1, R2] \n\
/* 0802699a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802699c */ BL func_0804d770 \n\
/* 080269a0 */ B branch_080269de \n\
\n\
.ltorg \n\
 \n\
branch_080269ac: \n\
/* 080269ac */ MOVS R3, 0xE7 @ Set R3 to 0xE7 \n\
/* 080269ae */ LSLS R3, R3, 0x2 \n\
/* 080269b0 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080269b2 */ LDR R0, [R0] \n\
/* 080269b4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080269b6 */ BEQ branch_080269de \n\
/* 080269b8 */ LSLS R0, R0, 0x10 \n\
/* 080269ba */ LSRS R0, R0, 0x10 \n\
/* 080269bc */ BL func_0800bdf8 \n\
/* 080269c0 */ LDR R1, [R4] \n\
/* 080269c2 */ MOVS R2, 0xE7 @ Set R2 to 0xE7 \n\
/* 080269c4 */ LSLS R2, R2, 0x2 \n\
/* 080269c6 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080269c8 */ STR R5, [R0] \n\
/* 080269ca */ LDR R0, =D_03005380 \n\
/* 080269cc */ LDR R0, [R0] \n\
/* 080269ce */ MOVS R3, 0xE9 @ Set R3 to 0xE9 \n\
/* 080269d0 */ LSLS R3, R3, 0x2 \n\
/* 080269d2 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080269d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080269d6 */ LDRSH R1, [R1, R2] \n\
/* 080269d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080269da */ BL func_0804d770 \n\
 \n\
branch_080269de: \n\
/* 080269de */ POP {R4, R5} \n\
/* 080269e0 */ POP {R0} \n\
/* 080269e2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

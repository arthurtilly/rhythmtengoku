asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08029fe8 \n\
/* 08029fe8 */ PUSH {R4-R7, LR} \n\
/* 08029fea */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08029fec */ PUSH {R7} \n\
/* 08029fee */ SUB SP, 0xC \n\
/* 08029ff0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08029ff2 */ LDR R0, =D_030055d0 \n\
/* 08029ff4 */ LDR R0, [R0] \n\
/* 08029ff6 */ MOVS R1, 0xEE @ Set R1 to 0xEE \n\
/* 08029ff8 */ LSLS R1, R1, 0x2 \n\
/* 08029ffa */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 08029ffc */ LDR R0, [R6, 0x8] \n\
/* 08029ffe */ ADDS R2, R0, 0x1 @ Set R2 to R0 + 0x1 \n\
/* 0802a000 */ STR R2, [R6, 0x8] \n\
/* 0802a002 */ LDR R1, [R6, 0xC] \n\
/* 0802a004 */ CMP R2, R1 @ Check R2 - R1 \n\
/* 0802a006 */ BLT branch_0802a054 \n\
/* 0802a008 */ LDR R4, =D_03005380 \n\
/* 0802a00a */ LDR R0, [R4] \n\
/* 0802a00c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a00e */ LDRSH R1, [R6, R2] \n\
/* 0802a010 */ LDR R2, =D_088c9ab8 \n\
/* 0802a012 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802a014 */ STR R3, [SP] \n\
/* 0802a016 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a018 */ STR R3, [SP, 0x4] \n\
/* 0802a01a */ STR R3, [SP, 0x8] \n\
/* 0802a01c */ BL func_0804d8f8 \n\
/* 0802a020 */ LDRB R1, [R6] \n\
/* 0802a022 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802a024 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802a026 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802a028 */ STRB R0, [R6] \n\
/* 0802a02a */ LSLS R0, R0, 0x1B \n\
/* 0802a02c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802a02e */ BEQ branch_0802a036 \n\
/* 0802a030 */ LDRH R0, [R5, 0x8] \n\
/* 0802a032 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0802a034 */ STRH R0, [R5, 0x8] \n\
 \n\
branch_0802a036: \n\
/* 0802a036 */ LDRH R0, [R5, 0x8] \n\
/* 0802a038 */ STRH R0, [R5, 0x6] \n\
/* 0802a03a */ LDR R0, [R4] \n\
/* 0802a03c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a03e */ LDRSH R1, [R6, R2] \n\
/* 0802a040 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0802a042 */ BL func_0804d648 \n\
/* 0802a046 */ B branch_0802a130 \n\
\n\
.ltorg \n\
 \n\
branch_0802a054: \n\
/* 0802a054 */ LDRB R0, [R6] \n\
/* 0802a056 */ LSLS R0, R0, 0x1B \n\
/* 0802a058 */ LSRS R7, R0, 0x1F \n\
/* 0802a05a */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0802a05c */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0802a05e */ BEQ branch_0802a062 \n\
/* 0802a060 */ MOVS R0, 0x1B @ Set R0 to 0x1B \n\
 \n\
branch_0802a062: \n\
/* 0802a062 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0802a064 */ BL __divsi3 \n\
/* 0802a068 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0802a06a */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802a06c */ LSLS R1, R0, 0x5 \n\
/* 0802a06e */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802a070 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0802a072 */ LSLS R1, R1, 0x1 \n\
/* 0802a074 */ BL __divsi3 \n\
/* 0802a078 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 0802a07a */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0802a07c */ BEQ branch_0802a086 \n\
/* 0802a07e */ LDRH R0, [R5, 0x8] \n\
/* 0802a080 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0802a082 */ STRH R0, [R5, 0x6] \n\
/* 0802a084 */ B branch_0802a09a \n\
 \n\
branch_0802a086: \n\
/* 0802a086 */ LDR R0, =D_03005380 \n\
/* 0802a088 */ LDR R0, [R0] \n\
/* 0802a08a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a08c */ LDRSH R1, [R6, R2] \n\
/* 0802a08e */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0802a090 */ SUBS R2, R2, R4 @ Set R2 to R2 - R4 \n\
/* 0802a092 */ LSLS R2, R2, 0x10 \n\
/* 0802a094 */ ASRS R2, R2, 0x10 \n\
/* 0802a096 */ BL func_0804d648 \n\
 \n\
branch_0802a09a: \n\
/* 0802a09a */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 0802a09c */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802a09e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802a0a0 */ LDRH R0, [R0] \n\
/* 0802a0a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802a0a4 */ BEQ branch_0802a130 \n\
/* 0802a0a6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802a0a8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802a0aa */ STRH R0, [R1] \n\
/* 0802a0ac */ LSLS R0, R0, 0x10 \n\
/* 0802a0ae */ LSRS R7, R0, 0x10 \n\
/* 0802a0b0 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0802a0b2 */ BNE branch_0802a130 \n\
/* 0802a0b4 */ LDR R4, =D_030055d0 \n\
/* 0802a0b6 */ LDR R2, [R4] \n\
/* 0802a0b8 */ LDRB R0, [R2, 0x1] \n\
/* 0802a0ba */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802a0bc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802a0be */ STRB R0, [R2, 0x1] \n\
/* 0802a0c0 */ LDR R0, [R4] \n\
/* 0802a0c2 */ MOVS R2, 0xAA @ Set R2 to 0xAA \n\
/* 0802a0c4 */ LSLS R2, R2, 0x3 \n\
/* 0802a0c6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802a0c8 */ LDR R0, [R0] \n\
/* 0802a0ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802a0cc */ BEQ branch_0802a0d2 \n\
/* 0802a0ce */ BL func_0801d95c \n\
 \n\
branch_0802a0d2: \n\
/* 0802a0d2 */ LDR R0, [R4] \n\
/* 0802a0d4 */ LDR R1, =0x00000554 \n\
/* 0802a0d6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a0d8 */ LDRB R0, [R0] \n\
/* 0802a0da */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802a0dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a0de */ BL func_08017928 \n\
/* 0802a0e2 */ LDR R4, =D_03005380 \n\
/* 0802a0e4 */ LDR R0, [R4] \n\
/* 0802a0e6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a0e8 */ LDRSH R1, [R6, R2] \n\
/* 0802a0ea */ LDR R2, =D_088ca158 \n\
/* 0802a0ec */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0802a0ee */ STR R5, [SP] \n\
/* 0802a0f0 */ STR R7, [SP, 0x4] \n\
/* 0802a0f2 */ STR R7, [SP, 0x8] \n\
/* 0802a0f4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a0f6 */ BL func_0804d8f8 \n\
/* 0802a0fa */ LDR R0, [R4] \n\
/* 0802a0fc */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802a0fe */ ADDS R1, 0x5C @ Add 0x5C to R1 \n\
/* 0802a100 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a102 */ LDRSH R1, [R1, R2] \n\
/* 0802a104 */ LDR R2, =D_088ca140 \n\
/* 0802a106 */ STR R5, [SP] \n\
/* 0802a108 */ STR R7, [SP, 0x4] \n\
/* 0802a10a */ STR R7, [SP, 0x8] \n\
/* 0802a10c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a10e */ BL func_0804d8f8 \n\
/* 0802a112 */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 0802a114 */ BL func_0800c3a4 \n\
/* 0802a118 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802a11a */ STRH R0, [R1] \n\
/* 0802a11c */ LDRB R1, [R6] \n\
/* 0802a11e */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802a120 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802a122 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802a124 */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0802a126 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802a128 */ STRB R0, [R6] \n\
/* 0802a12a */ LDR R0, =D_08a9e7a0 \n\
/* 0802a12c */ BL func_08002634 \n\
 \n\
branch_0802a130: \n\
/* 0802a130 */ ADD SP, 0xC \n\
/* 0802a132 */ POP {R3} \n\
/* 0802a134 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a136 */ POP {R4-R7} \n\
/* 0802a138 */ POP {R0} \n\
/* 0802a13a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

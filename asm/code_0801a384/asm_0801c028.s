asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c028 \n\
/* 0801c028 */ PUSH {R4, R5, LR} \n\
/* 0801c02a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801c02c */ LDR R0, =D_030046a4 \n\
/* 0801c02e */ LDR R0, [R0] \n\
/* 0801c030 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801c032 */ LSLS R1, R1, 0x2 \n\
/* 0801c034 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c036 */ LDR R0, [R0] \n\
/* 0801c038 */ BL func_0800b368 \n\
/* 0801c03c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c03e */ BNE branch_0801c072 \n\
/* 0801c040 */ BL func_0801c8b8 \n\
/* 0801c044 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c046 */ BEQ branch_0801c072 \n\
/* 0801c048 */ LDR R0, =D_03004afc \n\
/* 0801c04a */ LDRH R1, [R0] \n\
/* 0801c04c */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0801c04e */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0801c050 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801c052 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801c054 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c056 */ BEQ branch_0801c05a \n\
/* 0801c058 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_0801c05a: \n\
/* 0801c05a */ LDR R0, =D_030053b8 \n\
/* 0801c05c */ LDRH R1, [R0] \n\
/* 0801c05e */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801c060 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801c062 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c064 */ BEQ branch_0801c068 \n\
/* 0801c066 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
 \n\
branch_0801c068: \n\
/* 0801c068 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801c06a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801c06c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c06e */ BEQ branch_0801c072 \n\
/* 0801c070 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_0801c072: \n\
/* 0801c072 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801c074 */ BNE branch_0801c078 \n\
/* 0801c076 */ B branch_0801c184 \n\
 \n\
branch_0801c078: \n\
/* 0801c078 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801c07a */ BHI branch_0801c090 \n\
/* 0801c07c */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801c07e */ BEQ branch_0801c09c \n\
/* 0801c080 */ B branch_0801c1ac \n\
\n\
.ltorg \n\
 \n\
branch_0801c090: \n\
/* 0801c090 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0801c092 */ BNE branch_0801c096 \n\
/* 0801c094 */ B branch_0801c19c \n\
 \n\
branch_0801c096: \n\
/* 0801c096 */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 0801c098 */ BEQ branch_0801c11c \n\
/* 0801c09a */ B branch_0801c1ac \n\
 \n\
branch_0801c09c: \n\
/* 0801c09c */ LDR R4, =D_030046a4 \n\
/* 0801c09e */ LDR R0, [R4] \n\
/* 0801c0a0 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801c0a2 */ LSLS R2, R2, 0x2 \n\
/* 0801c0a4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c0a6 */ LDR R0, [R0] \n\
/* 0801c0a8 */ BL func_0800b118 \n\
/* 0801c0ac */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801c0ae */ LDR R0, [R4] \n\
/* 0801c0b0 */ LDR R2, =0x48e \n\
/* 0801c0b2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c0b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c0b6 */ LDRSH R0, [R0, R2] \n\
/* 0801c0b8 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801c0ba */ BEQ branch_0801c11c \n\
/* 0801c0bc */ BL func_0801b4b4 \n\
/* 0801c0c0 */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801c0c2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801c0c4 */ BL func_0800267c \n\
/* 0801c0c8 */ LDR R0, =D_03005380 \n\
/* 0801c0ca */ LDR R0, [R0] \n\
/* 0801c0cc */ LDR R1, [R4] \n\
/* 0801c0ce */ LDR R2, =0x48c \n\
/* 0801c0d0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801c0d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c0d4 */ LDRSH R1, [R1, R2] \n\
/* 0801c0d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c0d8 */ BL func_0804d770 \n\
/* 0801c0dc */ LDR R0, [R4] \n\
/* 0801c0de */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801c0e0 */ LSLS R1, R1, 0x2 \n\
/* 0801c0e2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c0e4 */ LDR R0, [R0] \n\
/* 0801c0e6 */ LDR R1, =D_0890c3b8 \n\
/* 0801c0e8 */ BL func_0800b4d8 \n\
/* 0801c0ec */ LDR R0, [R4] \n\
/* 0801c0ee */ MOVS R2, 0xDC @ Set R2 to 0xDC \n\
/* 0801c0f0 */ LSLS R2, R2, 0x2 \n\
/* 0801c0f2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c0f4 */ LDR R0, [R0] \n\
/* 0801c0f6 */ BL func_0800b3c8 \n\
/* 0801c0fa */ LDR R0, [R4] \n\
/* 0801c0fc */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801c0fe */ LSLS R1, R1, 0x2 \n\
/* 0801c100 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c102 */ B branch_0801c15c \n\
\n\
.ltorg \n\
 \n\
branch_0801c11c: \n\
/* 0801c11c */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801c11e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801c120 */ BL func_0800267c \n\
/* 0801c124 */ LDR R0, =D_03005380 \n\
/* 0801c126 */ LDR R0, [R0] \n\
/* 0801c128 */ LDR R4, =D_030046a4 \n\
/* 0801c12a */ LDR R1, [R4] \n\
/* 0801c12c */ LDR R2, =0x48c \n\
/* 0801c12e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801c130 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c132 */ LDRSH R1, [R1, R2] \n\
/* 0801c134 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c136 */ BL func_0804d770 \n\
/* 0801c13a */ LDR R0, [R4] \n\
/* 0801c13c */ MOVS R5, 0xD8 @ Set R5 to 0xD8 \n\
/* 0801c13e */ LSLS R5, R5, 0x2 \n\
/* 0801c140 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0801c142 */ LDR R0, [R0] \n\
/* 0801c144 */ LDR R1, =D_0890c3b8 \n\
/* 0801c146 */ BL func_0800b4d8 \n\
/* 0801c14a */ LDR R0, [R4] \n\
/* 0801c14c */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801c14e */ LSLS R1, R1, 0x2 \n\
/* 0801c150 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c152 */ LDR R0, [R0] \n\
/* 0801c154 */ BL func_0800b3c8 \n\
/* 0801c158 */ LDR R0, [R4] \n\
/* 0801c15a */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
 \n\
branch_0801c15c: \n\
/* 0801c15c */ LDR R0, [R0] \n\
/* 0801c15e */ BL func_0800b3e8 \n\
/* 0801c162 */ LDR R0, [R4] \n\
/* 0801c164 */ MOVS R2, 0xD7 @ Set R2 to 0xD7 \n\
/* 0801c166 */ LSLS R2, R2, 0x2 \n\
/* 0801c168 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c16a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801c16c */ STRB R1, [R0] \n\
/* 0801c16e */ B branch_0801c1ac \n\
\n\
.ltorg \n\
 \n\
branch_0801c184: \n\
/* 0801c184 */ LDR R0, =D_030046a4 \n\
/* 0801c186 */ LDR R0, [R0] \n\
/* 0801c188 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801c18a */ LSLS R1, R1, 0x2 \n\
/* 0801c18c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c18e */ LDR R0, [R0] \n\
/* 0801c190 */ BL func_0800b140 \n\
/* 0801c194 */ B branch_0801c1ac \n\
\n\
.ltorg \n\
 \n\
branch_0801c19c: \n\
/* 0801c19c */ LDR R0, =D_030046a4 \n\
/* 0801c19e */ LDR R0, [R0] \n\
/* 0801c1a0 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801c1a2 */ LSLS R2, R2, 0x2 \n\
/* 0801c1a4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c1a6 */ LDR R0, [R0] \n\
/* 0801c1a8 */ BL func_0800b21c \n\
 \n\
branch_0801c1ac: \n\
/* 0801c1ac */ POP {R4, R5} \n\
/* 0801c1ae */ POP {R0} \n\
/* 0801c1b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

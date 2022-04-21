asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c0f8 \n\
/* 0804c0f8 */ PUSH {R4, R5, LR} \n\
/* 0804c0fa */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804c0fc */ LDR R0, [R5, 0xC] \n\
/* 0804c0fe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c100 */ BEQ branch_0804c166 \n\
/* 0804c102 */ LDRB R0, [R5, 0x1] \n\
/* 0804c104 */ LSLS R0, R0, 0x1C \n\
/* 0804c106 */ LSRS R1, R0, 0x1F \n\
/* 0804c108 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804c10a */ BNE branch_0804c166 \n\
/* 0804c10c */ LDR R0, =D_0300562c \n\
/* 0804c10e */ STR R1, [R0] \n\
/* 0804c110 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804c112 */ B branch_0804c122 \n\
\n\
.ltorg \n\
 \n\
branch_0804c118: \n\
/* 0804c118 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804c11a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804c11c */ BL func_0804bed0 \n\
/* 0804c120 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
 \n\
branch_0804c122: \n\
/* 0804c122 */ LDRH R0, [R5] \n\
/* 0804c124 */ LSLS R0, R0, 0x16 \n\
/* 0804c126 */ LSRS R0, R0, 0x1B \n\
/* 0804c128 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804c12a */ BCC branch_0804c118 \n\
/* 0804c12c */ LDR R0, =D_0300562c \n\
/* 0804c12e */ LDR R0, [R0] \n\
/* 0804c130 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c132 */ BEQ branch_0804c136 \n\
/* 0804c134 */ STR R0, [R5, 0x10] \n\
 \n\
branch_0804c136: \n\
/* 0804c136 */ LDR R1, [R5, 0x8] \n\
/* 0804c138 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804c13a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804c13c */ LDRH R0, [R5] \n\
/* 0804c13e */ LSLS R0, R0, 0x16 \n\
/* 0804c140 */ LSRS R0, R0, 0x1B \n\
/* 0804c142 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804c144 */ BCS branch_0804c15e \n\
/* 0804c146 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
 \n\
branch_0804c148: \n\
/* 0804c148 */ LDRB R0, [R1] \n\
/* 0804c14a */ LSLS R0, R0, 0x1F \n\
/* 0804c14c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c14e */ BEQ branch_0804c152 \n\
/* 0804c150 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0804c152: \n\
/* 0804c152 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804c154 */ ADDS R1, 0x1C @ Add 0x1C to R1 \n\
/* 0804c156 */ CMP R4, R3 @ Check R4 - R3 \n\
/* 0804c158 */ BCS branch_0804c15e \n\
/* 0804c15a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804c15c */ BNE branch_0804c148 \n\
 \n\
branch_0804c15e: \n\
/* 0804c15e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804c160 */ BEQ branch_0804c166 \n\
/* 0804c162 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c164 */ STR R0, [R5, 0xC] \n\
 \n\
branch_0804c166: \n\
/* 0804c166 */ POP {R4, R5} \n\
/* 0804c168 */ POP {R0} \n\
/* 0804c16a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

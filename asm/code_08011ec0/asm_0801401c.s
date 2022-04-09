asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801401c \n\
/* 0801401c */ PUSH {R4-R7, LR} \n\
/* 0801401e */ LDR R1, =D_030046a4 \n\
/* 08014020 */ LDR R2, [R1] \n\
/* 08014022 */ LDRB R0, [R2, 0x8] \n\
/* 08014024 */ LSLS R0, R0, 0x1E \n\
/* 08014026 */ LSRS R4, R0, 0x1F \n\
/* 08014028 */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 0801402a */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0801402c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801402e */ BNE branch_0801404a \n\
/* 08014030 */ MOVS R3, 0x8C @ Set R3 to 0x8C \n\
/* 08014032 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 08014034 */ LDRSB R0, [R2, R0] \n\
/* 08014036 */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 08014038 */ BGT branch_08014048 \n\
/* 0801403a */ LDRH R0, [R2, 0x1A] \n\
/* 0801403c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801403e */ BNE branch_0801404a \n\
/* 08014040 */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 08014042 */ B branch_0801404a \n\
\n\
.ltorg \n\
 \n\
branch_08014048: \n\
/* 08014048 */ STRH R4, [R2, 0x1A] \n\
 \n\
branch_0801404a: \n\
/* 0801404a */ LDR R0, [R7] \n\
/* 0801404c */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 0801404e */ LDRSH R6, [R0, R1] \n\
/* 08014050 */ CMP R6, R3 @ Check R6 - R3 \n\
/* 08014052 */ BGE branch_0801405c \n\
/* 08014054 */ ADDS R6, 0x9 @ Add 0x9 to R6 \n\
/* 08014056 */ CMP R6, R3 @ Check R6 - R3 \n\
/* 08014058 */ BLE branch_08014068 \n\
/* 0801405a */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
 \n\
branch_0801405c: \n\
/* 0801405c */ CMP R6, R3 @ Check R6 - R3 \n\
/* 0801405e */ BLE branch_08014068 \n\
/* 08014060 */ SUBS R6, 0x9 @ Subtract 0x9 from R6 \n\
/* 08014062 */ CMP R6, R3 @ Check R6 - R3 \n\
/* 08014064 */ BGE branch_08014068 \n\
/* 08014066 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
 \n\
branch_08014068: \n\
/* 08014068 */ LDR R5, =D_03005380 \n\
/* 0801406a */ LDR R0, [R5] \n\
/* 0801406c */ LDR R1, [R7] \n\
/* 0801406e */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 08014070 */ LDRSH R1, [R1, R2] \n\
/* 08014072 */ LSLS R4, R6, 0x10 \n\
/* 08014074 */ ASRS R4, R4, 0x10 \n\
/* 08014076 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08014078 */ BL func_0804d648 \n\
/* 0801407c */ LDR R0, [R5] \n\
/* 0801407e */ LDR R1, [R7] \n\
/* 08014080 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08014082 */ LDRSH R1, [R1, R2] \n\
/* 08014084 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08014086 */ BL func_0804d648 \n\
/* 0801408a */ LDR R1, [R7] \n\
/* 0801408c */ STRH R6, [R1, 0x16] \n\
/* 0801408e */ LDRH R0, [R1, 0x1A] \n\
/* 08014090 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014092 */ BEQ branch_08014098 \n\
/* 08014094 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08014096 */ STRH R0, [R1, 0x1A] \n\
 \n\
branch_08014098: \n\
/* 08014098 */ POP {R4-R7} \n\
/* 0801409a */ POP {R0} \n\
/* 0801409c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

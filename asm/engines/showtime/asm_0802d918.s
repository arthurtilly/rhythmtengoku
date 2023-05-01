asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d918 \n\
/* 0802d918 */ PUSH {R4-R7, LR} \n\
/* 0802d91a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802d91c */ PUSH {R7} \n\
/* 0802d91e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802d920 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802d922 */ LDR R0, =gCurrentEngineData \n\
/* 0802d924 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802d926 */ MOVS R6, 0xBC @ Set R6 to 0xBC \n\
/* 0802d928 */ LSLS R6, R6, 0x1 \n\
/* 0802d92a */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0802d92c */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0802d92e */ LSLS R0, R0, 0x1 \n\
/* 0802d930 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_0802d932: \n\
/* 0802d932 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802d934 */ LDR R1, [R0] \n\
/* 0802d936 */ LSLS R2, R4, 0x4 \n\
/* 0802d938 */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 0802d93a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802d93c */ LDR R3, [R0] \n\
/* 0802d93e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0802d940 */ BNE branch_0802d95c \n\
/* 0802d942 */ STR R7, [R0] \n\
/* 0802d944 */ MOV R4, R12 @ Set R4 to R12 \n\
/* 0802d946 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0802d948 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802d94a */ STR R5, [R0] \n\
/* 0802d94c */ MOVS R4, 0xBE @ Set R4 to 0xBE \n\
/* 0802d94e */ LSLS R4, R4, 0x1 \n\
/* 0802d950 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0802d952 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802d954 */ STR R3, [R0] \n\
/* 0802d956 */ B branch_0802d962 \n\
\n\
.ltorg \n\
 \n\
branch_0802d95c: \n\
/* 0802d95c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802d95e */ CMP R4, 0x7 @ Compare R4 and 0x7 \n\
/* 0802d960 */ BLE branch_0802d932 \n\
 \n\
branch_0802d962: \n\
/* 0802d962 */ POP {R3} \n\
/* 0802d964 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802d966 */ POP {R4-R7} \n\
/* 0802d968 */ POP {R0} \n\
/* 0802d96a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

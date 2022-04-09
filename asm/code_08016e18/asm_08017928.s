asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017928 \n\
/* 08017928 */ PUSH {R4-R7, LR} \n\
/* 0801792a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801792c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0801792e */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08017930 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08017932 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08017934 */ BNE branch_08017938 \n\
/* 08017936 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_08017938: \n\
/* 08017938 */ LDR R0, =D_030046a4 \n\
/* 0801793a */ LDR R1, [R0] \n\
/* 0801793c */ LDRB R0, [R1, 0x9] \n\
/* 0801793e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017940 */ BNE branch_08017946 \n\
/* 08017942 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08017944 */ BNE branch_08017998 \n\
 \n\
branch_08017946: \n\
/* 08017946 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08017948 */ BNE branch_08017966 \n\
/* 0801794a */ LDR R2, =0x5b7 \n\
/* 0801794c */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801794e */ LDRB R0, [R0] \n\
/* 08017950 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017952 */ BEQ branch_08017966 \n\
/* 08017954 */ MOVS R0, 0xB7 @ Set R0 to 0xB7 \n\
/* 08017956 */ LSLS R0, R0, 0x3 \n\
/* 08017958 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801795a */ LDRB R0, [R1] \n\
/* 0801795c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801795e */ BEQ branch_08017966 \n\
/* 08017960 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08017962 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08017964 */ STRB R0, [R1] \n\
 \n\
branch_08017966: \n\
/* 08017966 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017968 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801796a */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0801796c */ BL func_08019350 \n\
/* 08017970 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08017972 */ BNE branch_0801797e \n\
/* 08017974 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08017976 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08017978 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0801797a */ BL func_08019420 \n\
 \n\
branch_0801797e: \n\
/* 0801797e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08017980 */ BNE branch_08017990 \n\
/* 08017982 */ BL func_080176cc \n\
/* 08017986 */ B branch_08017998 \n\
\n\
.ltorg \n\
 \n\
branch_08017990: \n\
/* 08017990 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08017992 */ BHI branch_08017998 \n\
/* 08017994 */ BL func_0801765c \n\
 \n\
branch_08017998: \n\
/* 08017998 */ POP {R4-R7} \n\
/* 0801799a */ POP {R0} \n\
/* 0801799c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

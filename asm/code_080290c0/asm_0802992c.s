asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802992c \n\
/* 0802992c */ PUSH {R4, LR} \n\
/* 0802992e */ LDR R4, =D_030055d0 \n\
/* 08029930 */ LDR R0, [R4] \n\
/* 08029932 */ LDRB R0, [R0] \n\
/* 08029934 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08029936 */ BNE branch_08029974 \n\
/* 08029938 */ BL func_080298e0 \n\
/* 0802993c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802993e */ BNE branch_08029974 \n\
/* 08029940 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08029942 */ BL func_0800bd04 \n\
/* 08029946 */ LDR R0, [R4] \n\
/* 08029948 */ MOVS R1, 0x82 @ Set R1 to 0x82 \n\
/* 0802994a */ LSLS R1, R1, 0x3 \n\
/* 0802994c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802994e */ LDR R0, [R0] \n\
/* 08029950 */ LDR R1, =D_0805a3a0 \n\
/* 08029952 */ BL func_0800aa4c \n\
/* 08029956 */ LDR R1, [R4] \n\
/* 08029958 */ MOVS R2, 0xF2 @ Set R2 to 0xF2 \n\
/* 0802995a */ LSLS R2, R2, 0x2 \n\
/* 0802995c */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802995e */ LDR R0, [R0] \n\
/* 08029960 */ LDRB R0, [R0] \n\
/* 08029962 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08029964 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029966 */ BNE branch_0802996a \n\
/* 08029968 */ MOVS R2, 0xF @ Set R2 to 0xF \n\
 \n\
branch_0802996a: \n\
/* 0802996a */ LDR R3, =0x00000414 \n\
/* 0802996c */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0802996e */ STRH R2, [R0] \n\
/* 08029970 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08029972 */ STRB R0, [R1, 0x1] \n\
 \n\
branch_08029974: \n\
/* 08029974 */ POP {R4} \n\
/* 08029976 */ POP {R0} \n\
/* 08029978 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

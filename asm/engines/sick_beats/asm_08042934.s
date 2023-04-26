asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042934 \n\
/* 08042934 */ PUSH {R4, LR} \n\
/* 08042936 */ LDR R0, =gCurrentEngineData \n\
/* 08042938 */ LDR R1, [R0] \n\
/* 0804293a */ LDRB R0, [R1] \n\
/* 0804293c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804293e */ BNE branch_08042982 \n\
/* 08042940 */ LDR R2, =0x202 \n\
/* 08042942 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08042944 */ LDRB R0, [R0] \n\
/* 08042946 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042948 */ BNE branch_08042982 \n\
/* 0804294a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0804294c: \n\
/* 0804294c */ LDR R0, =gCurrentEngineData \n\
/* 0804294e */ LDR R1, [R0] \n\
/* 08042950 */ LSLS R3, R4, 0x1 \n\
/* 08042952 */ LDR R2, =0x246 \n\
/* 08042954 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08042956 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 08042958 */ LDRH R0, [R2] \n\
/* 0804295a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804295c */ BEQ branch_0804297c \n\
/* 0804295e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08042960 */ STRH R0, [R2] \n\
/* 08042962 */ LSLS R0, R0, 0x10 \n\
/* 08042964 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042966 */ BNE branch_0804297c \n\
/* 08042968 */ LDR R0, =D_03005380 \n\
/* 0804296a */ LDR R0, [R0] \n\
/* 0804296c */ LDR R2, =0x21e \n\
/* 0804296e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08042970 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08042972 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042974 */ LDRSH R1, [R1, R2] \n\
/* 08042976 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042978 */ BL func_0804d770 \n\
 \n\
branch_0804297c: \n\
/* 0804297c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804297e */ CMP R4, 0x13 @ Compare R4 and 0x13 \n\
/* 08042980 */ BLS branch_0804294c \n\
 \n\
branch_08042982: \n\
/* 08042982 */ POP {R4} \n\
/* 08042984 */ POP {R0} \n\
/* 08042986 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

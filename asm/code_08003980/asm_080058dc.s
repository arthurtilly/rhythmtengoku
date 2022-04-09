asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080058dc \n\
/* 080058dc */ PUSH {R4-R7, LR} \n\
/* 080058de */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080058e0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080058e2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080058e4 */ PUSH {R5-R7} \n\
/* 080058e6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080058e8 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080058ea */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 080058ec */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 080058ee */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080058f0 */ BEQ branch_0800597e \n\
/* 080058f2 */ LDR R0, [R7] \n\
/* 080058f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080058f6 */ BEQ branch_0800597e \n\
/* 080058f8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080058fa */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080058fc */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_080058fe: \n\
/* 080058fe */ LDR R5, [R7] \n\
/* 08005900 */ LDRB R0, [R5] \n\
/* 08005902 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08005904 */ BEQ branch_08005916 \n\
/* 08005906 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08005908 */ BGT branch_08005910 \n\
/* 0800590a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800590c */ BEQ branch_08005916 \n\
/* 0800590e */ B branch_08005976 \n\
 \n\
branch_08005910: \n\
/* 08005910 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08005912 */ BEQ branch_0800593a \n\
/* 08005914 */ B branch_08005976 \n\
 \n\
branch_08005916: \n\
/* 08005916 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005918 */ LDRSB R0, [R5, R0] \n\
/* 0800591a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800591c */ BLT branch_08005976 \n\
/* 0800591e */ LSLS R0, R0, 0x1 \n\
/* 08005920 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08005922 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08005924 */ LDRSH R1, [R0, R2] \n\
/* 08005926 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005928 */ BL func_0804d504 \n\
/* 0800592c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800592e */ LDRSB R0, [R5, R0] \n\
/* 08005930 */ LSLS R0, R0, 0x1 \n\
/* 08005932 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08005934 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08005936 */ STRH R1, [R0] \n\
/* 08005938 */ B branch_08005976 \n\
 \n\
branch_0800593a: \n\
/* 0800593a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800593c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800593e */ BEQ branch_08005976 \n\
/* 08005940 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005942 */ LDRSB R0, [R5, R0] \n\
/* 08005944 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005946 */ BLT branch_08005976 \n\
/* 08005948 */ LSLS R0, R0, 0x1 \n\
/* 0800594a */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0800594c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800594e */ LDRSH R4, [R0, R1] \n\
/* 08005950 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005952 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08005954 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08005956 */ BL func_0804ddb0 \n\
/* 0800595a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800595c */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800595e */ BL func_08004d44 \n\
/* 08005962 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005964 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08005966 */ BL func_0804d504 \n\
/* 0800596a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800596c */ LDRSB R0, [R5, R0] \n\
/* 0800596e */ LSLS R0, R0, 0x1 \n\
/* 08005970 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08005972 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08005974 */ STRH R2, [R0] \n\
 \n\
branch_08005976: \n\
/* 08005976 */ ADDS R7, 0x4 @ Add 0x4 to R7 \n\
/* 08005978 */ LDR R0, [R7] \n\
/* 0800597a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800597c */ BNE branch_080058fe \n\
 \n\
branch_0800597e: \n\
/* 0800597e */ POP {R3-R5} \n\
/* 08005980 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005982 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08005984 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08005986 */ POP {R4-R7} \n\
/* 08005988 */ POP {R0} \n\
/* 0800598a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c1f0 \n\
/* 0802c1f0 */ PUSH {R4, R5, LR} \n\
/* 0802c1f2 */ LSLS R1, R1, 0x10 \n\
/* 0802c1f4 */ LSRS R4, R1, 0x10 \n\
/* 0802c1f6 */ LDR R0, =D_030055d0 \n\
/* 0802c1f8 */ LDR R1, [R0] \n\
/* 0802c1fa */ LSLS R0, R2, 0x1 \n\
/* 0802c1fc */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802c1fe */ LSLS R0, R0, 0x2 \n\
/* 0802c200 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 0802c202 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802c204 */ LDR R0, [R1] \n\
/* 0802c206 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802c208 */ BEQ branch_0802c22c \n\
/* 0802c20a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802c20c */ BNE branch_0802c22c \n\
/* 0802c20e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802c210 */ STR R0, [R1] \n\
/* 0802c212 */ LDR R5, =D_03005380 \n\
/* 0802c214 */ LDR R0, [R5] \n\
/* 0802c216 */ LSLS R4, R4, 0x10 \n\
/* 0802c218 */ ASRS R4, R4, 0x10 \n\
/* 0802c21a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802c21c */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0802c21e */ BL func_0804cebc \n\
/* 0802c222 */ LDR R0, [R5] \n\
/* 0802c224 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802c226 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c228 */ BL func_0804dcb8 \n\
 \n\
branch_0802c22c: \n\
/* 0802c22c */ POP {R4, R5} \n\
/* 0802c22e */ POP {R0} \n\
/* 0802c230 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

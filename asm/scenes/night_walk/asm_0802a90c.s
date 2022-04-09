asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802a90c \n\
/* 0802a90c */ PUSH {R4-R6, LR} \n\
/* 0802a90e */ SUB SP, 0xC \n\
/* 0802a910 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802a912 */ LDR R6, =D_030055d0 \n\
/* 0802a914 */ MOVS R4, 0xF1 @ Set R4 to 0xF1 \n\
/* 0802a916 */ LSLS R4, R4, 0x2 \n\
 \n\
branch_0802a918: \n\
/* 0802a918 */ LDR R1, [R6] \n\
/* 0802a91a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802a91c */ LDR R0, =D_03005380 \n\
/* 0802a91e */ LDR R0, [R0] \n\
/* 0802a920 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a922 */ LDRSH R1, [R1, R2] \n\
/* 0802a924 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802a926 */ STR R2, [SP] \n\
/* 0802a928 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a92a */ STR R2, [SP, 0x4] \n\
/* 0802a92c */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0802a92e */ STR R2, [SP, 0x8] \n\
/* 0802a930 */ LDR R2, =D_088c9f58 \n\
/* 0802a932 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a934 */ BL func_0804d8f8 \n\
/* 0802a938 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 0802a93a */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0802a93c */ CMP R5, 0x1F @ Compare R5 and 0x1F \n\
/* 0802a93e */ BLS branch_0802a918 \n\
/* 0802a940 */ ADD SP, 0xC \n\
/* 0802a942 */ POP {R4-R6} \n\
/* 0802a944 */ POP {R0} \n\
/* 0802a946 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

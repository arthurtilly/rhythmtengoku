asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026930 \n\
/* 08026930 */ PUSH {R4-R6, LR} \n\
/* 08026932 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08026934 */ LDR R6, =D_030055d0 \n\
/* 08026936 */ MOVS R5, 0xDD @ Set R5 to 0xDD \n\
/* 08026938 */ LSLS R5, R5, 0x2 \n\
 \n\
branch_0802693a: \n\
/* 0802693a */ LDR R0, [R6] \n\
/* 0802693c */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0802693e */ LDRH R0, [R1, 0x10] \n\
/* 08026940 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026942 */ BEQ branch_08026956 \n\
/* 08026944 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08026946 */ STRH R0, [R1, 0x10] \n\
/* 08026948 */ LSLS R0, R0, 0x10 \n\
/* 0802694a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802694c */ BNE branch_08026956 \n\
/* 0802694e */ LDRB R1, [R1, 0xF] \n\
/* 08026950 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08026952 */ BL func_08026640 \n\
 \n\
branch_08026956: \n\
/* 08026956 */ ADDS R5, 0x14 @ Add 0x14 to R5 \n\
/* 08026958 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802695a */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0802695c */ BLS branch_0802693a \n\
/* 0802695e */ POP {R4-R6} \n\
/* 08026960 */ POP {R0} \n\
/* 08026962 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a360 \n\
/* 0804a360 */ PUSH {R4-R6, LR} \n\
/* 0804a362 */ LDR R2, =D_03005b8c \n\
/* 0804a364 */ STRH R0, [R2] \n\
/* 0804a366 */ LDR R0, =D_030064bc \n\
/* 0804a368 */ STR R1, [R0] \n\
/* 0804a36a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804a36c */ LDRH R1, [R2] \n\
/* 0804a36e */ CMP R3, R1 @ Check R3 - R1 \n\
/* 0804a370 */ BCS branch_0804a390 \n\
/* 0804a372 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804a374 */ MOVS R6, 0x2 @ Set R6 to 0x2 \n\
/* 0804a376 */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 0804a378 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
 \n\
branch_0804a37a: \n\
/* 0804a37a */ LDR R0, [R5] \n\
/* 0804a37c */ LSLS R1, R3, 0x5 \n\
/* 0804a37e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804a380 */ LDRB R2, [R1] \n\
/* 0804a382 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804a384 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804a386 */ STRB R0, [R1] \n\
/* 0804a388 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804a38a */ LDRH R0, [R4] \n\
/* 0804a38c */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0804a38e */ BCC branch_0804a37a \n\
 \n\
branch_0804a390: \n\
/* 0804a390 */ POP {R4-R6} \n\
/* 0804a392 */ POP {R0} \n\
/* 0804a394 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

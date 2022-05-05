asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804af30 \n\
/* 0804af30 */ PUSH {R4, R5, LR} \n\
/* 0804af32 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804af34 */ LDR R5, =D_03001590 \n\
/* 0804af36 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0804af38 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0804af3a */ LDR R2, =D_030056a0 \n\
 \n\
branch_0804af3c: \n\
/* 0804af3c */ LDRB R1, [R2] \n\
/* 0804af3e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804af40 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804af42 */ STRB R0, [R2] \n\
/* 0804af44 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0804af46 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804af48 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 0804af4a */ BLS branch_0804af3c \n\
/* 0804af4c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804af4e */ LDR R2, =D_03001578 \n\
/* 0804af50 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
 \n\
branch_0804af52: \n\
/* 0804af52 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0804af54 */ STRB R1, [R0] \n\
/* 0804af56 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804af58 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 0804af5a */ BLS branch_0804af52 \n\
/* 0804af5c */ LDR R1, [R5] \n\
/* 0804af5e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804af60 */ STRB R0, [R1] \n\
/* 0804af62 */ POP {R4, R5} \n\
/* 0804af64 */ POP {R0} \n\
/* 0804af66 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

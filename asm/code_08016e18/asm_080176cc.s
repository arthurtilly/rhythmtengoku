asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080176cc \n\
/* 080176cc */ PUSH {R4, LR} \n\
/* 080176ce */ SUB SP, 0xC \n\
/* 080176d0 */ LDR R0, =D_030046a4 \n\
/* 080176d2 */ LDR R1, [R0] \n\
/* 080176d4 */ LDR R2, =0x4a6 \n\
/* 080176d6 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080176d8 */ LDRB R4, [R0] \n\
/* 080176da */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080176dc */ BNE branch_08017710 \n\
/* 080176de */ SUBS R2, 0x2 @ Subtract 0x2 from R2 \n\
/* 080176e0 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080176e2 */ LDRB R0, [R0] \n\
/* 080176e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080176e6 */ BEQ branch_08017710 \n\
/* 080176e8 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080176ea */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080176ec */ LDRB R0, [R0] \n\
/* 080176ee */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080176f0 */ BEQ branch_08017710 \n\
/* 080176f2 */ LDR R0, =D_03005380 \n\
/* 080176f4 */ LDR R0, [R0] \n\
/* 080176f6 */ SUBS R2, 0x3 @ Subtract 0x3 from R2 \n\
/* 080176f8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080176fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080176fc */ LDRSH R1, [R1, R2] \n\
/* 080176fe */ LDR R2, =D_0890ad60 \n\
/* 08017700 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08017702 */ STR R3, [SP] \n\
/* 08017704 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08017706 */ STR R3, [SP, 0x4] \n\
/* 08017708 */ STR R4, [SP, 0x8] \n\
/* 0801770a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801770c */ BL func_0804d8f8 \n\
 \n\
branch_08017710: \n\
/* 08017710 */ ADD SP, 0xC \n\
/* 08017712 */ POP {R4} \n\
/* 08017714 */ POP {R0} \n\
/* 08017716 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

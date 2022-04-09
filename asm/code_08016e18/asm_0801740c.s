asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801740c \n\
/* 0801740c */ PUSH {R4, LR} \n\
/* 0801740e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08017410 */ LDR R0, =D_030053c0 \n\
/* 08017412 */ LDR R4, [R0, 0x4] \n\
/* 08017414 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08017416 */ BEQ branch_0801743e \n\
/* 08017418 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0801741a */ BLT branch_0801743e \n\
/* 0801741c */ LDR R2, [R4, 0x8] \n\
/* 0801741e */ LSLS R1, R3, 0x3 \n\
/* 08017420 */ SUBS R1, R1, R3 @ Set R1 to R1 - R3 \n\
/* 08017422 */ LSLS R1, R1, 0x2 \n\
/* 08017424 */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 08017426 */ LDRB R3, [R2] \n\
/* 08017428 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801742a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801742c */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0801742e */ STRB R0, [R2] \n\
/* 08017430 */ LDR R0, [R4, 0x8] \n\
/* 08017432 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08017434 */ LDRB R2, [R1] \n\
/* 08017436 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08017438 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801743a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0801743c */ STRB R0, [R1] \n\
 \n\
branch_0801743e: \n\
/* 0801743e */ POP {R4} \n\
/* 08017440 */ POP {R0} \n\
/* 08017442 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

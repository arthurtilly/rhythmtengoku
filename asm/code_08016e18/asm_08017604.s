asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017604 \n\
/* 08017604 */ PUSH {LR} \n\
/* 08017606 */ BL func_0801286c \n\
/* 0801760a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801760c */ BLT branch_08017634 \n\
/* 0801760e */ LDR R1, =D_030046a4 \n\
/* 08017610 */ LDR R0, [R1] \n\
/* 08017612 */ LDR R3, =0x4a4 \n\
/* 08017614 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 08017616 */ LDRB R0, [R2] \n\
/* 08017618 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801761a */ BNE branch_08017634 \n\
/* 0801761c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801761e */ STRB R0, [R2] \n\
/* 08017620 */ LDR R0, =D_03005380 \n\
/* 08017622 */ LDR R0, [R0] \n\
/* 08017624 */ LDR R1, [R1] \n\
/* 08017626 */ LDR R2, =0x4a2 \n\
/* 08017628 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801762a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801762c */ LDRSH R1, [R1, R3] \n\
/* 0801762e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08017630 */ BL func_0804d770 \n\
 \n\
branch_08017634: \n\
/* 08017634 */ POP {R0} \n\
/* 08017636 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

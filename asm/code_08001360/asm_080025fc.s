asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080025fc \n\
/* 080025fc */ PUSH {R4, R5, LR} \n\
/* 080025fe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002600 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08002602 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002604 */ LDR R5, =D_03000340 \n\
/* 08002606 */ LDR R2, =D_03000368 \n\
 \n\
branch_08002608: \n\
/* 08002608 */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 0800260a */ LDRB R0, [R0] \n\
/* 0800260c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800260e */ BEQ branch_08002618 \n\
/* 08002610 */ LDR R0, [R2] \n\
/* 08002612 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08002614 */ BNE branch_08002618 \n\
/* 08002616 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
 \n\
branch_08002618: \n\
/* 08002618 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0800261a */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800261c */ CMP R1, 0x1F @ Compare R1 and 0x1F \n\
/* 0800261e */ BLS branch_08002608 \n\
/* 08002620 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08002622 */ POP {R4, R5} \n\
/* 08002624 */ POP {R1} \n\
/* 08002626 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

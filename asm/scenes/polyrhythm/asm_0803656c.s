asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803656c \n\
/* 0803656c */ PUSH {R4-R7, LR} \n\
/* 0803656e */ SUB SP, 0x14 \n\
/* 08036570 */ LDR R0, =D_030055d0 \n\
/* 08036572 */ LDR R0, [R0] \n\
/* 08036574 */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 08036576 */ LSLS R1, R1, 0x1 \n\
/* 08036578 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0803657a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803657c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803657e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08036580 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08036582 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
 \n\
branch_08036584: \n\
/* 08036584 */ LDRB R0, [R4] \n\
/* 08036586 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08036588 */ STRB R0, [R4] \n\
/* 0803658a */ LDR R0, =D_03005380 \n\
/* 0803658c */ LDR R0, [R0] \n\
/* 0803658e */ MOVS R1, 0x60 @ Set R1 to 0x60 \n\
/* 08036590 */ STR R1, [SP] \n\
/* 08036592 */ STR R6, [SP, 0x4] \n\
/* 08036594 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08036596 */ STR R1, [SP, 0x8] \n\
/* 08036598 */ STR R6, [SP, 0xC] \n\
/* 0803659a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803659c */ LSLS R1, R1, 0x8 \n\
/* 0803659e */ STR R1, [SP, 0x10] \n\
/* 080365a0 */ LDR R1, =D_088f6114 \n\
/* 080365a2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080365a4 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080365a6 */ BL func_0804d160 \n\
/* 080365aa */ STRH R0, [R4, 0x4] \n\
/* 080365ac */ ADDS R4, 0x3C @ Add 0x3C to R4 \n\
/* 080365ae */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080365b0 */ CMP R5, 0x7 @ Compare R5 and 0x7 \n\
/* 080365b2 */ BLS branch_08036584 \n\
/* 080365b4 */ ADD SP, 0x14 \n\
/* 080365b6 */ POP {R4-R7} \n\
/* 080365b8 */ POP {R0} \n\
/* 080365ba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

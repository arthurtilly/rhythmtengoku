asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f5f4 \n\
/* 0801f5f4 */ PUSH {R4, LR} \n\
/* 0801f5f6 */ SUB SP, 0x8 \n\
/* 0801f5f8 */ LDR R4, =D_030055d0 \n\
/* 0801f5fa */ LDR R0, [R4] \n\
/* 0801f5fc */ ADDS R0, 0x70 @ Add 0x70 to R0 \n\
/* 0801f5fe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f600 */ LDRSH R0, [R0, R1] \n\
/* 0801f602 */ MOVS R1, 0x91 @ Set R1 to 0x91 \n\
/* 0801f604 */ LSLS R1, R1, 0x1 \n\
/* 0801f606 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801f608 */ STR R2, [SP] \n\
/* 0801f60a */ MOVS R2, 0xE6 @ Set R2 to 0xE6 \n\
/* 0801f60c */ STR R2, [SP, 0x4] \n\
/* 0801f60e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801f610 */ MOVS R3, 0xD2 @ Set R3 to 0xD2 \n\
/* 0801f612 */ BL func_0800e25c \n\
/* 0801f616 */ LDR R0, =D_03005380 \n\
/* 0801f618 */ LDR R0, [R0] \n\
/* 0801f61a */ LDR R1, [R4] \n\
/* 0801f61c */ ADDS R1, 0x70 @ Add 0x70 to R1 \n\
/* 0801f61e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f620 */ LDRSH R1, [R1, R2] \n\
/* 0801f622 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f624 */ BL func_0804d770 \n\
/* 0801f628 */ ADD SP, 0x8 \n\
/* 0801f62a */ POP {R4} \n\
/* 0801f62c */ POP {R0} \n\
/* 0801f62e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

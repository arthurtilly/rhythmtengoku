asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d0b8 \n\
/* 0801d0b8 */ PUSH {R4, R5, LR} \n\
/* 0801d0ba */ SUB SP, 0x14 \n\
/* 0801d0bc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801d0be */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0801d0c0: \n\
/* 0801d0c0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d0c2 */ BL func_080281c4 \n\
/* 0801d0c6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801d0c8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801d0ca */ BEQ branch_0801d102 \n\
/* 0801d0cc */ LDR R0, =D_03005380 \n\
/* 0801d0ce */ LDR R0, [R0] \n\
/* 0801d0d0 */ LDR R2, =D_089dd780 \n\
/* 0801d0d2 */ LSLS R1, R1, 0x2 \n\
/* 0801d0d4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801d0d6 */ LDR R1, [R1] \n\
/* 0801d0d8 */ STR R5, [SP] \n\
/* 0801d0da */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 0801d0dc */ LSLS R2, R2, 0x8 \n\
/* 0801d0de */ STR R2, [SP, 0x4] \n\
/* 0801d0e0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801d0e2 */ STR R2, [SP, 0x8] \n\
/* 0801d0e4 */ STR R5, [SP, 0xC] \n\
/* 0801d0e6 */ STR R5, [SP, 0x10] \n\
/* 0801d0e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d0ea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801d0ec */ BL func_0804d160 \n\
/* 0801d0f0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801d0f2 */ LDR R0, =D_030046a4 \n\
/* 0801d0f4 */ LDR R0, [R0] \n\
/* 0801d0f6 */ LDR R0, [R0, 0x4] \n\
/* 0801d0f8 */ LSLS R1, R1, 0x10 \n\
/* 0801d0fa */ ASRS R1, R1, 0x10 \n\
/* 0801d0fc */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801d0fe */ BL func_0800b408 \n\
 \n\
branch_0801d102: \n\
/* 0801d102 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801d104 */ CMP R4, 0x12 @ Compare R4 and 0x12 \n\
/* 0801d106 */ BLS branch_0801d0c0 \n\
/* 0801d108 */ ADD SP, 0x14 \n\
/* 0801d10a */ POP {R4, R5} \n\
/* 0801d10c */ POP {R0} \n\
/* 0801d10e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

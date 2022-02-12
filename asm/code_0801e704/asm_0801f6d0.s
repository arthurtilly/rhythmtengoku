asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f6d0 \n\
/* 0801f6d0 */ PUSH {R4, LR} \n\
/* 0801f6d2 */ LDR R4, =D_030055d0 \n\
/* 0801f6d4 */ LDR R0, [R4] \n\
/* 0801f6d6 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0801f6d8 */ LDR R0, [R0] \n\
/* 0801f6da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801f6dc */ BEQ branch_0801f70e \n\
/* 0801f6de */ LDR R0, =D_030053c0 \n\
/* 0801f6e0 */ MOVS R1, 0xC8 @ Set R1 to 0xC8 \n\
/* 0801f6e2 */ LSLS R1, R1, 0x1 \n\
/* 0801f6e4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801f6e6 */ LDRH R1, [R0] \n\
/* 0801f6e8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801f6ea */ LSLS R0, R0, 0x1 \n\
/* 0801f6ec */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0801f6ee */ LSRS R1, R0, 0x1F \n\
/* 0801f6f0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801f6f2 */ ASRS R0, R0, 0x1 \n\
/* 0801f6f4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f6f6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801f6f8 */ BL func_080087d4 \n\
/* 0801f6fc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801f6fe */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 0801f700 */ LDR R0, [R4] \n\
/* 0801f702 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0801f704 */ LDR R0, [R0] \n\
/* 0801f706 */ LSLS R1, R1, 0x10 \n\
/* 0801f708 */ LSRS R1, R1, 0x10 \n\
/* 0801f70a */ BL func_08002920 \n\
 \n\
branch_0801f70e: \n\
/* 0801f70e */ POP {R4} \n\
/* 0801f710 */ POP {R0} \n\
/* 0801f712 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

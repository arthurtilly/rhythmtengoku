asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080238c0 \n\
/* 080238c0 */ PUSH {R4, R5, LR} \n\
/* 080238c2 */ LDR R4, =D_030055d0 \n\
/* 080238c4 */ LDR R0, [R4] \n\
/* 080238c6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080238c8 */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 080238ca */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 080238cc */ LDRH R0, [R0] \n\
/* 080238ce */ LDRH R2, [R1] \n\
/* 080238d0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080238d2 */ STRH R0, [R1] \n\
/* 080238d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080238d6 */ LDRSH R0, [R1, R2] \n\
/* 080238d8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080238da */ LSLS R1, R1, 0x3 \n\
/* 080238dc */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 080238de */ LSLS R5, R5, 0x5 \n\
/* 080238e0 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 080238e2 */ BL func_080087d4 \n\
/* 080238e6 */ LDR R2, [R4] \n\
/* 080238e8 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 080238ea */ ADDS R3, 0x76 @ Add 0x76 to R3 \n\
/* 080238ec */ STRH R0, [R3] \n\
/* 080238ee */ LDR R1, =D_03004b10 \n\
/* 080238f0 */ LSLS R0, R0, 0x10 \n\
/* 080238f2 */ ASRS R0, R0, 0x18 \n\
/* 080238f4 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 080238f6 */ STRH R0, [R1] \n\
/* 080238f8 */ LDR R0, [R2, 0x7C] \n\
/* 080238fa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080238fc */ BEQ branch_08023928 \n\
/* 080238fe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08023900 */ LDRSH R0, [R3, R1] \n\
/* 08023902 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08023904 */ BNE branch_08023928 \n\
/* 08023906 */ BL func_0800c3b8 \n\
/* 0802390a */ LSLS R0, R0, 0x10 \n\
/* 0802390c */ LSRS R0, R0, 0x10 \n\
/* 0802390e */ LDR R1, [R4] \n\
/* 08023910 */ LDR R1, [R1, 0x7C] \n\
/* 08023912 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08023914 */ LSLS R2, R2, 0x6 \n\
/* 08023916 */ BL func_08002ee0 \n\
/* 0802391a */ LDR R1, =func_080238ac \n\
/* 0802391c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802391e */ BL func_08005d38 \n\
/* 08023922 */ LDR R1, [R4] \n\
/* 08023924 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023926 */ STR R0, [R1, 0x7C] \n\
 \n\
branch_08023928: \n\
/* 08023928 */ POP {R4, R5} \n\
/* 0802392a */ POP {R0} \n\
/* 0802392c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

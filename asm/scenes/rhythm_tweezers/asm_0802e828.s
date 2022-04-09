asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e828 \n\
/* 0802e828 */ PUSH {R4, R5, LR} \n\
/* 0802e82a */ SUB SP, 0xC \n\
/* 0802e82c */ LDR R1, =D_030055d0 \n\
/* 0802e82e */ LDR R1, [R1] \n\
/* 0802e830 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0802e832 */ ADDS R5, 0x74 @ Add 0x74 to R5 \n\
/* 0802e834 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802e836 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802e838 */ STRB R1, [R5, 0x6] \n\
/* 0802e83a */ STR R4, [R5, 0x8] \n\
/* 0802e83c */ BL func_0800c3a4 \n\
/* 0802e840 */ STR R0, [R5, 0xC] \n\
/* 0802e842 */ LDR R0, =D_03005380 \n\
/* 0802e844 */ LDR R0, [R0] \n\
/* 0802e846 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802e848 */ LDRSH R1, [R5, R2] \n\
/* 0802e84a */ LDR R3, =D_089e3d98 \n\
/* 0802e84c */ LDRB R2, [R5, 0x5] \n\
/* 0802e84e */ LSLS R2, R2, 0x2 \n\
/* 0802e850 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802e852 */ LDR R2, [R2] \n\
/* 0802e854 */ STR R4, [SP] \n\
/* 0802e856 */ STR R4, [SP, 0x4] \n\
/* 0802e858 */ STR R4, [SP, 0x8] \n\
/* 0802e85a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802e85c */ BL func_0804d8f8 \n\
/* 0802e860 */ LDRB R0, [R5, 0x10] \n\
/* 0802e862 */ LDR R2, =D_0600f800 \n\
/* 0802e864 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e866 */ BEQ branch_0802e86a \n\
/* 0802e868 */ LDR R2, =D_0600f000 \n\
 \n\
branch_0802e86a: \n\
/* 0802e86a */ LDR R0, =D_089e3da4 \n\
/* 0802e86c */ LDRB R1, [R5, 0x5] \n\
/* 0802e86e */ LSLS R1, R1, 0x2 \n\
/* 0802e870 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802e872 */ LDR R0, [R1] \n\
/* 0802e874 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0802e876 */ BL func_08003eb8 \n\
/* 0802e87a */ ADD SP, 0xC \n\
/* 0802e87c */ POP {R4, R5} \n\
/* 0802e87e */ POP {R0} \n\
/* 0802e880 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

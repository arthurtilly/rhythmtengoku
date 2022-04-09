asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047824 \n\
/* 08047824 */ PUSH {R4-R6, LR} \n\
/* 08047826 */ SUB SP, 0x14 \n\
/* 08047828 */ LDR R6, =D_030055d0 \n\
/* 0804782a */ LDR R1, [R6] \n\
/* 0804782c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804782e */ STRB R0, [R1] \n\
/* 08047830 */ BL func_080477f4 \n\
/* 08047834 */ BL func_0800e0ec \n\
/* 08047838 */ STR R5, [SP] \n\
/* 0804783a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0804783c */ STR R0, [SP, 0x4] \n\
/* 0804783e */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08047840 */ STR R4, [SP, 0x8] \n\
/* 08047842 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047844 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08047846 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047848 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804784a */ BL func_0800e0a0 \n\
/* 0804784e */ LDR R0, =D_03005380 \n\
/* 08047850 */ LDR R0, [R0] \n\
/* 08047852 */ LDR R1, =D_088b7c88 \n\
/* 08047854 */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 08047856 */ STR R2, [SP] \n\
/* 08047858 */ STR R5, [SP, 0x4] \n\
/* 0804785a */ STR R4, [SP, 0x8] \n\
/* 0804785c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0804785e */ STR R2, [SP, 0xC] \n\
/* 08047860 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047862 */ LSLS R2, R2, 0x8 \n\
/* 08047864 */ STR R2, [SP, 0x10] \n\
/* 08047866 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047868 */ MOVS R3, 0x69 @ Set R3 to 0x69 \n\
/* 0804786a */ BL func_0804d160 \n\
/* 0804786e */ LDR R1, [R6] \n\
/* 08047870 */ STRH R0, [R1, 0x2] \n\
/* 08047872 */ ADD SP, 0x14 \n\
/* 08047874 */ POP {R4-R6} \n\
/* 08047876 */ POP {R0} \n\
/* 08047878 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

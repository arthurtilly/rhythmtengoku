asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080476e8 \n\
/* 080476e8 */ PUSH {R4-R6, LR} \n\
/* 080476ea */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080476ec */ PUSH {R6} \n\
/* 080476ee */ SUB SP, 0x14 \n\
/* 080476f0 */ LDR R1, =D_030055d0 \n\
/* 080476f2 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080476f4 */ LDR R1, [R1] \n\
/* 080476f6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080476f8 */ STRB R0, [R1] \n\
/* 080476fa */ BL func_080476b8 \n\
/* 080476fe */ BL func_0800e0ec \n\
/* 08047702 */ STR R5, [SP] \n\
/* 08047704 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08047706 */ STR R0, [SP, 0x4] \n\
/* 08047708 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0804770a */ STR R4, [SP, 0x8] \n\
/* 0804770c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804770e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08047710 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047712 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047714 */ BL func_0800e0a0 \n\
/* 08047718 */ LDR R6, =D_03005380 \n\
/* 0804771a */ LDR R0, [R6] \n\
/* 0804771c */ LDR R1, =D_088b794c \n\
/* 0804771e */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08047720 */ STR R2, [SP] \n\
/* 08047722 */ STR R5, [SP, 0x4] \n\
/* 08047724 */ STR R4, [SP, 0x8] \n\
/* 08047726 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08047728 */ STR R2, [SP, 0xC] \n\
/* 0804772a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804772c */ LSLS R2, R2, 0x8 \n\
/* 0804772e */ STR R2, [SP, 0x10] \n\
/* 08047730 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047732 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08047734 */ BL func_0804d160 \n\
/* 08047738 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804773a */ LDR R1, [R2] \n\
/* 0804773c */ STRH R0, [R1, 0x2] \n\
/* 0804773e */ LDR R0, [R6] \n\
/* 08047740 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08047742 */ LDRSH R1, [R1, R2] \n\
/* 08047744 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08047746 */ LSLS R2, R2, 0x1 \n\
/* 08047748 */ BL func_0804dcb8 \n\
/* 0804774c */ ADD SP, 0x14 \n\
/* 0804774e */ POP {R3} \n\
/* 08047750 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08047752 */ POP {R4-R6} \n\
/* 08047754 */ POP {R0} \n\
/* 08047756 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

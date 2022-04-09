asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080456d4 \n\
/* 080456d4 */ PUSH {R4, R5, LR} \n\
/* 080456d6 */ SUB SP, 0x14 \n\
/* 080456d8 */ LDR R5, =D_030055d0 \n\
/* 080456da */ LDR R1, [R5] \n\
/* 080456dc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080456de */ STRB R0, [R1] \n\
/* 080456e0 */ BL func_080456a4 \n\
/* 080456e4 */ BL func_0800e0ec \n\
/* 080456e8 */ STR R4, [SP] \n\
/* 080456ea */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080456ec */ STR R0, [SP, 0x4] \n\
/* 080456ee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080456f0 */ STR R0, [SP, 0x8] \n\
/* 080456f2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080456f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080456f6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080456f8 */ BL func_0800e0a0 \n\
/* 080456fc */ LDR R0, =D_03005380 \n\
/* 080456fe */ LDR R0, [R0] \n\
/* 08045700 */ LDR R1, =D_088adb94 \n\
/* 08045702 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08045704 */ STR R2, [SP] \n\
/* 08045706 */ STR R4, [SP, 0x4] \n\
/* 08045708 */ STR R4, [SP, 0x8] \n\
/* 0804570a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0804570c */ STR R2, [SP, 0xC] \n\
/* 0804570e */ STR R4, [SP, 0x10] \n\
/* 08045710 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045712 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08045714 */ BL func_0804d160 \n\
/* 08045718 */ LDR R1, [R5] \n\
/* 0804571a */ STRH R0, [R1, 0x2] \n\
/* 0804571c */ ADD SP, 0x14 \n\
/* 0804571e */ POP {R4, R5} \n\
/* 08045720 */ POP {R0} \n\
/* 08045722 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

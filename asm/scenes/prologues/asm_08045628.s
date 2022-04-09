asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045628 \n\
/* 08045628 */ PUSH {R4, R5, LR} \n\
/* 0804562a */ SUB SP, 0x4 \n\
/* 0804562c */ LDR R5, =D_03005380 \n\
/* 0804562e */ LDR R0, [R5] \n\
/* 08045630 */ LDR R4, =D_030055d0 \n\
/* 08045632 */ LDR R1, [R4] \n\
/* 08045634 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08045636 */ LDRSH R1, [R1, R2] \n\
/* 08045638 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804563a */ BL func_0804cebc \n\
/* 0804563e */ LDR R0, [R5] \n\
/* 08045640 */ LDR R1, [R4] \n\
/* 08045642 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08045644 */ LDRSH R1, [R1, R2] \n\
/* 08045646 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045648 */ STR R2, [SP] \n\
/* 0804564a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804564c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0804564e */ BL func_0804dae0 \n\
/* 08045652 */ ADD SP, 0x4 \n\
/* 08045654 */ POP {R4, R5} \n\
/* 08045656 */ POP {R0} \n\
/* 08045658 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

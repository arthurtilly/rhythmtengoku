asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020660 \n\
/* 08020660 */ PUSH {R4, R5, LR} \n\
/* 08020662 */ LDR R0, =D_030055d0 \n\
/* 08020664 */ LDR R4, [R0] \n\
/* 08020666 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 08020668 */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 0802066a */ LDR R0, [R4, 0x8] \n\
/* 0802066c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802066e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08020670 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020672 */ BL func_08010008 \n\
/* 08020676 */ LDR R0, [R4, 0x8] \n\
/* 08020678 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802067a */ BL func_0800ffc0 \n\
/* 0802067e */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08020680 */ BL func_0800c3a4 \n\
/* 08020684 */ STR R0, [R5, 0x10] \n\
/* 08020686 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020688 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802068a */ BL func_08017338 \n\
/* 0802068e */ POP {R4, R5} \n\
/* 08020690 */ POP {R0} \n\
/* 08020692 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

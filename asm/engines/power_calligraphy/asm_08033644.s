asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start calligraphy_engine_update \n\
/* 08033644 */ PUSH {R4-R6, LR} \n\
/* 08033646 */ BL func_08033370 \n\
/* 0803364a */ BL func_08032d34 \n\
/* 0803364e */ BL func_080328b8 \n\
/* 08033652 */ LDR R6, =D_03005380 \n\
/* 08033654 */ LDR R0, [R6] \n\
/* 08033656 */ LDR R5, =D_030055d0 \n\
/* 08033658 */ LDR R1, [R5] \n\
/* 0803365a */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 0803365c */ LDRSH R1, [R1, R2] \n\
/* 0803365e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08033660 */ BL func_0804ddb0 \n\
/* 08033664 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08033666 */ LDR R0, [R6] \n\
/* 08033668 */ LDR R1, [R5] \n\
/* 0803366a */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 0803366c */ LDRSH R1, [R1, R2] \n\
/* 0803366e */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08033670 */ BL func_0804ddb0 \n\
/* 08033674 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08033676 */ LDR R0, [R6] \n\
/* 08033678 */ LDR R1, [R5] \n\
/* 0803367a */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 0803367c */ LDRSH R1, [R1, R2] \n\
/* 0803367e */ LSLS R4, R4, 0x10 \n\
/* 08033680 */ ASRS R4, R4, 0x10 \n\
/* 08033682 */ LSLS R3, R3, 0x10 \n\
/* 08033684 */ ASRS R3, R3, 0x10 \n\
/* 08033686 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08033688 */ BL func_0804d5d4 \n\
/* 0803368c */ POP {R4-R6} \n\
/* 0803368e */ POP {R0} \n\
/* 08033690 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

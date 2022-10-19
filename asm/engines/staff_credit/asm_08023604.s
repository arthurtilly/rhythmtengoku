asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023604 \n\
/* 08023604 */ PUSH {R4, R5, LR} \n\
/* 08023606 */ SUB SP, 0xC \n\
/* 08023608 */ LDR R5, =D_030055d0 \n\
/* 0802360a */ LDR R1, [R5] \n\
/* 0802360c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802360e */ STRB R0, [R1] \n\
/* 08023610 */ BL func_080235d8 \n\
/* 08023614 */ BL func_0800e0ec \n\
/* 08023618 */ STR R4, [SP] \n\
/* 0802361a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0802361c */ STR R0, [SP, 0x4] \n\
/* 0802361e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08023620 */ STR R0, [SP, 0x8] \n\
/* 08023622 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08023624 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023626 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08023628 */ BL func_0800e0a0 \n\
/* 0802362c */ BL func_08023694 \n\
/* 08023630 */ LDR R2, =D_03004b10 \n\
/* 08023632 */ LDRH R1, [R2] \n\
/* 08023634 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08023636 */ LSLS R3, R3, 0x6 \n\
/* 08023638 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0802363a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802363c */ STRH R0, [R2] \n\
/* 0802363e */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08023640 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 08023642 */ MOVS R0, 0xC2 @ Set R0 to 0xC2 \n\
/* 08023644 */ STRH R0, [R1] \n\
/* 08023646 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08023648 */ STRH R0, [R2, 0x3C] \n\
/* 0802364a */ SUBS R1, 0xC @ Subtract 0xC from R1 \n\
/* 0802364c */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0802364e */ STRH R0, [R1] \n\
/* 08023650 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 08023652 */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 08023654 */ STRH R0, [R1] \n\
/* 08023656 */ LDR R3, [R5] \n\
/* 08023658 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0802365a */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 0802365c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802365e */ LSLS R0, R0, 0x5 \n\
/* 08023660 */ STRH R0, [R1] \n\
/* 08023662 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08023664 */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08023666 */ STRH R4, [R0] \n\
/* 08023668 */ LDRH R0, [R1] \n\
/* 0802366a */ LSLS R0, R0, 0x10 \n\
/* 0802366c */ ASRS R0, R0, 0x18 \n\
/* 0802366e */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08023670 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 08023672 */ STRH R0, [R1] \n\
/* 08023674 */ STR R4, [R3, 0x7C] \n\
/* 08023676 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023678 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802367a */ BL func_08017338 \n\
/* 0802367e */ ADD SP, 0xC \n\
/* 08023680 */ POP {R4, R5} \n\
/* 08023682 */ POP {R0} \n\
/* 08023684 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

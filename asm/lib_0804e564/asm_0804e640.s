asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e640 \n\
/* 0804e640 */ PUSH {R4, LR} \n\
/* 0804e642 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804e644 */ BL func_0804e564 \n\
/* 0804e648 */ LDR R0, =D_0300443c \n\
/* 0804e64a */ STR R4, [R0] \n\
/* 0804e64c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804e64e */ STR R1, [R4] \n\
/* 0804e650 */ LDR R0, =D_08bd0cd4 \n\
/* 0804e652 */ LDRB R0, [R0] \n\
/* 0804e654 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0804e656 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0804e658 */ STRB R0, [R2] \n\
/* 0804e65a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804e65c */ LSLS R0, R0, 0x8 \n\
/* 0804e65e */ STR R0, [R4, 0x8] \n\
/* 0804e660 */ LDRB R2, [R2] \n\
/* 0804e662 */ LSLS R0, R2 @ Set R0 to R0 << R2 (logical) \n\
/* 0804e664 */ STR R0, [R4, 0xC] \n\
/* 0804e666 */ STRH R1, [R4, 0x22] \n\
/* 0804e668 */ STR R1, [R4, 0x1C] \n\
/* 0804e66a */ LDR R1, =D_030064d4 \n\
/* 0804e66c */ LDR R0, =func_0804e598 \n\
/* 0804e66e */ STR R0, [R1] \n\
/* 0804e670 */ LDR R1, =D_03004440 \n\
/* 0804e672 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e674 */ STRB R0, [R1] \n\
/* 0804e676 */ POP {R4} \n\
/* 0804e678 */ POP {R0} \n\
/* 0804e67a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

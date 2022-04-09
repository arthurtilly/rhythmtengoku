asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c6fc \n\
/* 0801c6fc */ PUSH {R4-R7, LR} \n\
/* 0801c6fe */ SUB SP, 0x4 \n\
/* 0801c700 */ LDR R7, =D_030046a8 \n\
/* 0801c702 */ LSLS R0, R0, 0x2 \n\
/* 0801c704 */ ADDS R0, 0xC4 @ Add 0xC4 to R0 \n\
/* 0801c706 */ LDR R1, [R7] \n\
/* 0801c708 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 0801c70a */ LDRB R1, [R6, 0x3] \n\
/* 0801c70c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801c70e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801c710 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c712 */ BEQ branch_0801c77c \n\
/* 0801c714 */ LDR R5, =D_030046a4 \n\
/* 0801c716 */ LDR R0, [R5] \n\
/* 0801c718 */ LDR R4, =0x494 \n\
/* 0801c71a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801c71c */ LDR R1, [R0] \n\
/* 0801c71e */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 0801c720 */ LSLS R2, R2, 0x6 \n\
/* 0801c722 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801c724 */ LSLS R0, R0, 0x2 \n\
/* 0801c726 */ STR R0, [SP] \n\
/* 0801c728 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c72a */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801c72c */ BL func_080018e0 \n\
/* 0801c730 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801c732 */ BL func_0801c960 \n\
/* 0801c736 */ LDR R0, [R7] \n\
/* 0801c738 */ MOVS R1, 0xB9 @ Set R1 to 0xB9 \n\
/* 0801c73a */ LSLS R1, R1, 0x2 \n\
/* 0801c73c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c73e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801c740 */ LDRSB R1, [R6, R1] \n\
/* 0801c742 */ LDR R2, [R5] \n\
/* 0801c744 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0801c746 */ LDR R2, [R2] \n\
/* 0801c748 */ BL func_08011a90 \n\
/* 0801c74c */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801c74e */ LDR R1, =0x3ff \n\
/* 0801c750 */ LDR R0, [R5] \n\
/* 0801c752 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801c754 */ LDR R2, [R0] \n\
/* 0801c756 */ LSRS R3, R3, 0x1 \n\
/* 0801c758 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0801c75a */ BL func_08001724 \n\
/* 0801c75e */ LDR R0, [R5] \n\
/* 0801c760 */ LDRB R1, [R6, 0x2] \n\
/* 0801c762 */ MOVS R2, 0x93 @ Set R2 to 0x93 \n\
/* 0801c764 */ LSLS R2, R2, 0x3 \n\
/* 0801c766 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c768 */ STRB R1, [R0] \n\
/* 0801c76a */ B branch_0801c782 \n\
\n\
.ltorg \n\
 \n\
branch_0801c77c: \n\
/* 0801c77c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c77e */ BL func_0801c960 \n\
 \n\
branch_0801c782: \n\
/* 0801c782 */ LDR R0, =D_030046a4 \n\
/* 0801c784 */ LDR R3, [R0] \n\
/* 0801c786 */ LDR R0, =0x49c \n\
/* 0801c788 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0801c78a */ LDR R2, =D_089d81b4 \n\
/* 0801c78c */ LDRB R1, [R6] \n\
/* 0801c78e */ LSLS R0, R1, 0x1 \n\
/* 0801c790 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c792 */ LSLS R0, R0, 0x2 \n\
/* 0801c794 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 0801c796 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c798 */ LDR R0, [R0] \n\
/* 0801c79a */ STR R0, [R3] \n\
/* 0801c79c */ BL func_0801d978 \n\
/* 0801c7a0 */ LDR R0, =D_089d8518 \n\
/* 0801c7a2 */ BL func_0801d968 \n\
/* 0801c7a6 */ ADD SP, 0x4 \n\
/* 0801c7a8 */ POP {R4-R7} \n\
/* 0801c7aa */ POP {R0} \n\
/* 0801c7ac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

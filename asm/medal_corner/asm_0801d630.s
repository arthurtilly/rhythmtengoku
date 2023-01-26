asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d630 \n\
/* 0801d630 */ PUSH {R4, R5, LR} \n\
/* 0801d632 */ SUB SP, 0x14 \n\
/* 0801d634 */ LDR R4, =D_030046a4 \n\
/* 0801d636 */ LDR R0, [R4] \n\
/* 0801d638 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801d63a */ STRB R1, [R0, 0x18] \n\
/* 0801d63c */ LDR R2, [R4] \n\
/* 0801d63e */ LDR R0, =D_089dd498 \n\
/* 0801d640 */ LSLS R1, R1, 0x2 \n\
/* 0801d642 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801d644 */ LDR R0, [R1] \n\
/* 0801d646 */ STR R0, [R2, 0x14] \n\
/* 0801d648 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d64a */ BL func_08007324 \n\
/* 0801d64e */ BL func_080073f0 \n\
/* 0801d652 */ BL func_0801d5f4 \n\
/* 0801d656 */ BL func_0801d23c \n\
/* 0801d65a */ LDR R0, =D_03005380 \n\
/* 0801d65c */ LDR R0, [R0] \n\
/* 0801d65e */ LDR R1, =D_0890db98 \n\
/* 0801d660 */ MOVS R2, 0x58 @ Set R2 to 0x58 \n\
/* 0801d662 */ STR R2, [SP] \n\
/* 0801d664 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801d666 */ LSLS R2, R2, 0x4 \n\
/* 0801d668 */ STR R2, [SP, 0x4] \n\
/* 0801d66a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801d66c */ STR R2, [SP, 0x8] \n\
/* 0801d66e */ STR R5, [SP, 0xC] \n\
/* 0801d670 */ STR R5, [SP, 0x10] \n\
/* 0801d672 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d674 */ MOVS R3, 0x38 @ Set R3 to 0x38 \n\
/* 0801d676 */ BL func_0804d160 \n\
/* 0801d67a */ LDR R1, [R4] \n\
/* 0801d67c */ STRH R0, [R1, 0x12] \n\
/* 0801d67e */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0801d680 */ LDRSH R0, [R1, R2] \n\
/* 0801d682 */ BL func_0801d6e4 \n\
/* 0801d686 */ BL func_0801d11c \n\
/* 0801d68a */ BL func_0801d4c8 \n\
/* 0801d68e */ LDR R0, [R4] \n\
/* 0801d690 */ LDRB R0, [R0, 0x18] \n\
/* 0801d692 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0801d694 */ BNE branch_0801d69a \n\
/* 0801d696 */ BL func_0801d0b8 \n\
 \n\
branch_0801d69a: \n\
/* 0801d69a */ BL func_0800070c \n\
/* 0801d69e */ BL gameplay_pause_menu_set_quit_destination \n\
/* 0801d6a2 */ LDR R0, [R4] \n\
/* 0801d6a4 */ STR R5, [R0] \n\
/* 0801d6a6 */ BL func_08010478 \n\
/* 0801d6aa */ ADD SP, 0x14 \n\
/* 0801d6ac */ POP {R4, R5} \n\
/* 0801d6ae */ POP {R0} \n\
/* 0801d6b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

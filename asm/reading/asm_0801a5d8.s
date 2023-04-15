asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a5d8 \n\
/* 0801a5d8 */ PUSH {R4-R6, LR} \n\
/* 0801a5da */ LDR R6, =D_030046a4 \n\
/* 0801a5dc */ LDR R0, [R6] \n\
/* 0801a5de */ LDR R0, [R0, 0x8] \n\
/* 0801a5e0 */ BL text_printer_is_busy \n\
/* 0801a5e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a5e6 */ BNE branch_0801a628 \n\
/* 0801a5e8 */ LDR R4, =D_03005380 \n\
/* 0801a5ea */ LDR R0, [R4] \n\
/* 0801a5ec */ LDR R2, [R6] \n\
/* 0801a5ee */ MOVS R3, 0x8C @ Set R3 to 0x8C \n\
/* 0801a5f0 */ LSLS R3, R3, 0x1 \n\
/* 0801a5f2 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0801a5f4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801a5f6 */ LDRSH R1, [R1, R3] \n\
/* 0801a5f8 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0801a5fa */ LDRSB R3, [R2, R3] \n\
/* 0801a5fc */ NEGS R2, R3 @ Set R2 to -R3 \n\
/* 0801a5fe */ ORRS R2, R3 @ Set R2 to R2 | R3 \n\
/* 0801a600 */ LSRS R2, R2, 0x1F \n\
/* 0801a602 */ BL func_0804d770 \n\
/* 0801a606 */ LDR R5, [R4] \n\
/* 0801a608 */ LDR R0, [R6] \n\
/* 0801a60a */ MOVS R2, 0x8D @ Set R2 to 0x8D \n\
/* 0801a60c */ LSLS R2, R2, 0x1 \n\
/* 0801a60e */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0801a610 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801a612 */ LDRSH R4, [R1, R3] \n\
/* 0801a614 */ LDR R0, [R0, 0x8] \n\
/* 0801a616 */ BL text_printer_get_text \n\
/* 0801a61a */ NEGS R2, R0 @ Set R2 to -R0 \n\
/* 0801a61c */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0801a61e */ LSRS R2, R2, 0x1F \n\
/* 0801a620 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801a622 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801a624 */ BL func_0804d770 \n\
 \n\
branch_0801a628: \n\
/* 0801a628 */ LDR R1, [R6] \n\
/* 0801a62a */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 0801a62c */ LSLS R2, R2, 0x1 \n\
/* 0801a62e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801a630 */ LDRB R0, [R0] \n\
/* 0801a632 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a634 */ BEQ branch_0801a704 \n\
/* 0801a636 */ LDR R0, [R1, 0x8] \n\
/* 0801a638 */ BL text_printer_is_busy \n\
/* 0801a63c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a63e */ BNE branch_0801a66a \n\
/* 0801a640 */ LDR R0, [R6] \n\
/* 0801a642 */ MOVS R3, 0x8A @ Set R3 to 0x8A \n\
/* 0801a644 */ LSLS R3, R3, 0x1 \n\
/* 0801a646 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 0801a648 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0801a64a */ LDRSH R1, [R2, R6] \n\
/* 0801a64c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801a64e */ BGE branch_0801a652 \n\
/* 0801a650 */ NEGS R1, R1 @ Set R1 to -R1 \n\
 \n\
branch_0801a652: \n\
/* 0801a652 */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 0801a654 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0801a656 */ ASRS R1, R0, 0x8 \n\
/* 0801a658 */ CMP R1, 0xF @ Compare R1 and 0xF \n\
/* 0801a65a */ BGT branch_0801a65e \n\
/* 0801a65c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
 \n\
branch_0801a65e: \n\
/* 0801a65e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801a660 */ LDRSH R0, [R2, R3] \n\
/* 0801a662 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a664 */ BGE branch_0801a668 \n\
/* 0801a666 */ NEGS R1, R1 @ Set R1 to -R1 \n\
 \n\
branch_0801a668: \n\
/* 0801a668 */ STRH R1, [R2] \n\
 \n\
branch_0801a66a: \n\
/* 0801a66a */ LDR R5, =D_030046a4 \n\
/* 0801a66c */ LDR R2, [R5] \n\
/* 0801a66e */ MOVS R6, 0x89 @ Set R6 to 0x89 \n\
/* 0801a670 */ LSLS R6, R6, 0x1 \n\
/* 0801a672 */ ADDS R4, R2, R6 @ Set R4 to R2 + R6 \n\
/* 0801a674 */ MOVS R0, 0x8A @ Set R0 to 0x8A \n\
/* 0801a676 */ LSLS R0, R0, 0x1 \n\
/* 0801a678 */ ADDS R3, R2, R0 @ Set R3 to R2 + R0 \n\
/* 0801a67a */ LDRH R0, [R3] \n\
/* 0801a67c */ LDRH R1, [R4] \n\
/* 0801a67e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801a680 */ ADDS R6, 0x4 @ Add 0x4 to R6 \n\
/* 0801a682 */ ADDS R1, R2, R6 @ Set R1 to R2 + R6 \n\
/* 0801a684 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0801a686 */ STRH R0, [R1] \n\
/* 0801a688 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a68a */ LDRSH R1, [R3, R0] \n\
/* 0801a68c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801a68e */ BNE branch_0801a704 \n\
/* 0801a690 */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 0801a692 */ LSLS R0, R0, 0x1 \n\
/* 0801a694 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0801a696 */ LDRB R0, [R2] \n\
/* 0801a698 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801a69a */ BEQ branch_0801a6ac \n\
/* 0801a69c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0801a69e */ BEQ branch_0801a6e0 \n\
/* 0801a6a0 */ STRB R6, [R2] \n\
/* 0801a6a2 */ B branch_0801a704 \n\
\n\
.ltorg \n\
 \n\
branch_0801a6ac: \n\
/* 0801a6ac */ STRH R1, [R4] \n\
/* 0801a6ae */ LDR R0, =0xff60 \n\
/* 0801a6b0 */ STRH R0, [R3] \n\
/* 0801a6b2 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0801a6b4 */ STRB R0, [R2] \n\
/* 0801a6b6 */ LDR R1, [R5] \n\
/* 0801a6b8 */ LDRB R0, [R1, 0xC] \n\
/* 0801a6ba */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801a6bc */ STRB R0, [R1, 0xC] \n\
/* 0801a6be */ LDR R0, [R5] \n\
/* 0801a6c0 */ LDR R0, [R0, 0x8] \n\
/* 0801a6c2 */ BL text_printer_resume \n\
/* 0801a6c6 */ LDR R1, [R5] \n\
/* 0801a6c8 */ LDR R0, [R1, 0x8] \n\
/* 0801a6ca */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0801a6cc */ LDRSB R2, [R1, R2] \n\
/* 0801a6ce */ LSLS R2, R2, 0x3 \n\
/* 0801a6d0 */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 0801a6d2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801a6d4 */ BL text_printer_export_data \n\
/* 0801a6d8 */ B branch_0801a704 \n\
\n\
.ltorg \n\
 \n\
branch_0801a6e0: \n\
/* 0801a6e0 */ STRH R1, [R4] \n\
/* 0801a6e2 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0801a6e4 */ STRH R0, [R3] \n\
/* 0801a6e6 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801a6e8 */ STRB R0, [R2] \n\
/* 0801a6ea */ LDR R1, [R5] \n\
/* 0801a6ec */ LDRB R0, [R1, 0xC] \n\
/* 0801a6ee */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0801a6f0 */ STRB R0, [R1, 0xC] \n\
/* 0801a6f2 */ LDR R1, [R5] \n\
/* 0801a6f4 */ LDR R0, [R1, 0x8] \n\
/* 0801a6f6 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0801a6f8 */ LDRSB R2, [R1, R2] \n\
/* 0801a6fa */ LSLS R2, R2, 0x3 \n\
/* 0801a6fc */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 0801a6fe */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801a700 */ BL text_printer_import_data \n\
 \n\
branch_0801a704: \n\
/* 0801a704 */ POP {R4-R6} \n\
/* 0801a706 */ POP {R0} \n\
/* 0801a708 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

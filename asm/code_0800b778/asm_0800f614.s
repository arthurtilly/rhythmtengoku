asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f614 \n\
/* 0800f614 */ PUSH {R4-R7, LR} \n\
/* 0800f616 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800f618 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800f61a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800f61c */ PUSH {R5-R7} \n\
/* 0800f61e */ SUB SP, 0x8 \n\
/* 0800f620 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800f622 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800f624 */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
/* 0800f626 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f628 */ STRB R0, [R1] \n\
/* 0800f62a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800f62c */ LDR R6, [R0, 0x50] \n\
/* 0800f62e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800f630 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800f632 */ ADDS R0, 0x4F @ Add 0x4F to R0 \n\
/* 0800f634 */ LDRB R0, [R0] \n\
/* 0800f636 */ CMP R9, R0 @ Compare R9 and R0 \n\
/* 0800f638 */ BCS branch_0800f69c \n\
/* 0800f63a */ LDR R7, =0xffc00000 \n\
/* 0800f63c */ MOVS R5, 0x98 @ Set R5 to 0x98 \n\
/* 0800f63e */ LSLS R5, R5, 0x1 \n\
 \n\
branch_0800f640: \n\
/* 0800f640 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f642 */ LDRSH R0, [R6, R2] \n\
/* 0800f644 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f646 */ BLT branch_0800f68c \n\
/* 0800f648 */ ADDS R1, R6, 0x4 @ Set R1 to R6 + 0x4 \n\
/* 0800f64a */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
/* 0800f64c */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 0800f64e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800f650 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800f652 */ BL func_0800f4a0 \n\
/* 0800f656 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800f658 */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 0800f65a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800f65c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800f65e */ BL func_0800f524 \n\
/* 0800f662 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 0800f664 */ LDRSH R0, [R6, R1] \n\
/* 0800f666 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f668 */ BEQ branch_0800f68c \n\
/* 0800f66a */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 0800f66c */ LDRSH R0, [R6, R2] \n\
/* 0800f66e */ ASRS R1, R7, 0x10 \n\
/* 0800f670 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0800f672 */ BLT branch_0800f68c \n\
/* 0800f674 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0800f676 */ BGT branch_0800f68c \n\
/* 0800f678 */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 0800f67a */ LDRSH R0, [R6, R2] \n\
/* 0800f67c */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0800f67e */ BLT branch_0800f68c \n\
/* 0800f680 */ CMP R0, 0xE0 @ Compare R0 and 0xE0 \n\
/* 0800f682 */ BGT branch_0800f68c \n\
/* 0800f684 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800f686 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800f688 */ BL func_0800f588 \n\
 \n\
branch_0800f68c: \n\
/* 0800f68c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800f68e */ ADD R9, R0 @ Add R0 to R9 \n\
/* 0800f690 */ ADDS R6, 0x30 @ Add 0x30 to R6 \n\
/* 0800f692 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800f694 */ ADDS R0, 0x4F @ Add 0x4F to R0 \n\
/* 0800f696 */ LDRB R0, [R0] \n\
/* 0800f698 */ CMP R9, R0 @ Compare R9 and R0 \n\
/* 0800f69a */ BCC branch_0800f640 \n\
 \n\
branch_0800f69c: \n\
/* 0800f69c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800f69e */ LDR R6, [R1, 0x50] \n\
/* 0800f6a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f6a2 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800f6a4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800f6a6 */ ADDS R0, 0x4F @ Add 0x4F to R0 \n\
/* 0800f6a8 */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
/* 0800f6aa */ STR R1, [SP, 0x4] \n\
/* 0800f6ac */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800f6ae */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800f6b0 */ ADDS R5, 0x54 @ Add 0x54 to R5 \n\
/* 0800f6b2 */ LDRB R0, [R4] \n\
/* 0800f6b4 */ CMP R9, R0 @ Compare R9 and R0 \n\
/* 0800f6b6 */ BCS branch_0800f6d6 \n\
 \n\
branch_0800f6b8: \n\
/* 0800f6b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f6ba */ LDRSH R1, [R6, R2] \n\
/* 0800f6bc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800f6be */ BLT branch_0800f6ca \n\
/* 0800f6c0 */ LDR R0, =gSpriteHandler \n\
/* 0800f6c2 */ LDR R0, [R0] \n\
/* 0800f6c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f6c6 */ BL sprite_set_visible \n\
 \n\
branch_0800f6ca: \n\
/* 0800f6ca */ ADDS R6, 0x30 @ Add 0x30 to R6 \n\
/* 0800f6cc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800f6ce */ ADD R9, R0 @ Add R0 to R9 \n\
/* 0800f6d0 */ LDRB R1, [R4] \n\
/* 0800f6d2 */ CMP R9, R1 @ Compare R9 and R1 \n\
/* 0800f6d4 */ BCC branch_0800f6b8 \n\
 \n\
branch_0800f6d6: \n\
/* 0800f6d6 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800f6d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f6da */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800f6dc */ B branch_0800f7a2 \n\
\n\
.ltorg \n\
 \n\
branch_0800f6e8: \n\
/* 0800f6e8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800f6ea */ ADDS R0, 0x7B @ Add 0x7B to R0 \n\
/* 0800f6ec */ ADD R0, R9 @ Add R9 to R0 \n\
/* 0800f6ee */ LDRB R1, [R0] \n\
/* 0800f6f0 */ LSLS R0, R1, 0x1 \n\
/* 0800f6f2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f6f4 */ LSLS R0, R0, 0x4 \n\
/* 0800f6f6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800f6f8 */ LDR R1, [R2, 0x50] \n\
/* 0800f6fa */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 0800f6fc */ LDR R1, =gSpriteHandler \n\
/* 0800f6fe */ LDR R0, [R1] \n\
/* 0800f700 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f702 */ LDRSH R7, [R6, R2] \n\
/* 0800f704 */ MOVS R1, 0x1C @ Set R1 to 0x1C \n\
/* 0800f706 */ LDRSH R2, [R6, R1] \n\
/* 0800f708 */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 0800f70a */ LDRSH R3, [R6, R1] \n\
/* 0800f70c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800f70e */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0800f710 */ LDRH R1, [R1] \n\
/* 0800f712 */ ADD R1, R9 @ Add R9 to R1 \n\
/* 0800f714 */ LSLS R1, R1, 0x10 \n\
/* 0800f716 */ LSRS R1, R1, 0x10 \n\
/* 0800f718 */ STR R1, [SP] \n\
/* 0800f71a */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800f71c */ BL sprite_set_x_y_z \n\
/* 0800f720 */ LDR R2, =gSpriteHandler \n\
/* 0800f722 */ LDR R5, [R2] \n\
/* 0800f724 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800f726 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f728 */ LDRSB R4, [R0, R4] \n\
/* 0800f72a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800f72c */ BL func_08002520 \n\
/* 0800f730 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800f732 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800f734 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800f736 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800f738 */ BL sprite_set_affine_params \n\
/* 0800f73c */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0800f73e */ LDRSH R1, [R6, R2] \n\
/* 0800f740 */ MOVS R2, 0x24 @ Set R2 to 0x24 \n\
/* 0800f742 */ LDRSH R0, [R6, R2] \n\
/* 0800f744 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800f746 */ LSLS R1, R1, 0x8 \n\
/* 0800f748 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800f74a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f74c */ LDRSB R0, [R2, R0] \n\
/* 0800f74e */ ASRS R4, R1, 0x10 \n\
/* 0800f750 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800f752 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f754 */ BL func_080024dc \n\
/* 0800f758 */ CMP R4, 0xFF @ Compare R4 and 0xFF \n\
/* 0800f75a */ BLE branch_0800f76c \n\
/* 0800f75c */ LDR R1, =gSpriteHandler \n\
/* 0800f75e */ LDR R0, [R1] \n\
/* 0800f760 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800f762 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800f764 */ B branch_0800f778 \n\
\n\
.ltorg \n\
 \n\
branch_0800f76c: \n\
/* 0800f76c */ CMP R4, 0x7F @ Compare R4 and 0x7F \n\
/* 0800f76e */ BLE branch_0800f790 \n\
/* 0800f770 */ LDR R1, =gSpriteHandler \n\
/* 0800f772 */ LDR R0, [R1] \n\
/* 0800f774 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800f776 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
 \n\
branch_0800f778: \n\
/* 0800f778 */ BL func_0804dc8c \n\
/* 0800f77c */ LDR R2, =gSpriteHandler \n\
/* 0800f77e */ LDR R0, [R2] \n\
/* 0800f780 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800f782 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800f784 */ BL sprite_set_visible \n\
/* 0800f788 */ B branch_0800f79c \n\
\n\
.ltorg \n\
 \n\
branch_0800f790: \n\
/* 0800f790 */ LDR R1, =gSpriteHandler \n\
/* 0800f792 */ LDR R0, [R1] \n\
/* 0800f794 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800f796 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f798 */ BL sprite_set_visible \n\
 \n\
branch_0800f79c: \n\
/* 0800f79c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800f79e */ ADD R10, R2 @ Add R2 to R10 \n\
/* 0800f7a0 */ ADD R9, R2 @ Add R2 to R9 \n\
 \n\
branch_0800f7a2: \n\
/* 0800f7a2 */ LDR R0, [SP, 0x4] \n\
/* 0800f7a4 */ LDRB R0, [R0] \n\
/* 0800f7a6 */ CMP R9, R0 @ Compare R9 and R0 \n\
/* 0800f7a8 */ BCC branch_0800f6e8 \n\
/* 0800f7aa */ ADD SP, 0x8 \n\
/* 0800f7ac */ POP {R3-R5} \n\
/* 0800f7ae */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800f7b0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800f7b2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800f7b4 */ POP {R4-R7} \n\
/* 0800f7b6 */ POP {R0} \n\
/* 0800f7b8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

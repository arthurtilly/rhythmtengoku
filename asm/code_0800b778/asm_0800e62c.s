asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e62c \n\
/* 0800e62c */ PUSH {R4-R6, LR} \n\
/* 0800e62e */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0800e630 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0800e632 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800e634 */ PUSH {R4-R6} \n\
/* 0800e636 */ SUB SP, 0x10 \n\
/* 0800e638 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e63a */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0800e63c */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800e63e */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0800e640 */ LDR R6, [SP, 0x2C] \n\
/* 0800e642 */ LSLS R4, R4, 0x10 \n\
/* 0800e644 */ LSRS R4, R4, 0x10 \n\
/* 0800e646 */ LSLS R5, R5, 0x10 \n\
/* 0800e648 */ LSRS R5, R5, 0x10 \n\
/* 0800e64a */ LSLS R6, R6, 0x10 \n\
/* 0800e64c */ LSRS R6, R6, 0x10 \n\
/* 0800e64e */ LSLS R0, R0, 0x10 \n\
/* 0800e650 */ ASRS R0, R0, 0x10 \n\
/* 0800e652 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e654 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0800e656 */ ADD R1, SP @ Add SP to R1 \n\
/* 0800e658 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800e65a */ ADD R1, SP, 0xC \n\
/* 0800e65c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800e65e */ BL get_sprite_xy \n\
/* 0800e662 */ ADD R0, SP, 0xC \n\
/* 0800e664 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800e666 */ LDRSH R2, [R0, R1] \n\
/* 0800e668 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800e66a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800e66c */ LDRSH R3, [R0, R1] \n\
/* 0800e66e */ LSLS R4, R4, 0x10 \n\
/* 0800e670 */ ASRS R4, R4, 0x10 \n\
/* 0800e672 */ STR R4, [SP] \n\
/* 0800e674 */ LSLS R5, R5, 0x10 \n\
/* 0800e676 */ ASRS R5, R5, 0x10 \n\
/* 0800e678 */ STR R5, [SP, 0x4] \n\
/* 0800e67a */ STR R6, [SP, 0x8] \n\
/* 0800e67c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800e67e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800e680 */ BL func_0800e57c \n\
/* 0800e684 */ ADD SP, 0x10 \n\
/* 0800e686 */ POP {R3-R5} \n\
/* 0800e688 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e68a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e68c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800e68e */ POP {R4-R6} \n\
/* 0800e690 */ POP {R1} \n\
/* 0800e692 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

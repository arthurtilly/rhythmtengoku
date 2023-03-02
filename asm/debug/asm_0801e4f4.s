asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e4f4 \n\
/* 0801e4f4 */ PUSH {R4-R7, LR} \n\
/* 0801e4f6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801e4f8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801e4fa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801e4fc */ PUSH {R5-R7} \n\
/* 0801e4fe */ SUB SP, 0x84 \n\
/* 0801e500 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801e502 */ STR R1, [SP, 0x78] \n\
/* 0801e504 */ LDR R6, =D_030046a4 \n\
/* 0801e506 */ LDR R4, [R6] \n\
/* 0801e508 */ LDRH R2, [R4, 0xC] \n\
/* 0801e50a */ SUBS R0, R2, 0x1 @ Set R0 to R2 - 0x1 \n\
/* 0801e50c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e50e */ BGE branch_0801e512 \n\
/* 0801e510 */ ADDS R0, R2, 0x6 @ Set R0 to R2 + 0x6 \n\
 \n\
branch_0801e512: \n\
/* 0801e512 */ ASRS R3, R0, 0x3 \n\
/* 0801e514 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0801e516 */ BGE branch_0801e51a \n\
/* 0801e518 */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
 \n\
branch_0801e51a: \n\
/* 0801e51a */ CMP R7, R3 @ Check R7 - R3 \n\
/* 0801e51c */ BLE branch_0801e520 \n\
/* 0801e51e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0801e520: \n\
/* 0801e520 */ LSLS R0, R7, 0x3 \n\
/* 0801e522 */ LDR R5, [SP, 0x78] \n\
/* 0801e524 */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0801e526 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0801e528 */ CMP R1, R2 @ Check R1 - R2 \n\
/* 0801e52a */ BLT branch_0801e534 \n\
/* 0801e52c */ LSLS R0, R3, 0x3 \n\
/* 0801e52e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801e530 */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0801e532 */ STR R2, [SP, 0x78] \n\
 \n\
branch_0801e534: \n\
/* 0801e534 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0801e536 */ LDRSH R0, [R4, R1] \n\
/* 0801e538 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0801e53a */ BNE branch_0801e53e \n\
/* 0801e53c */ B branch_0801e66e \n\
 \n\
branch_0801e53e: \n\
/* 0801e53e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801e540 */ ADDS R2, R7, 0x1 @ Set R2 to R7 + 0x1 \n\
/* 0801e542 */ STR R2, [SP, 0x7C] \n\
/* 0801e544 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0801e546 */ STR R3, [SP, 0x80] \n\
/* 0801e548 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801e54a */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0801e54c */ MOV R8, R3 @ Set R8 to R3 \n\
 \n\
branch_0801e54e: \n\
/* 0801e54e */ LDR R2, [R6] \n\
/* 0801e550 */ LSLS R4, R5, 0x1 \n\
/* 0801e552 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801e554 */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 0801e556 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 0801e558 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e55a */ LDRSH R0, [R1, R3] \n\
/* 0801e55c */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 0801e55e */ BLE branch_0801e586 \n\
/* 0801e560 */ LDR R0, [R2, 0x4] \n\
/* 0801e562 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e564 */ LDRSH R1, [R1, R2] \n\
/* 0801e566 */ BL func_08007b04 \n\
/* 0801e56a */ LDR R0, =D_03005380 \n\
/* 0801e56c */ LDR R0, [R0] \n\
/* 0801e56e */ LDR R1, [R6] \n\
/* 0801e570 */ ADDS R1, 0x16 @ Add 0x16 to R1 \n\
/* 0801e572 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801e574 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e576 */ LDRSH R1, [R1, R3] \n\
/* 0801e578 */ BL func_0804d504 \n\
/* 0801e57c */ LDR R0, [R6] \n\
/* 0801e57e */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 0801e580 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801e582 */ LDR R1, =0xffff \n\
/* 0801e584 */ STRH R1, [R0] \n\
 \n\
branch_0801e586: \n\
/* 0801e586 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801e588 */ CMP R5, 0x7 @ Compare R5 and 0x7 \n\
/* 0801e58a */ BLS branch_0801e54e \n\
/* 0801e58c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801e58e */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0801e590 */ MOV R5, R10 @ Set R5 to R10 \n\
/* 0801e592 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801e594 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0801e596 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0801e598 */ BCS branch_0801e610 \n\
/* 0801e59a */ LDR R1, =D_030046a4 \n\
/* 0801e59c */ LDR R0, [R1] \n\
/* 0801e59e */ LDRH R0, [R0, 0xC] \n\
/* 0801e5a0 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0801e5a2 */ BCS branch_0801e610 \n\
/* 0801e5a4 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0801e5a6 */ LDR R1, =D_089ddbe8 \n\
/* 0801e5a8 */ LSLS R0, R7, 0x6 \n\
/* 0801e5aa */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 0801e5ac */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0801e5ae */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0801e5b0 */ LSLS R6, R6, 0xE \n\
 \n\
branch_0801e5b2: \n\
/* 0801e5b2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801e5b4 */ LDR R0, [R1] \n\
/* 0801e5b6 */ LDR R0, [R0, 0x4] \n\
/* 0801e5b8 */ LDR R1, [R4] \n\
/* 0801e5ba */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801e5bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e5be */ BL bmp_font_obj_print_l \n\
/* 0801e5c2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801e5c4 */ LDR R0, =D_03005380 \n\
/* 0801e5c6 */ LDR R0, [R0] \n\
/* 0801e5c8 */ ASRS R1, R6, 0x10 \n\
/* 0801e5ca */ STR R1, [SP] \n\
/* 0801e5cc */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801e5ce */ LSLS R1, R1, 0x4 \n\
/* 0801e5d0 */ STR R1, [SP, 0x4] \n\
/* 0801e5d2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801e5d4 */ STR R1, [SP, 0x8] \n\
/* 0801e5d6 */ STR R1, [SP, 0xC] \n\
/* 0801e5d8 */ STR R1, [SP, 0x10] \n\
/* 0801e5da */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0801e5dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e5de */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801e5e0 */ BL func_0804d160 \n\
/* 0801e5e4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801e5e6 */ LDR R3, [R2] \n\
/* 0801e5e8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801e5ea */ LSLS R2, R1, 0x1 \n\
/* 0801e5ec */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0801e5ee */ ADDS R1, 0x16 @ Add 0x16 to R1 \n\
/* 0801e5f0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801e5f2 */ STRH R0, [R1] \n\
/* 0801e5f4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801e5f6 */ LSLS R2, R2, 0xD \n\
/* 0801e5f8 */ ADDS R6, R6, R2 @ Set R6 to R6 + R2 \n\
/* 0801e5fa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801e5fc */ ADD R8, R0 @ Add R0 to R8 \n\
/* 0801e5fe */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0801e600 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801e602 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0801e604 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0801e606 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0801e608 */ BCS branch_0801e610 \n\
/* 0801e60a */ LDRH R3, [R3, 0xC] \n\
/* 0801e60c */ CMP R5, R3 @ Check R5 - R3 \n\
/* 0801e60e */ BCC branch_0801e5b2 \n\
 \n\
branch_0801e610: \n\
/* 0801e610 */ LDR R5, =D_030046a4 \n\
/* 0801e612 */ LDR R1, [R5] \n\
/* 0801e614 */ LDR R0, [R1, 0x4] \n\
/* 0801e616 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0801e618 */ LDRSH R1, [R1, R2] \n\
/* 0801e61a */ BL func_08007b04 \n\
/* 0801e61e */ LDR R3, [SP, 0x7C] \n\
/* 0801e620 */ LSLS R1, R3, 0x1 \n\
/* 0801e622 */ LDR R6, =D_089ddf60 \n\
/* 0801e624 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0801e626 */ ADD R0, SP, 0x14 \n\
/* 0801e628 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801e62a */ BL func_08008184 \n\
/* 0801e62e */ ADD R0, SP, 0x14 \n\
/* 0801e630 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801e632 */ STRB R4, [R0, 0x2] \n\
/* 0801e634 */ LDR R1, =D_08059f8c \n\
/* 0801e636 */ BL func_080081a8 \n\
/* 0801e63a */ LDR R0, [SP, 0x80] \n\
/* 0801e63c */ LSLS R1, R0, 0x1 \n\
/* 0801e63e */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0801e640 */ ADD R0, SP, 0x14 \n\
/* 0801e642 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801e644 */ BL func_080081d4 \n\
/* 0801e648 */ LDR R0, [R5] \n\
/* 0801e64a */ LDR R0, [R0, 0x4] \n\
/* 0801e64c */ ADD R1, SP, 0x14 \n\
/* 0801e64e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801e650 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0801e652 */ BL bmp_font_obj_print_r \n\
/* 0801e656 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801e658 */ LDR R0, =D_03005380 \n\
/* 0801e65a */ LDR R0, [R0] \n\
/* 0801e65c */ LDR R1, [R5] \n\
/* 0801e65e */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 0801e660 */ LDRSH R1, [R1, R3] \n\
/* 0801e662 */ STR R4, [SP] \n\
/* 0801e664 */ STR R4, [SP, 0x4] \n\
/* 0801e666 */ STR R4, [SP, 0x8] \n\
/* 0801e668 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e66a */ BL func_0804d8f8 \n\
 \n\
branch_0801e66e: \n\
/* 0801e66e */ LDR R0, =D_030046a4 \n\
/* 0801e670 */ LDR R0, [R0] \n\
/* 0801e672 */ STRH R7, [R0, 0xE] \n\
/* 0801e674 */ ADD R4, SP, 0x78 \n\
/* 0801e676 */ LDRH R4, [R4] \n\
/* 0801e678 */ STRH R4, [R0, 0x10] \n\
/* 0801e67a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801e67c */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0801e67e */ NEGS R4, R4 @ Set R4 to -R4 \n\
 \n\
branch_0801e680: \n\
/* 0801e680 */ LDR R6, =D_030046a4 \n\
/* 0801e682 */ LDR R0, [R6] \n\
/* 0801e684 */ LSLS R1, R5, 0x1 \n\
/* 0801e686 */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 0801e688 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0801e68a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e68c */ LDRSH R0, [R1, R2] \n\
/* 0801e68e */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0801e690 */ BLE branch_0801e6a0 \n\
/* 0801e692 */ LDR R0, =D_03005380 \n\
/* 0801e694 */ LDR R0, [R0] \n\
/* 0801e696 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e698 */ LDRSH R1, [R1, R3] \n\
/* 0801e69a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e69c */ BL func_0804d8c4 \n\
 \n\
branch_0801e6a0: \n\
/* 0801e6a0 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801e6a2 */ CMP R5, 0x7 @ Compare R5 and 0x7 \n\
/* 0801e6a4 */ BLS branch_0801e680 \n\
/* 0801e6a6 */ LDR R4, =D_03005380 \n\
/* 0801e6a8 */ LDR R0, [R4] \n\
/* 0801e6aa */ LDR R1, [R6] \n\
/* 0801e6ac */ MOVS R5, 0x10 @ Set R5 to 0x10 \n\
/* 0801e6ae */ LDRSH R2, [R1, R5] \n\
/* 0801e6b0 */ LSLS R2, R2, 0x1 \n\
/* 0801e6b2 */ ADDS R1, 0x16 @ Add 0x16 to R1 \n\
/* 0801e6b4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801e6b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e6b8 */ LDRSH R1, [R1, R2] \n\
/* 0801e6ba */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0801e6bc */ BL func_0804d8c4 \n\
/* 0801e6c0 */ LDR R0, [R4] \n\
/* 0801e6c2 */ LDR R2, [R6] \n\
/* 0801e6c4 */ MOVS R3, 0x12 @ Set R3 to 0x12 \n\
/* 0801e6c6 */ LDRSH R1, [R2, R3] \n\
/* 0801e6c8 */ MOVS R4, 0x10 @ Set R4 to 0x10 \n\
/* 0801e6ca */ LDRSH R3, [R2, R4] \n\
/* 0801e6cc */ LSLS R3, R3, 0x14 \n\
/* 0801e6ce */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 0801e6d0 */ LSLS R5, R5, 0xE \n\
/* 0801e6d2 */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 0801e6d4 */ ASRS R3, R3, 0x10 \n\
/* 0801e6d6 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801e6d8 */ BL func_0804d5d4 \n\
/* 0801e6dc */ ADD SP, 0x84 \n\
/* 0801e6de */ POP {R3-R5} \n\
/* 0801e6e0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801e6e2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801e6e4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801e6e6 */ POP {R4-R7} \n\
/* 0801e6e8 */ POP {R0} \n\
/* 0801e6ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");


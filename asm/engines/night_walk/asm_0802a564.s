asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start night_walk_init_stars \n\
/* 0802a564 */ PUSH {R4-R7, LR} \n\
/* 0802a566 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802a568 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802a56a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802a56c */ PUSH {R5-R7} \n\
/* 0802a56e */ SUB SP, 0x18 \n\
/* 0802a570 */ LDR R1, =D_030055d0 \n\
/* 0802a572 */ LDR R0, [R1] \n\
/* 0802a574 */ MOVS R2, 0xEE @ Set R2 to 0xEE \n\
/* 0802a576 */ LSLS R2, R2, 0x2 \n\
/* 0802a578 */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 0802a57a */ STR R2, [SP, 0x14] \n\
/* 0802a57c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a57e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a580 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0802a582 */ LDR R7, =D_03005380 \n\
/* 0802a584 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802a586 */ MOVS R6, 0xF1 @ Set R6 to 0xF1 \n\
/* 0802a588 */ LSLS R6, R6, 0x2 \n\
/* 0802a58a */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0802a58c */ LSLS R4, R4, 0x1 \n\
/* 0802a58e */ MOV R9, R4 @ Set R9 to R4 \n\
 \n\
branch_0802a590: \n\
/* 0802a590 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802a592 */ LDR R4, [R0] \n\
/* 0802a594 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0802a596 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0802a598 */ BL agb_random \n\
/* 0802a59c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802a59e */ LSLS R2, R2, 0x18 \n\
/* 0802a5a0 */ ASRS R2, R2, 0x18 \n\
/* 0802a5a2 */ LDR R0, [R7] \n\
/* 0802a5a4 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802a5a6 */ STR R1, [SP] \n\
/* 0802a5a8 */ LDR R1, =0x0000490a \n\
/* 0802a5aa */ STR R1, [SP, 0x4] \n\
/* 0802a5ac */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802a5ae */ STR R1, [SP, 0x8] \n\
/* 0802a5b0 */ STR R5, [SP, 0xC] \n\
/* 0802a5b2 */ STR R5, [SP, 0x10] \n\
/* 0802a5b4 */ LDR R1, =anim_night_walk_star_tiny \n\
/* 0802a5b6 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802a5b8 */ BL func_0804d160 \n\
/* 0802a5bc */ STRH R0, [R4] \n\
/* 0802a5be */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802a5c0 */ BL agb_random \n\
/* 0802a5c4 */ LSLS R0, R0, 0x10 \n\
/* 0802a5c6 */ LSRS R0, R0, 0x8 \n\
/* 0802a5c8 */ LDR R1, =0xfffff800 \n\
/* 0802a5ca */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a5cc */ STR R0, [R4, 0x4] \n\
/* 0802a5ce */ MOVS R0, 0xB0 @ Set R0 to 0xB0 \n\
/* 0802a5d0 */ BL agb_random \n\
/* 0802a5d4 */ LSLS R0, R0, 0x10 \n\
/* 0802a5d6 */ LSRS R0, R0, 0x8 \n\
/* 0802a5d8 */ LDR R2, =0xfffff800 \n\
/* 0802a5da */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802a5dc */ STR R0, [R4, 0x8] \n\
/* 0802a5de */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802a5e0 */ BL agb_random \n\
/* 0802a5e4 */ LSLS R0, R0, 0x10 \n\
/* 0802a5e6 */ LSRS R0, R0, 0x10 \n\
/* 0802a5e8 */ LDR R2, [R4, 0x4] \n\
/* 0802a5ea */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0802a5ec */ STR R2, [R4, 0x4] \n\
/* 0802a5ee */ LDR R0, [R7] \n\
/* 0802a5f0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a5f2 */ LDRSH R1, [R4, R3] \n\
/* 0802a5f4 */ LSLS R2, R2, 0x8 \n\
/* 0802a5f6 */ ASRS R2, R2, 0x10 \n\
/* 0802a5f8 */ LDR R3, [R4, 0x8] \n\
/* 0802a5fa */ LSLS R3, R3, 0x8 \n\
/* 0802a5fc */ ASRS R3, R3, 0x10 \n\
/* 0802a5fe */ BL func_0804d5d4 \n\
/* 0802a602 */ LDR R0, [R7] \n\
/* 0802a604 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a606 */ LDRSH R1, [R4, R2] \n\
/* 0802a608 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802a60a */ LDR R3, [R2] \n\
/* 0802a60c */ LDR R2, =0x00000544 \n\
/* 0802a60e */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0802a610 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a612 */ BL func_0804db44 \n\
/* 0802a616 */ STRH R5, [R4, 0x2] \n\
/* 0802a618 */ ADDS R6, 0xC @ Add 0xC to R6 \n\
/* 0802a61a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802a61c */ ADD R8, R3 @ Add R3 to R8 \n\
/* 0802a61e */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0802a620 */ CMP R4, 0x1F @ Compare R4 and 0x1F \n\
/* 0802a622 */ BLS branch_0802a590 \n\
/* 0802a624 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a626 */ LDR R0, =D_030055d0 \n\
/* 0802a628 */ LDR R2, [R0] \n\
/* 0802a62a */ LDR R1, [SP, 0x14] \n\
/* 0802a62c */ MOVS R4, 0x6 @ Set R4 to 0x6 \n\
/* 0802a62e */ LDRSH R0, [R1, R4] \n\
/* 0802a630 */ LSRS R1, R0, 0x1F \n\
/* 0802a632 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a634 */ ASRS R0, R0, 0x1 \n\
/* 0802a636 */ LDR R4, =0x00000544 \n\
/* 0802a638 */ ADDS R1, R2, R4 @ Set R1 to R2 + R4 \n\
/* 0802a63a */ STRH R0, [R1] \n\
/* 0802a63c */ MOVS R1, 0xA9 @ Set R1 to 0xA9 \n\
/* 0802a63e */ LSLS R1, R1, 0x3 \n\
/* 0802a640 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802a642 */ STR R3, [R0] \n\
/* 0802a644 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0802a646 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802a648 */ STR R3, [R2] \n\
/* 0802a64a */ ADD SP, 0x18 \n\
/* 0802a64c */ POP {R3-R5} \n\
/* 0802a64e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a650 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802a652 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802a654 */ POP {R4-R7} \n\
/* 0802a656 */ POP {R0} \n\
/* 0802a658 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

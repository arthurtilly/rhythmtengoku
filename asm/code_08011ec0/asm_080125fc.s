asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080125fc \n\
/* 080125fc */ PUSH {R4-R7, LR} \n\
/* 080125fe */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08012600 */ PUSH {R7} \n\
/* 08012602 */ SUB SP, 0xC \n\
/* 08012604 */ LDR R0, =D_030046a4 \n\
/* 08012606 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08012608 */ LDR R0, [R0] \n\
/* 0801260a */ LDRH R1, [R0, 0x16] \n\
/* 0801260c */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0801260e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08012610 */ STRH R1, [R0, 0x16] \n\
/* 08012612 */ LDRH R2, [R0, 0x18] \n\
/* 08012614 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 08012616 */ STRH R2, [R0, 0x18] \n\
/* 08012618 */ LSLS R1, R1, 0x10 \n\
/* 0801261a */ ASRS R1, R1, 0x12 \n\
/* 0801261c */ LSLS R2, R2, 0x10 \n\
/* 0801261e */ ASRS R2, R2, 0x12 \n\
/* 08012620 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012622 */ BL func_0800e058 \n\
/* 08012626 */ BL func_080127d0 \n\
/* 0801262a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801262c */ BNE branch_08012630 \n\
/* 0801262e */ B branch_080127b4 \n\
 \n\
branch_08012630: \n\
/* 08012630 */ LDR R6, =D_030055d8 \n\
/* 08012632 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08012634 */ LDRSB R5, [R6, R5] \n\
/* 08012636 */ LDR R0, =D_030053b8 \n\
/* 08012638 */ LDRH R1, [R0] \n\
/* 0801263a */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801263c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801263e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012640 */ BEQ branch_08012648 \n\
/* 08012642 */ LDRB R0, [R6] \n\
/* 08012644 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08012646 */ STRB R0, [R6] \n\
 \n\
branch_08012648: \n\
/* 08012648 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801264a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801264c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801264e */ BEQ branch_08012656 \n\
/* 08012650 */ LDRB R0, [R6] \n\
/* 08012652 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08012654 */ STRB R0, [R6] \n\
 \n\
branch_08012656: \n\
/* 08012656 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08012658 */ LDRSB R0, [R6, R0] \n\
/* 0801265a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801265c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0801265e */ BL func_080087d4 \n\
/* 08012662 */ STRB R0, [R6] \n\
/* 08012664 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08012666 */ LDRSB R0, [R6, R0] \n\
/* 08012668 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0801266a */ BEQ branch_080126e0 \n\
/* 0801266c */ LDR R0, =s_menu_cursor2_seqData \n\
/* 0801266e */ BL func_08002634 \n\
/* 08012672 */ LDR R4, =D_03005380 \n\
/* 08012674 */ LDR R0, [R4] \n\
/* 08012676 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08012678 */ LDR R1, [R2] \n\
/* 0801267a */ LSLS R2, R5, 0x1 \n\
/* 0801267c */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 0801267e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08012680 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08012682 */ LDRSH R1, [R1, R3] \n\
/* 08012684 */ LDR R3, =D_089cdca4 \n\
/* 08012686 */ LSLS R2, R5, 0x2 \n\
/* 08012688 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0801268a */ LDR R2, [R2] \n\
/* 0801268c */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0801268e */ STR R5, [SP] \n\
/* 08012690 */ STR R7, [SP, 0x4] \n\
/* 08012692 */ STR R7, [SP, 0x8] \n\
/* 08012694 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08012696 */ BL func_0804d8f8 \n\
/* 0801269a */ LDR R0, [R4] \n\
/* 0801269c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801269e */ LDR R1, [R2] \n\
/* 080126a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080126a2 */ LDRSB R2, [R6, R2] \n\
/* 080126a4 */ LSLS R3, R2, 0x1 \n\
/* 080126a6 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 080126a8 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080126aa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080126ac */ LDRSH R1, [R1, R3] \n\
/* 080126ae */ LDR R3, =D_089cdc90 \n\
/* 080126b0 */ LSLS R2, R2, 0x2 \n\
/* 080126b2 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080126b4 */ LDR R2, [R2] \n\
/* 080126b6 */ STR R5, [SP] \n\
/* 080126b8 */ STR R7, [SP, 0x4] \n\
/* 080126ba */ STR R7, [SP, 0x8] \n\
/* 080126bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080126be */ BL func_0804d8f8 \n\
/* 080126c2 */ B branch_080127b4 \n\
\n\
.ltorg \n\
 \n\
branch_080126e0: \n\
/* 080126e0 */ LDR R0, =D_03004afc \n\
/* 080126e2 */ LDRH R1, [R0] \n\
/* 080126e4 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 080126e6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080126e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080126ea */ BEQ branch_080127b4 \n\
/* 080126ec */ CMP R5, 0x4 @ Compare R5 and 0x4 \n\
/* 080126ee */ BHI branch_080127a0 \n\
/* 080126f0 */ LSLS R0, R5, 0x2 \n\
/* 080126f2 */ LDR R1, =jtbl_08012704 \n\
/* 080126f4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080126f6 */ LDR R0, [R0] \n\
/* 080126f8 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08012704: \n\
.word jump_08012718 \n\
.word jump_08012724 \n\
.word jump_08012748 \n\
.word jump_08012764 \n\
.word jump_08012788 \n\
\n\
jump_08012718: \n\
/* 08012718 */ LDR R0, =D_089cdf08 \n\
/* 0801271a */ BL func_08000584 \n\
/* 0801271e */ B branch_080127a0 \n\
\n\
.ltorg \n\
\n\
jump_08012724: \n\
/* 08012724 */ LDR R0, =D_089d7964 \n\
/* 08012726 */ LDR R4, =D_089cde20 \n\
/* 08012728 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801272a */ BL func_080006b0 \n\
/* 0801272e */ LDR R0, =D_089d471c \n\
/* 08012730 */ BL func_08000584 \n\
/* 08012734 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012736 */ BL func_080182ac \n\
/* 0801273a */ B branch_080127a0 \n\
\n\
.ltorg \n\
\n\
jump_08012748: \n\
/* 08012748 */ LDR R4, =D_089cdc24 \n\
/* 0801274a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801274c */ BL func_08000584 \n\
/* 08012750 */ LDR R1, =D_089cde20 \n\
/* 08012752 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012754 */ BL func_080006b0 \n\
/* 08012758 */ B branch_080127a0 \n\
\n\
.ltorg \n\
\n\
jump_08012764: \n\
/* 08012764 */ LDR R4, =D_089d85b4 \n\
/* 08012766 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012768 */ BL func_08000584 \n\
/* 0801276c */ LDR R1, =D_089cde20 \n\
/* 0801276e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012770 */ BL func_080006b0 \n\
/* 08012774 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012776 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08012778 */ BL func_080006d0 \n\
/* 0801277c */ B branch_080127a0 \n\
\n\
.ltorg \n\
\n\
jump_08012788: \n\
/* 08012788 */ LDR R4, =D_089cfc1c \n\
/* 0801278a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801278c */ BL func_08000584 \n\
/* 08012790 */ LDR R1, =D_089cde20 \n\
/* 08012792 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012794 */ BL func_080006b0 \n\
/* 08012798 */ LDR R0, =D_030046a4 \n\
/* 0801279a */ LDR R1, [R0] \n\
/* 0801279c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801279e */ STRB R0, [R1, 0x1B] \n\
 \n\
branch_080127a0: \n\
/* 080127a0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080127a2 */ BL func_0800bd04 \n\
/* 080127a6 */ LDR R0, =D_030046a4 \n\
/* 080127a8 */ LDR R1, [R0] \n\
/* 080127aa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080127ac */ STR R0, [R1, 0x8] \n\
/* 080127ae */ LDR R0, =s_menu_kettei1_seqData \n\
/* 080127b0 */ BL func_08002634 \n\
 \n\
branch_080127b4: \n\
/* 080127b4 */ ADD SP, 0xC \n\
/* 080127b6 */ POP {R3} \n\
/* 080127b8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080127ba */ POP {R4-R7} \n\
/* 080127bc */ POP {R0} \n\
/* 080127be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

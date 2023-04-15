asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a70c \n\
/* 0801a70c */ PUSH {R4, R5, LR} \n\
/* 0801a70e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801a710 */ BL func_0801a860 \n\
/* 0801a714 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a716 */ BEQ branch_0801a790 \n\
/* 0801a718 */ LDR R2, =D_03004ac0 \n\
/* 0801a71a */ LDRH R1, [R2] \n\
/* 0801a71c */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801a71e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801a720 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a722 */ BEQ branch_0801a734 \n\
/* 0801a724 */ LDR R0, =D_030046a4 \n\
/* 0801a726 */ LDR R0, [R0] \n\
/* 0801a728 */ LDRB R0, [R0, 0xC] \n\
/* 0801a72a */ LSLS R0, R0, 0x18 \n\
/* 0801a72c */ ASRS R0, R0, 0x18 \n\
/* 0801a72e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a730 */ BLE branch_0801a734 \n\
/* 0801a732 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_0801a734: \n\
/* 0801a734 */ LDRH R1, [R2] \n\
/* 0801a736 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801a738 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801a73a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a73c */ BEQ branch_0801a75a \n\
/* 0801a73e */ LDR R4, =D_030046a4 \n\
/* 0801a740 */ LDR R0, [R4] \n\
/* 0801a742 */ LDR R0, [R0, 0x8] \n\
/* 0801a744 */ BL text_printer_get_text \n\
/* 0801a748 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a74a */ BEQ branch_0801a75a \n\
/* 0801a74c */ LDR R0, [R4] \n\
/* 0801a74e */ LDRB R0, [R0, 0xC] \n\
/* 0801a750 */ LSLS R0, R0, 0x18 \n\
/* 0801a752 */ ASRS R0, R0, 0x18 \n\
/* 0801a754 */ CMP R0, 0x1E @ Compare R0 and 0x1E \n\
/* 0801a756 */ BGT branch_0801a75a \n\
/* 0801a758 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
 \n\
branch_0801a75a: \n\
/* 0801a75a */ LDR R0, =D_03004afc \n\
/* 0801a75c */ LDRH R1, [R0] \n\
/* 0801a75e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801a760 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801a762 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a764 */ BEQ branch_0801a782 \n\
/* 0801a766 */ LDR R4, =D_030046a4 \n\
/* 0801a768 */ LDR R0, [R4] \n\
/* 0801a76a */ LDR R0, [R0, 0x8] \n\
/* 0801a76c */ BL text_printer_get_text \n\
/* 0801a770 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a772 */ BEQ branch_0801a782 \n\
/* 0801a774 */ LDR R0, [R4] \n\
/* 0801a776 */ LDRB R0, [R0, 0xC] \n\
/* 0801a778 */ LSLS R0, R0, 0x18 \n\
/* 0801a77a */ ASRS R0, R0, 0x18 \n\
/* 0801a77c */ CMP R0, 0x1E @ Compare R0 and 0x1E \n\
/* 0801a77e */ BGT branch_0801a782 \n\
/* 0801a780 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
 \n\
branch_0801a782: \n\
/* 0801a782 */ LDR R0, =D_03004afc \n\
/* 0801a784 */ LDRH R1, [R0] \n\
/* 0801a786 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801a788 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801a78a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a78c */ BEQ branch_0801a790 \n\
/* 0801a78e */ MOVS R5, 0x3 @ Set R5 to 0x3 \n\
 \n\
branch_0801a790: \n\
/* 0801a790 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0801a792 */ BEQ branch_0801a7ec \n\
/* 0801a794 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0801a796 */ BGT branch_0801a7ac \n\
/* 0801a798 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0801a79a */ BEQ branch_0801a7b2 \n\
/* 0801a79c */ B branch_0801a83a \n\
\n\
.ltorg \n\
 \n\
branch_0801a7ac: \n\
/* 0801a7ac */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0801a7ae */ BEQ branch_0801a824 \n\
/* 0801a7b0 */ B branch_0801a83a \n\
 \n\
branch_0801a7b2: \n\
/* 0801a7b2 */ LDR R2, =D_030046a4 \n\
/* 0801a7b4 */ LDR R0, [R2] \n\
/* 0801a7b6 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0801a7b8 */ LSLS R1, R1, 0x1 \n\
/* 0801a7ba */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801a7bc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801a7be */ STRB R1, [R0] \n\
/* 0801a7c0 */ LDR R2, [R2] \n\
/* 0801a7c2 */ MOVS R0, 0x89 @ Set R0 to 0x89 \n\
/* 0801a7c4 */ LSLS R0, R0, 0x1 \n\
/* 0801a7c6 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0801a7c8 */ LDR R0, =0xff60 \n\
/* 0801a7ca */ STRH R0, [R1] \n\
/* 0801a7cc */ MOVS R0, 0x8A @ Set R0 to 0x8A \n\
/* 0801a7ce */ LSLS R0, R0, 0x1 \n\
/* 0801a7d0 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0801a7d2 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0801a7d4 */ STRH R0, [R1] \n\
/* 0801a7d6 */ LDR R0, =s_f_env_paper_rev_seqData \n\
/* 0801a7d8 */ BL play_sound \n\
/* 0801a7dc */ B branch_0801a83a \n\
\n\
.ltorg \n\
 \n\
branch_0801a7ec: \n\
/* 0801a7ec */ LDR R2, =D_030046a4 \n\
/* 0801a7ee */ LDR R0, [R2] \n\
/* 0801a7f0 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0801a7f2 */ LSLS R1, R1, 0x1 \n\
/* 0801a7f4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801a7f6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801a7f8 */ STRB R1, [R0] \n\
/* 0801a7fa */ LDR R2, [R2] \n\
/* 0801a7fc */ MOVS R0, 0x89 @ Set R0 to 0x89 \n\
/* 0801a7fe */ LSLS R0, R0, 0x1 \n\
/* 0801a800 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0801a802 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0801a804 */ STRH R0, [R1] \n\
/* 0801a806 */ ADDS R0, 0x74 @ Add 0x74 to R0 \n\
/* 0801a808 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0801a80a */ LDR R0, =0xff60 \n\
/* 0801a80c */ STRH R0, [R1] \n\
/* 0801a80e */ LDR R0, =s_f_env_paper_seqData \n\
/* 0801a810 */ BL play_sound \n\
/* 0801a814 */ B branch_0801a83a \n\
\n\
.ltorg \n\
 \n\
branch_0801a824: \n\
/* 0801a824 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a826 */ BL set_pause_beatscript_scene \n\
/* 0801a82a */ LDR R0, =D_030046a4 \n\
/* 0801a82c */ LDR R1, [R0] \n\
/* 0801a82e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a830 */ STR R0, [R1, 0x4] \n\
/* 0801a832 */ LDR R1, =s_menu_cancel2_seqData \n\
/* 0801a834 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0801a836 */ BL play_sound_in_player \n\
 \n\
branch_0801a83a: \n\
/* 0801a83a */ BL func_0801a5d8 \n\
/* 0801a83e */ LDR R4, =D_030046a4 \n\
/* 0801a840 */ LDR R0, [R4] \n\
/* 0801a842 */ LDR R0, [R0, 0x8] \n\
/* 0801a844 */ BL text_printer_update \n\
/* 0801a848 */ LDR R0, [R4] \n\
/* 0801a84a */ LDR R0, [R0, 0x8] \n\
/* 0801a84c */ BL text_printer_update \n\
/* 0801a850 */ POP {R4, R5} \n\
/* 0801a852 */ POP {R0} \n\
/* 0801a854 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

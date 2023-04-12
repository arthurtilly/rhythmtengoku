asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016620 \n\
/* 08016620 */ PUSH {R4-R7, LR} \n\
/* 08016622 */ SUB SP, 0xC \n\
/* 08016624 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08016626 */ BL func_080169fc \n\
/* 0801662a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801662c */ BNE branch_08016630 \n\
/* 0801662e */ B branch_08016846 \n\
 \n\
branch_08016630: \n\
/* 08016630 */ LDR R2, =D_03004afc \n\
/* 08016632 */ LDRH R1, [R2] \n\
/* 08016634 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08016636 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08016638 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801663a */ BEQ branch_0801664a \n\
/* 0801663c */ LDR R0, =D_030046a4 \n\
/* 0801663e */ LDR R0, [R0] \n\
/* 08016640 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08016642 */ LDRSH R0, [R0, R1] \n\
/* 08016644 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016646 */ BLE branch_0801664a \n\
/* 08016648 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0801664a: \n\
/* 0801664a */ LDRH R1, [R2] \n\
/* 0801664c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801664e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08016650 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016652 */ BEQ branch_08016662 \n\
/* 08016654 */ LDR R0, =D_030046a4 \n\
/* 08016656 */ LDR R0, [R0] \n\
/* 08016658 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801665a */ LDRSH R0, [R0, R3] \n\
/* 0801665c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801665e */ BGT branch_08016662 \n\
/* 08016660 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
 \n\
branch_08016662: \n\
/* 08016662 */ LDRH R1, [R2] \n\
/* 08016664 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08016666 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08016668 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801666a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801666c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801666e */ BEQ branch_08016672 \n\
/* 08016670 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_08016672: \n\
/* 08016672 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08016674 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08016676 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016678 */ BEQ branch_0801667c \n\
/* 0801667a */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_0801667c: \n\
/* 0801667c */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801667e */ BEQ branch_08016708 \n\
/* 08016680 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08016682 */ BHI branch_08016694 \n\
/* 08016684 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08016686 */ BEQ branch_080166a0 \n\
/* 08016688 */ B branch_08016846 \n\
\n\
.ltorg \n\
 \n\
branch_08016694: \n\
/* 08016694 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08016696 */ BEQ branch_08016780 \n\
/* 08016698 */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 0801669a */ BNE branch_0801669e \n\
/* 0801669c */ B branch_08016824 \n\
 \n\
branch_0801669e: \n\
/* 0801669e */ B branch_08016846 \n\
 \n\
branch_080166a0: \n\
/* 080166a0 */ LDR R6, =D_030046a4 \n\
/* 080166a2 */ LDR R1, [R6] \n\
/* 080166a4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080166a6 */ STRH R4, [R1, 0x2] \n\
/* 080166a8 */ LDR R5, =D_03005380 \n\
/* 080166aa */ LDR R0, [R5] \n\
/* 080166ac */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080166ae */ LDRSH R1, [R1, R2] \n\
/* 080166b0 */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 080166b2 */ BL func_0804d648 \n\
/* 080166b6 */ LDR R0, [R5] \n\
/* 080166b8 */ LDR R2, [R6] \n\
/* 080166ba */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 080166bc */ LDRSH R1, [R2, R3] \n\
/* 080166be */ LDR R3, =options_sound_mode_anim \n\
/* 080166c0 */ LDR R2, [R2, 0xC] \n\
/* 080166c2 */ LSLS R2, R2, 0x3 \n\
/* 080166c4 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080166c6 */ LDR R2, [R2] \n\
/* 080166c8 */ STR R7, [SP] \n\
/* 080166ca */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080166cc */ STR R3, [SP, 0x4] \n\
/* 080166ce */ STR R4, [SP, 0x8] \n\
/* 080166d0 */ BL func_0804d8f8 \n\
/* 080166d4 */ LDR R0, [R5] \n\
/* 080166d6 */ LDR R1, [R6] \n\
/* 080166d8 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080166da */ LDRSH R1, [R1, R2] \n\
/* 080166dc */ LDR R2, =anim_options_off_data_clear \n\
/* 080166de */ STR R4, [SP] \n\
/* 080166e0 */ STR R4, [SP, 0x4] \n\
/* 080166e2 */ STR R4, [SP, 0x8] \n\
/* 080166e4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080166e6 */ BL func_0804d8f8 \n\
/* 080166ea */ LDR R0, [R6] \n\
/* 080166ec */ LDR R0, [R0, 0x14] \n\
/* 080166ee */ LDR R1, =options_desc_text \n\
/* 080166f0 */ LDR R1, [R1] \n\
/* 080166f2 */ B branch_0801675c \n\
\n\
.ltorg \n\
 \n\
branch_08016708: \n\
/* 08016708 */ LDR R6, =D_030046a4 \n\
/* 0801670a */ LDR R1, [R6] \n\
/* 0801670c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801670e */ STRH R7, [R1, 0x2] \n\
/* 08016710 */ LDR R5, =D_03005380 \n\
/* 08016712 */ LDR R0, [R5] \n\
/* 08016714 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08016716 */ LDRSH R1, [R1, R3] \n\
/* 08016718 */ MOVS R2, 0x54 @ Set R2 to 0x54 \n\
/* 0801671a */ BL func_0804d648 \n\
/* 0801671e */ LDR R0, [R5] \n\
/* 08016720 */ LDR R2, [R6] \n\
/* 08016722 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08016724 */ LDRSH R1, [R2, R3] \n\
/* 08016726 */ LDR R3, =options_sound_mode_anim \n\
/* 08016728 */ LDR R2, [R2, 0xC] \n\
/* 0801672a */ LSLS R2, R2, 0x3 \n\
/* 0801672c */ ADDS R3, 0x4 @ Add 0x4 to R3 \n\
/* 0801672e */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08016730 */ LDR R2, [R2] \n\
/* 08016732 */ STR R4, [SP] \n\
/* 08016734 */ STR R4, [SP, 0x4] \n\
/* 08016736 */ STR R4, [SP, 0x8] \n\
/* 08016738 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801673a */ BL func_0804d8f8 \n\
/* 0801673e */ LDR R0, [R5] \n\
/* 08016740 */ LDR R1, [R6] \n\
/* 08016742 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08016744 */ LDRSH R1, [R1, R2] \n\
/* 08016746 */ LDR R2, =anim_options_select_data_clear \n\
/* 08016748 */ STR R4, [SP] \n\
/* 0801674a */ STR R4, [SP, 0x4] \n\
/* 0801674c */ STR R4, [SP, 0x8] \n\
/* 0801674e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016750 */ BL func_0804d8f8 \n\
/* 08016754 */ LDR R0, [R6] \n\
/* 08016756 */ LDR R0, [R0, 0x14] \n\
/* 08016758 */ LDR R1, =options_desc_text \n\
/* 0801675a */ LDR R1, [R1, 0x4] \n\
 \n\
branch_0801675c: \n\
/* 0801675c */ BL text_printer_set_string \n\
/* 08016760 */ LDR R0, =s_menu_cursor2_seqData \n\
/* 08016762 */ BL play_sound \n\
/* 08016766 */ B branch_08016846 \n\
\n\
.ltorg \n\
 \n\
branch_08016780: \n\
/* 08016780 */ LDR R5, =D_030046a4 \n\
/* 08016782 */ LDR R1, [R5] \n\
/* 08016784 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08016786 */ LDRSH R4, [R1, R3] \n\
/* 08016788 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801678a */ BNE branch_080167dc \n\
/* 0801678c */ LDR R2, [R1, 0xC] \n\
/* 0801678e */ EORS R2, R7 @ Set R2 to R2 ^ R7 \n\
/* 08016790 */ STR R2, [R1, 0xC] \n\
/* 08016792 */ LDR R0, =D_03005380 \n\
/* 08016794 */ LDR R0, [R0] \n\
/* 08016796 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08016798 */ LDRSH R1, [R1, R3] \n\
/* 0801679a */ LDR R3, =options_sound_mode_anim \n\
/* 0801679c */ LSLS R2, R2, 0x3 \n\
/* 0801679e */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080167a0 */ LDR R2, [R2] \n\
/* 080167a2 */ STR R7, [SP] \n\
/* 080167a4 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080167a6 */ STR R3, [SP, 0x4] \n\
/* 080167a8 */ STR R4, [SP, 0x8] \n\
/* 080167aa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080167ac */ BL func_0804d8f8 \n\
/* 080167b0 */ LDR R0, =D_030046a8 \n\
/* 080167b2 */ LDR R0, [R0] \n\
/* 080167b4 */ MOVS R1, 0xB1 @ Set R1 to 0xB1 \n\
/* 080167b6 */ LSLS R1, R1, 0x2 \n\
/* 080167b8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080167ba */ LDR R2, [R5] \n\
/* 080167bc */ LDR R1, [R2, 0xC] \n\
/* 080167be */ STR R1, [R0] \n\
/* 080167c0 */ LDR R0, [R2, 0xC] \n\
/* 080167c2 */ BL func_080029d8 \n\
/* 080167c6 */ BL write_game_save_data \n\
/* 080167ca */ B branch_08016814 \n\
\n\
.ltorg \n\
 \n\
branch_080167dc: \n\
/* 080167dc */ STRB R2, [R1, 0x18] \n\
/* 080167de */ LDR R0, [R5] \n\
/* 080167e0 */ LDRB R0, [R0, 0x18] \n\
/* 080167e2 */ BL func_080165f4 \n\
/* 080167e6 */ LDR R4, =D_03005380 \n\
/* 080167e8 */ LDR R0, [R4] \n\
/* 080167ea */ LDR R1, [R5] \n\
/* 080167ec */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 080167ee */ LDRSH R1, [R1, R2] \n\
/* 080167f0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080167f2 */ BL func_0804d770 \n\
/* 080167f6 */ LDR R0, [R4] \n\
/* 080167f8 */ LDR R1, [R5] \n\
/* 080167fa */ MOVS R3, 0x1C @ Set R3 to 0x1C \n\
/* 080167fc */ LDRSH R1, [R1, R3] \n\
/* 080167fe */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08016800 */ BL func_0804d770 \n\
/* 08016804 */ LDR R0, [R5] \n\
/* 08016806 */ LDR R0, [R0, 0x20] \n\
/* 08016808 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801680a */ BL text_printer_show_text \n\
/* 0801680e */ LDR R1, [R5] \n\
/* 08016810 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08016812 */ STRB R0, [R1] \n\
 \n\
branch_08016814: \n\
/* 08016814 */ LDR R0, =s_menu_kettei2_seqData \n\
/* 08016816 */ BL play_sound \n\
/* 0801681a */ B branch_08016846 \n\
\n\
.ltorg \n\
 \n\
branch_08016824: \n\
/* 08016824 */ LDR R4, =D_030046a4 \n\
/* 08016826 */ LDR R0, [R4] \n\
/* 08016828 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0801682a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801682c */ STRB R2, [R0] \n\
/* 0801682e */ LDR R0, =scene_main_menu \n\
/* 08016830 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016832 */ BL func_080006d0 \n\
/* 08016836 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016838 */ BL set_pause_beatscript_scene \n\
/* 0801683c */ LDR R0, [R4] \n\
/* 0801683e */ STR R5, [R0, 0x10] \n\
/* 08016840 */ LDR R0, =s_menu_cancel3_seqData \n\
/* 08016842 */ BL play_sound \n\
 \n\
branch_08016846: \n\
/* 08016846 */ ADD SP, 0xC \n\
/* 08016848 */ POP {R4-R7} \n\
/* 0801684a */ POP {R0} \n\
/* 0801684c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

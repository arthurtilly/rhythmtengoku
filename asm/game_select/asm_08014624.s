asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014624 \n\
/* 08014624 */ PUSH {R4-R7, LR} \n\
/* 08014626 */ SUB SP, 0x24 \n\
/* 08014628 */ LDR R2, =D_030046a4 \n\
/* 0801462a */ LDR R0, [R2] \n\
/* 0801462c */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 0801462e */ LSLS R3, R3, 0x2 \n\
/* 08014630 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 08014632 */ LDRB R7, [R1] \n\
/* 08014634 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08014636 */ BEQ branch_08014650 \n\
/* 08014638 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801463a */ STRB R0, [R1] \n\
/* 0801463c */ LDR R0, [R2] \n\
/* 0801463e */ MOVS R5, 0xC9 @ Set R5 to 0xC9 \n\
/* 08014640 */ LSLS R5, R5, 0x2 \n\
/* 08014642 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08014644 */ LDR R0, [R0] \n\
/* 08014646 */ BL func_08014504 \n\
/* 0801464a */ B branch_08014900 \n\
\n\
.ltorg \n\
 \n\
branch_08014650: \n\
/* 08014650 */ ADD R0, SP, 0x18 \n\
/* 08014652 */ ADD R1, SP, 0x1C \n\
/* 08014654 */ ADD R2, SP, 0x20 \n\
/* 08014656 */ BL func_08014268 \n\
/* 0801465a */ LDR R1, [SP, 0x20] \n\
/* 0801465c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801465e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08014660 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08014662 */ BNE branch_08014668 \n\
/* 08014664 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08014666 */ B branch_08014902 \n\
 \n\
branch_08014668: \n\
/* 08014668 */ LDR R0, [SP, 0x18] \n\
/* 0801466a */ LDR R1, [SP, 0x1C] \n\
/* 0801466c */ BL func_08013100 \n\
/* 08014670 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08014672 */ LDR R0, [SP, 0x18] \n\
/* 08014674 */ LDR R1, [SP, 0x1C] \n\
/* 08014676 */ MOV R4, SP @ Set R4 to SP \n\
/* 08014678 */ ADDS R4, 0x16 @ Add 0x16 to R4 \n\
/* 0801467a */ ADD R2, SP, 0x14 \n\
/* 0801467c */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0801467e */ BL func_0801332c \n\
/* 08014682 */ LDR R5, [SP, 0x20] \n\
/* 08014684 */ CMP R5, 0x4 @ Compare R5 and 0x4 \n\
/* 08014686 */ BEQ branch_080146ec \n\
/* 08014688 */ CMP R5, 0x4 @ Compare R5 and 0x4 \n\
/* 0801468a */ BGT branch_08014692 \n\
/* 0801468c */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0801468e */ BEQ branch_08014698 \n\
/* 08014690 */ B branch_080147fc \n\
 \n\
branch_08014692: \n\
/* 08014692 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08014694 */ BEQ branch_08014768 \n\
/* 08014696 */ B branch_080147fc \n\
 \n\
branch_08014698: \n\
/* 08014698 */ ADD R1, SP, 0x14 \n\
/* 0801469a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801469c */ LDRH R0, [R0] \n\
/* 0801469e */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 080146a0 */ STRH R0, [R1] \n\
/* 080146a2 */ LDRH R0, [R4] \n\
/* 080146a4 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 080146a6 */ STRH R0, [R4] \n\
/* 080146a8 */ LDR R0, =D_03005380 \n\
/* 080146aa */ LDR R0, [R0] \n\
/* 080146ac */ LDR R1, =anim_game_select_new_game \n\
/* 080146ae */ ADD R2, SP, 0x14 \n\
/* 080146b0 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080146b2 */ LDRSH R3, [R2, R6] \n\
/* 080146b4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080146b6 */ LDRSH R2, [R4, R6] \n\
/* 080146b8 */ STR R2, [SP] \n\
/* 080146ba */ LDR R2, =0x4864 \n\
/* 080146bc */ STR R2, [SP, 0x4] \n\
/* 080146be */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080146c0 */ STR R2, [SP, 0x8] \n\
/* 080146c2 */ STR R7, [SP, 0xC] \n\
/* 080146c4 */ STR R5, [SP, 0x10] \n\
/* 080146c6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080146c8 */ BL func_0804d160 \n\
/* 080146cc */ LSLS R0, R0, 0x10 \n\
/* 080146ce */ ASRS R0, R0, 0x10 \n\
/* 080146d0 */ BL func_080140f8 \n\
/* 080146d4 */ LDR R0, =s_f_open_game_seqData \n\
/* 080146d6 */ BL play_sound \n\
/* 080146da */ B branch_080147fc \n\
\n\
.ltorg \n\
 \n\
branch_080146ec: \n\
/* 080146ec */ ADD R1, SP, 0x14 \n\
/* 080146ee */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080146f0 */ LDRH R0, [R0] \n\
/* 080146f2 */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 080146f4 */ STRH R0, [R1] \n\
/* 080146f6 */ LDRH R0, [R4] \n\
/* 080146f8 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 080146fa */ STRH R0, [R4] \n\
/* 080146fc */ LDR R0, =D_03005380 \n\
/* 080146fe */ LDR R0, [R0] \n\
/* 08014700 */ LDR R1, =anim_game_select_clear_game \n\
/* 08014702 */ ADD R2, SP, 0x14 \n\
/* 08014704 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08014706 */ LDRSH R3, [R2, R5] \n\
/* 08014708 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801470a */ LDRSH R2, [R4, R5] \n\
/* 0801470c */ STR R2, [SP] \n\
/* 0801470e */ LDR R2, =0x4864 \n\
/* 08014710 */ STR R2, [SP, 0x4] \n\
/* 08014712 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08014714 */ STR R2, [SP, 0x8] \n\
/* 08014716 */ STR R7, [SP, 0xC] \n\
/* 08014718 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0801471a */ STR R2, [SP, 0x10] \n\
/* 0801471c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801471e */ BL func_0804d160 \n\
/* 08014722 */ LSLS R0, R0, 0x10 \n\
/* 08014724 */ ASRS R0, R0, 0x10 \n\
/* 08014726 */ BL func_080140f8 \n\
/* 0801472a */ LDR R0, =s_f_clear_game_seqData \n\
/* 0801472c */ BL play_sound \n\
/* 08014730 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08014732 */ BL func_080108c8 \n\
/* 08014736 */ LDR R0, =D_030046a8 \n\
/* 08014738 */ LDR R0, [R0] \n\
/* 0801473a */ LDR R2, =0x1d7 \n\
/* 0801473c */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0801473e */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08014740 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 08014742 */ LSLS R3, R3, 0x1 \n\
/* 08014744 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08014746 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08014748 */ LDRB R0, [R0] \n\
/* 0801474a */ STRB R0, [R1] \n\
/* 0801474c */ B branch_080147fc \n\
\n\
.ltorg \n\
 \n\
branch_08014768: \n\
/* 08014768 */ ADD R1, SP, 0x14 \n\
/* 0801476a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801476c */ LDRH R0, [R0] \n\
/* 0801476e */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 08014770 */ STRH R0, [R1] \n\
/* 08014772 */ LDRH R0, [R4] \n\
/* 08014774 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 08014776 */ STRH R0, [R4] \n\
/* 08014778 */ LDR R0, =D_03005380 \n\
/* 0801477a */ LDR R0, [R0] \n\
/* 0801477c */ LDR R1, =anim_game_select_get_superb \n\
/* 0801477e */ ADD R2, SP, 0x14 \n\
/* 08014780 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08014782 */ LDRSH R3, [R2, R5] \n\
/* 08014784 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08014786 */ LDRSH R2, [R4, R5] \n\
/* 08014788 */ STR R2, [SP] \n\
/* 0801478a */ LDR R2, =0x4864 \n\
/* 0801478c */ STR R2, [SP, 0x4] \n\
/* 0801478e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08014790 */ STR R2, [SP, 0x8] \n\
/* 08014792 */ STR R7, [SP, 0xC] \n\
/* 08014794 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08014796 */ STR R2, [SP, 0x10] \n\
/* 08014798 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801479a */ BL func_0804d160 \n\
/* 0801479e */ LSLS R0, R0, 0x10 \n\
/* 080147a0 */ ASRS R0, R0, 0x10 \n\
/* 080147a2 */ BL func_080140f8 \n\
/* 080147a6 */ LDR R0, =s_f_clear_game_seqData \n\
/* 080147a8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080147aa */ LSLS R2, R2, 0x2 \n\
/* 080147ac */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080147ae */ BL play_sound_w_pitch_volume \n\
/* 080147b2 */ LDR R0, =s_f_get_medal_seqData \n\
/* 080147b4 */ BL play_sound \n\
/* 080147b8 */ LDR R4, =D_030046a8 \n\
/* 080147ba */ LDR R1, [R4] \n\
/* 080147bc */ LDR R0, =0x29e \n\
/* 080147be */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080147c0 */ LDRB R0, [R1] \n\
/* 080147c2 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080147c4 */ STRB R0, [R1] \n\
/* 080147c6 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 080147c8 */ BL func_08014dbc \n\
/* 080147cc */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080147ce */ BL func_080108c8 \n\
/* 080147d2 */ LDR R0, [R4] \n\
/* 080147d4 */ LDR R2, =0x20e \n\
/* 080147d6 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 080147d8 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 080147da */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 080147dc */ LSLS R3, R3, 0x1 \n\
/* 080147de */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080147e0 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 080147e2 */ LDRB R0, [R0] \n\
/* 080147e4 */ STRB R0, [R1] \n\
/* 080147e6 */ LDR R1, [R4] \n\
/* 080147e8 */ LDR R5, =0x1d7 \n\
/* 080147ea */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 080147ec */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 080147ee */ LDRB R0, [R2] \n\
/* 080147f0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080147f2 */ BNE branch_080147fc \n\
/* 080147f4 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080147f6 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 080147f8 */ LDRB R0, [R0] \n\
/* 080147fa */ STRB R0, [R2] \n\
 \n\
branch_080147fc: \n\
/* 080147fc */ LDR R0, [SP, 0x18] \n\
/* 080147fe */ LDR R1, [SP, 0x1C] \n\
/* 08014800 */ LDR R2, [SP, 0x20] \n\
/* 08014802 */ BL func_08013348 \n\
/* 08014806 */ LDR R0, [SP, 0x18] \n\
/* 08014808 */ LDR R1, [SP, 0x1C] \n\
/* 0801480a */ BL func_080143c0 \n\
/* 0801480e */ LDR R0, =D_030046a4 \n\
/* 08014810 */ LDR R2, [R0] \n\
/* 08014812 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08014814 */ LDRSB R1, [R2, R1] \n\
/* 08014816 */ LDR R0, [SP, 0x18] \n\
/* 08014818 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0801481a */ BNE branch_0801482e \n\
/* 0801481c */ MOVS R1, 0x11 @ Set R1 to 0x11 \n\
/* 0801481e */ LDRSB R1, [R2, R1] \n\
/* 08014820 */ LDR R0, [SP, 0x1C] \n\
/* 08014822 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08014824 */ BNE branch_0801482e \n\
/* 08014826 */ BL func_08013b48 \n\
/* 0801482a */ BL func_08013f9c \n\
 \n\
branch_0801482e: \n\
/* 0801482e */ LDR R0, [SP, 0x18] \n\
/* 08014830 */ LSLS R2, R0, 0x2 \n\
/* 08014832 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08014834 */ LSLS R2, R2, 0x2 \n\
/* 08014836 */ LDR R0, [SP, 0x1C] \n\
/* 08014838 */ LSLS R1, R0, 0x2 \n\
/* 0801483a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801483c */ LSLS R0, R1, 0x4 \n\
/* 0801483e */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08014840 */ LSLS R0, R0, 0x2 \n\
/* 08014842 */ LDR R1, =D_089ceafc \n\
/* 08014844 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014846 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08014848 */ LDR R0, [SP, 0x20] \n\
/* 0801484a */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 0801484c */ LDR R4, =D_030046a4 \n\
/* 0801484e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08014850 */ BHI branch_08014866 \n\
/* 08014852 */ LDRB R1, [R2, 0x10] \n\
/* 08014854 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08014856 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08014858 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801485a */ BEQ branch_08014866 \n\
/* 0801485c */ LDR R0, [R4] \n\
/* 0801485e */ LDR R6, =0x2d9 \n\
/* 08014860 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08014862 */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 08014864 */ STRB R1, [R0] \n\
 \n\
branch_08014866: \n\
/* 08014866 */ LDR R0, [SP, 0x20] \n\
/* 08014868 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0801486a */ BNE branch_08014880 \n\
/* 0801486c */ LDRB R1, [R2, 0x10] \n\
/* 0801486e */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08014870 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08014872 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014874 */ BEQ branch_08014880 \n\
/* 08014876 */ LDR R0, [R4] \n\
/* 08014878 */ LDR R1, =0x2d9 \n\
/* 0801487a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801487c */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 0801487e */ STRB R1, [R0] \n\
 \n\
branch_08014880: \n\
/* 08014880 */ LDR R0, [SP, 0x20] \n\
/* 08014882 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08014884 */ BNE branch_0801489a \n\
/* 08014886 */ LDRB R1, [R2, 0x10] \n\
/* 08014888 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0801488a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801488c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801488e */ BEQ branch_0801489a \n\
/* 08014890 */ LDR R0, [R4] \n\
/* 08014892 */ LDR R3, =0x2d9 \n\
/* 08014894 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08014896 */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 08014898 */ STRB R1, [R0] \n\
 \n\
branch_0801489a: \n\
/* 0801489a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801489c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801489e */ LDRSH R0, [R2, R5] \n\
/* 080148a0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080148a2 */ BLT branch_080148a6 \n\
/* 080148a4 */ LDR R3, [R2, 0xC] \n\
 \n\
branch_080148a6: \n\
/* 080148a6 */ LDR R1, [R4] \n\
/* 080148a8 */ LDR R6, =0x2d9 \n\
/* 080148aa */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 080148ac */ LDRB R0, [R0] \n\
/* 080148ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080148b0 */ BNE branch_080148ec \n\
/* 080148b2 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080148b4 */ BL func_08014504 \n\
/* 080148b8 */ B branch_08014900 \n\
\n\
.ltorg \n\
 \n\
branch_080148ec: \n\
/* 080148ec */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 080148ee */ LSLS R0, R0, 0x2 \n\
/* 080148f0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080148f2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080148f4 */ STRB R0, [R1] \n\
/* 080148f6 */ LDR R0, [R4] \n\
/* 080148f8 */ MOVS R1, 0xC9 @ Set R1 to 0xC9 \n\
/* 080148fa */ LSLS R1, R1, 0x2 \n\
/* 080148fc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080148fe */ STR R3, [R0] \n\
 \n\
branch_08014900: \n\
/* 08014900 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08014902: \n\
/* 08014902 */ ADD SP, 0x24 \n\
/* 08014904 */ POP {R4-R7} \n\
/* 08014906 */ POP {R1} \n\
/* 08014908 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

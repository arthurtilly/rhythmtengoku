asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801685c \n\
/* 0801685c */ PUSH {R4-R6, LR} \n\
/* 0801685e */ BL func_080169fc \n\
/* 08016862 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016864 */ BNE branch_08016868 \n\
/* 08016866 */ B branch_0801699e \n\
 \n\
branch_08016868: \n\
/* 08016868 */ LDR R0, =D_03004afc \n\
/* 0801686a */ LDRH R1, [R0] \n\
/* 0801686c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801686e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08016870 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016872 */ BEQ branch_080168bc \n\
/* 08016874 */ LDR R0, =s_menu_cancel2_seqData \n\
/* 08016876 */ BL play_sound \n\
/* 0801687a */ LDR R5, =D_03005380 \n\
/* 0801687c */ LDR R0, [R5] \n\
/* 0801687e */ LDR R4, =D_030046a4 \n\
/* 08016880 */ LDR R1, [R4] \n\
/* 08016882 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08016884 */ LDRSH R1, [R1, R2] \n\
/* 08016886 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016888 */ BL func_0804d770 \n\
/* 0801688c */ LDR R0, [R5] \n\
/* 0801688e */ LDR R1, [R4] \n\
/* 08016890 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08016892 */ LDRSH R1, [R1, R2] \n\
/* 08016894 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016896 */ BL func_0804d770 \n\
/* 0801689a */ LDR R0, [R4] \n\
/* 0801689c */ LDR R0, [R0, 0x20] \n\
/* 0801689e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080168a0 */ BL text_printer_show_text \n\
/* 080168a4 */ LDR R1, [R4] \n\
/* 080168a6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080168a8 */ STRB R0, [R1] \n\
/* 080168aa */ B branch_0801699e \n\
\n\
.ltorg \n\
 \n\
branch_080168bc: \n\
/* 080168bc */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 080168be */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080168c0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080168c2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080168c4 */ BEQ branch_0801692e \n\
/* 080168c6 */ LDR R5, =D_030046a4 \n\
/* 080168c8 */ LDR R1, [R5] \n\
/* 080168ca */ LDRB R4, [R1, 0x18] \n\
/* 080168cc */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080168ce */ BNE branch_080168fc \n\
/* 080168d0 */ LDR R0, =scene_riq_title \n\
/* 080168d2 */ BL func_08000584 \n\
/* 080168d6 */ LDR R0, [R5] \n\
/* 080168d8 */ STR R6, [R0, 0x24] \n\
/* 080168da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080168dc */ BL set_pause_beatscript_scene \n\
/* 080168e0 */ LDR R0, [R5] \n\
/* 080168e2 */ STR R4, [R0, 0x10] \n\
/* 080168e4 */ STRB R4, [R0] \n\
/* 080168e6 */ LDR R0, =s_menu_kettei2_seqData \n\
/* 080168e8 */ BL play_sound \n\
/* 080168ec */ B branch_0801699e \n\
\n\
.ltorg \n\
 \n\
branch_080168fc: \n\
/* 080168fc */ LDR R4, =D_03005380 \n\
/* 080168fe */ LDR R0, [R4] \n\
/* 08016900 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08016902 */ LDRSH R1, [R1, R2] \n\
/* 08016904 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016906 */ BL func_0804d770 \n\
/* 0801690a */ LDR R0, [R4] \n\
/* 0801690c */ LDR R1, [R5] \n\
/* 0801690e */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08016910 */ LDRSH R1, [R1, R2] \n\
/* 08016912 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016914 */ BL func_0804d770 \n\
/* 08016918 */ LDR R0, [R5] \n\
/* 0801691a */ LDR R0, [R0, 0x20] \n\
/* 0801691c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801691e */ BL text_printer_show_text \n\
/* 08016922 */ LDR R0, =s_menu_cancel2_seqData \n\
/* 08016924 */ BL play_sound \n\
/* 08016928 */ LDR R1, [R5] \n\
/* 0801692a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801692c */ STRB R0, [R1] \n\
 \n\
branch_0801692e: \n\
/* 0801692e */ LDR R0, =D_03004afc \n\
/* 08016930 */ LDRH R1, [R0] \n\
/* 08016932 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08016934 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08016936 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016938 */ BEQ branch_08016966 \n\
/* 0801693a */ LDR R4, =D_030046a4 \n\
/* 0801693c */ LDR R1, [R4] \n\
/* 0801693e */ LDRB R0, [R1, 0x18] \n\
/* 08016940 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016942 */ BEQ branch_08016966 \n\
/* 08016944 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016946 */ STRB R0, [R1, 0x18] \n\
/* 08016948 */ LDR R0, [R4] \n\
/* 0801694a */ LDRB R0, [R0, 0x18] \n\
/* 0801694c */ BL func_080165f4 \n\
/* 08016950 */ LDR R0, =D_03005380 \n\
/* 08016952 */ LDR R0, [R0] \n\
/* 08016954 */ LDR R1, [R4] \n\
/* 08016956 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08016958 */ LDRSH R1, [R1, R2] \n\
/* 0801695a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801695c */ BL func_0804cebc \n\
/* 08016960 */ LDR R0, =s_menu_cursor1_seqData \n\
/* 08016962 */ BL play_sound \n\
 \n\
branch_08016966: \n\
/* 08016966 */ LDR R0, =D_03004afc \n\
/* 08016968 */ LDRH R1, [R0] \n\
/* 0801696a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801696c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801696e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016970 */ BEQ branch_0801699e \n\
/* 08016972 */ LDR R4, =D_030046a4 \n\
/* 08016974 */ LDR R1, [R4] \n\
/* 08016976 */ LDRB R0, [R1, 0x18] \n\
/* 08016978 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801697a */ BNE branch_0801699e \n\
/* 0801697c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801697e */ STRB R0, [R1, 0x18] \n\
/* 08016980 */ LDR R0, [R4] \n\
/* 08016982 */ LDRB R0, [R0, 0x18] \n\
/* 08016984 */ BL func_080165f4 \n\
/* 08016988 */ LDR R0, =D_03005380 \n\
/* 0801698a */ LDR R0, [R0] \n\
/* 0801698c */ LDR R1, [R4] \n\
/* 0801698e */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08016990 */ LDRSH R1, [R1, R2] \n\
/* 08016992 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016994 */ BL func_0804cebc \n\
/* 08016998 */ LDR R0, =s_menu_cursor1_seqData \n\
/* 0801699a */ BL play_sound \n\
 \n\
branch_0801699e: \n\
/* 0801699e */ POP {R4-R6} \n\
/* 080169a0 */ POP {R0} \n\
/* 080169a2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

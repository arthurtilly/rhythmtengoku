asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080336a0 \n\
/* 080336a0 */ PUSH {R4-R7, LR} \n\
/* 080336a2 */ SUB SP, 0x14 \n\
/* 080336a4 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080336a6 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080336a8 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080336aa */ BLT branch_08033776 \n\
/* 080336ac */ LDR R4, =D_03005380 \n\
/* 080336ae */ LDR R0, [R4] \n\
/* 080336b0 */ LDR R1, =calligraphy_pattern_input_anim \n\
/* 080336b2 */ LSLS R5, R7, 0x2 \n\
/* 080336b4 */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 080336b6 */ LDR R1, [R1] \n\
/* 080336b8 */ LSLS R2, R6, 0x18 \n\
/* 080336ba */ ASRS R2, R2, 0x18 \n\
/* 080336bc */ MOVS R3, 0x54 @ Set R3 to 0x54 \n\
/* 080336be */ STR R3, [SP] \n\
/* 080336c0 */ LDR R3, =0x87f6 \n\
/* 080336c2 */ STR R3, [SP, 0x4] \n\
/* 080336c4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080336c6 */ STR R3, [SP, 0x8] \n\
/* 080336c8 */ STR R3, [SP, 0xC] \n\
/* 080336ca */ STR R3, [SP, 0x10] \n\
/* 080336cc */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080336ce */ BL func_0804d160 \n\
/* 080336d2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080336d4 */ LSLS R1, R1, 0x10 \n\
/* 080336d6 */ LDR R0, [R4] \n\
/* 080336d8 */ LSRS R4, R1, 0x10 \n\
/* 080336da */ ASRS R1, R1, 0x10 \n\
/* 080336dc */ LDR R2, =(D_03004b10 + 0x14) \n\
/* 080336de */ ADDS R3, R2, 0x2 @ Set R3 to R2 + 0x2 \n\
/* 080336e0 */ BL func_0804db44 \n\
/* 080336e4 */ LDR R0, =D_030055d0 \n\
/* 080336e6 */ LDR R0, [R0] \n\
/* 080336e8 */ LDRB R1, [R0, 0xB] \n\
/* 080336ea */ LSLS R1, R1, 0x1 \n\
/* 080336ec */ ADDS R0, 0xE @ Add 0xE to R0 \n\
/* 080336ee */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080336f0 */ STRH R4, [R0] \n\
/* 080336f2 */ LDR R0, =s_f_shuji_v_funuue_seqData \n\
/* 080336f4 */ BL stop_sound \n\
/* 080336f8 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080336fa */ BEQ branch_08033724 \n\
/* 080336fc */ LDR R0, =calligraphy_input_barely_sfx \n\
/* 080336fe */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 08033700 */ LDR R0, [R0] \n\
/* 08033702 */ BL play_sound \n\
/* 08033706 */ B branch_0803374c \n\
\n\
.ltorg \n\
 \n\
branch_08033724: \n\
/* 08033724 */ LDR R1, =calligraphy_paper_motions \n\
/* 08033726 */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 08033728 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803372a */ LDRSH R0, [R1, R2] \n\
/* 0803372c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803372e */ MOVS R2, 0xFF @ Set R2 to 0xFF \n\
/* 08033730 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08033732 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08033734 */ LDRSH R1, [R1, R3] \n\
/* 08033736 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08033738 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0803373a */ LSLS R1, R1, 0x8 \n\
/* 0803373c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0803373e */ BL func_080331c0 \n\
/* 08033742 */ LDR R0, =calligraphy_input_hit_sfx \n\
/* 08033744 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 08033746 */ LDR R0, [R0] \n\
/* 08033748 */ BL play_sound \n\
 \n\
branch_0803374c: \n\
/* 0803374c */ LDR R0, =D_030055d0 \n\
/* 0803374e */ LDR R1, [R0] \n\
/* 08033750 */ LDRB R0, [R1, 0xB] \n\
/* 08033752 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08033754 */ STRB R0, [R1, 0xB] \n\
/* 08033756 */ LSLS R2, R7, 0x1 \n\
/* 08033758 */ ADDS R2, R2, R7 @ Set R2 to R2 + R7 \n\
/* 0803375a */ LSLS R2, R2, 0x2 \n\
/* 0803375c */ LSLS R0, R6, 0x2 \n\
/* 0803375e */ LDR R1, =calligraphy_brush_motions \n\
/* 08033760 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08033762 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08033764 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08033766 */ LDRSB R0, [R2, R0] \n\
/* 08033768 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803376a */ LDRSB R1, [R2, R1] \n\
/* 0803376c */ LDRB R2, [R2, 0x2] \n\
/* 0803376e */ LSLS R2, R2, 0x18 \n\
/* 08033770 */ ASRS R2, R2, 0x18 \n\
/* 08033772 */ BL func_08033468 \n\
 \n\
branch_08033776: \n\
/* 08033776 */ ADD SP, 0x14 \n\
/* 08033778 */ POP {R4-R7} \n\
/* 0803377a */ POP {R0} \n\
/* 0803377c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

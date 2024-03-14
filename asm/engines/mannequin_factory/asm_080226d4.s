asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080226d4 \n\
/* 080226d4 */ PUSH {R4-R6, LR} \n\
/* 080226d6 */ LDR R0, =gCurrentEngineData \n\
/* 080226d8 */ LDR R2, [R0] \n\
/* 080226da */ LDR R3, =0x0000040c \n\
/* 080226dc */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 080226de */ LDRB R1, [R1] \n\
/* 080226e0 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080226e2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080226e4 */ BEQ branch_080226e8 \n\
/* 080226e6 */ B branch_0802288e \n\
 \n\
branch_080226e8: \n\
/* 080226e8 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 080226ea */ ADDS R6, 0x14 @ Add 0x14 to R6 \n\
/* 080226ec */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080226ee */ LDRB R0, [R2, 0x14] \n\
/* 080226f0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080226f2 */ BEQ branch_08022704 \n\
 \n\
branch_080226f4: \n\
/* 080226f4 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080226f6 */ ADDS R6, 0x14 @ Add 0x14 to R6 \n\
/* 080226f8 */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 080226fa */ BLS branch_080226fe \n\
/* 080226fc */ B branch_0802288e \n\
 \n\
branch_080226fe: \n\
/* 080226fe */ LDRB R0, [R6] \n\
/* 08022700 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022702 */ BNE branch_080226f4 \n\
 \n\
branch_08022704: \n\
/* 08022704 */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 08022706 */ BLS branch_0802270a \n\
/* 08022708 */ B branch_0802288e \n\
 \n\
branch_0802270a: \n\
/* 0802270a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802270c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802270e */ STRH R0, [R6, 0xE] \n\
/* 08022710 */ STRB R1, [R6, 0xD] \n\
/* 08022712 */ LDR R0, [R3] \n\
/* 08022714 */ MOVS R1, 0x86 @ Set R1 to 0x86 \n\
/* 08022716 */ LSLS R1, R1, 0x3 \n\
/* 08022718 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802271a */ LDRB R0, [R0] \n\
/* 0802271c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802271e */ BEQ branch_08022738 \n\
/* 08022720 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08022722 */ BEQ branch_0802273c \n\
/* 08022724 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08022726 */ BL agb_random \n\
/* 0802272a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802272c */ B branch_0802273e \n\
\n\
.ltorg \n\
 \n\
branch_08022738: \n\
/* 08022738 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802273a */ B branch_0802273e \n\
 \n\
branch_0802273c: \n\
/* 0802273c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_0802273e: \n\
/* 0802273e */ STRB R0, [R6, 0xA] \n\
/* 08022740 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022742 */ STRB R0, [R6, 0xC] \n\
/* 08022744 */ STRB R0, [R6, 0xB] \n\
/* 08022746 */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 08022748 */ LDRSB R0, [R6, R0] \n\
/* 0802274a */ LSLS R4, R0, 0x1 \n\
/* 0802274c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802274e */ LSLS R4, R4, 0x15 \n\
/* 08022750 */ LDR R5, =gSpriteHandler \n\
/* 08022752 */ LDR R0, [R5] \n\
/* 08022754 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08022756 */ LDRSH R1, [R6, R2] \n\
/* 08022758 */ LDR R3, =0xffb80000 \n\
/* 0802275a */ ADDS R4, R4, R3 @ Set R4 to R4 + R3 \n\
/* 0802275c */ ASRS R4, R4, 0x10 \n\
/* 0802275e */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022760 */ BL sprite_set_x \n\
/* 08022764 */ LDR R0, [R5] \n\
/* 08022766 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08022768 */ LDRSH R1, [R6, R2] \n\
/* 0802276a */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0802276c */ LDRSB R2, [R6, R2] \n\
/* 0802276e */ BL sprite_set_anim_cel \n\
/* 08022772 */ LDR R0, [R5] \n\
/* 08022774 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08022776 */ LDRSH R1, [R6, R3] \n\
/* 08022778 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802277a */ BL sprite_set_visible \n\
/* 0802277e */ LDR R0, [R5] \n\
/* 08022780 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022782 */ LDRSH R1, [R6, R2] \n\
/* 08022784 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022786 */ BL sprite_set_x \n\
/* 0802278a */ LDR R0, [R5] \n\
/* 0802278c */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802278e */ LDRSH R1, [R6, R3] \n\
/* 08022790 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022792 */ BL sprite_set_x \n\
/* 08022796 */ LDR R0, [R5] \n\
/* 08022798 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802279a */ LDRSH R1, [R6, R2] \n\
/* 0802279c */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0802279e */ LDRSB R2, [R6, R2] \n\
/* 080227a0 */ BL sprite_set_anim_cel \n\
/* 080227a4 */ LDR R0, [R5] \n\
/* 080227a6 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080227a8 */ LDRSH R1, [R6, R3] \n\
/* 080227aa */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 080227ac */ LDRSB R2, [R6, R2] \n\
/* 080227ae */ BL sprite_set_anim_cel \n\
/* 080227b2 */ LDR R0, [R5] \n\
/* 080227b4 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080227b6 */ LDRSH R1, [R6, R2] \n\
/* 080227b8 */ LDRB R2, [R6, 0xC] \n\
/* 080227ba */ BL sprite_set_visible \n\
/* 080227be */ LDR R0, [R5] \n\
/* 080227c0 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080227c2 */ LDRSH R1, [R6, R3] \n\
/* 080227c4 */ LDRB R2, [R6, 0xB] \n\
/* 080227c6 */ BL sprite_set_visible \n\
/* 080227ca */ LDRB R0, [R6, 0xA] \n\
/* 080227cc */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080227ce */ BNE branch_0802284c \n\
/* 080227d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080227d2 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 080227d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080227d6 */ BL func_080230cc \n\
/* 080227da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080227dc */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 080227de */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080227e0 */ BL func_080230cc \n\
/* 080227e4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080227e6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080227e8 */ MOVS R2, 0x24 @ Set R2 to 0x24 \n\
/* 080227ea */ BL func_080230cc \n\
/* 080227ee */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080227f0 */ LSLS R1, R1, 0x1 \n\
/* 080227f2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080227f4 */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 080227f6 */ BL func_080230cc \n\
/* 080227fa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080227fc */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 080227fe */ MOVS R2, 0x48 @ Set R2 to 0x48 \n\
/* 08022800 */ BL func_080230cc \n\
/* 08022804 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08022806 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08022808 */ MOVS R2, 0x4C @ Set R2 to 0x4C \n\
/* 0802280a */ BL func_080230cc \n\
/* 0802280e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08022810 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08022812 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08022814 */ BL func_080230cc \n\
/* 08022818 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802281a */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 0802281c */ MOVS R2, 0x54 @ Set R2 to 0x54 \n\
/* 0802281e */ BL func_080230cc \n\
/* 08022822 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08022824 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 08022826 */ MOVS R2, 0x58 @ Set R2 to 0x58 \n\
/* 08022828 */ BL func_080230cc \n\
/* 0802282c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802282e */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 08022830 */ MOVS R2, 0x5C @ Set R2 to 0x5C \n\
/* 08022832 */ BL func_080230cc \n\
/* 08022836 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08022838 */ MOVS R1, 0x60 @ Set R1 to 0x60 \n\
/* 0802283a */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 0802283c */ BL func_080230cc \n\
/* 08022840 */ B branch_0802288a \n\
\n\
.ltorg \n\
 \n\
branch_0802284c: \n\
/* 0802284c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802284e */ MOVS R1, 0xD0 @ Set R1 to 0xD0 \n\
/* 08022850 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022852 */ BL func_080230cc \n\
/* 08022856 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022858 */ MOVS R1, 0x60 @ Set R1 to 0x60 \n\
/* 0802285a */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802285c */ BL func_080230cc \n\
/* 08022860 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022862 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08022864 */ MOVS R2, 0x11 @ Set R2 to 0x11 \n\
/* 08022866 */ BL func_080230cc \n\
/* 0802286a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802286c */ MOVS R1, 0xB0 @ Set R1 to 0xB0 \n\
/* 0802286e */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08022870 */ BL func_080230cc \n\
/* 08022874 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022876 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08022878 */ MOVS R2, 0x24 @ Set R2 to 0x24 \n\
/* 0802287a */ BL func_080230cc \n\
/* 0802287e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08022880 */ LSLS R1, R1, 0x1 \n\
/* 08022882 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022884 */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 08022886 */ BL func_080230cc \n\
 \n\
branch_0802288a: \n\
/* 0802288a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802288c */ STRB R0, [R6] \n\
 \n\
branch_0802288e: \n\
/* 0802288e */ POP {R4-R6} \n\
/* 08022890 */ POP {R0} \n\
/* 08022892 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_common_display_text \n\
/* 08034a50 */ PUSH {R4-R6, LR} \n\
/* 08034a52 */ SUB SP, 0xC \n\
/* 08034a54 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08034a56 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08034a58 */ BNE branch_08034a80 \n\
/* 08034a5a */ LDR R0, =D_03005380 \n\
/* 08034a5c */ LDR R0, [R0] \n\
/* 08034a5e */ LDR R1, =D_030055d0 \n\
/* 08034a60 */ LDR R1, [R1] \n\
/* 08034a62 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08034a64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034a66 */ LDRSH R1, [R1, R2] \n\
/* 08034a68 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034a6a */ BL func_0804d770 \n\
/* 08034a6e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08034a70 */ BL scene_hide_bg_layer \n\
/* 08034a74 */ B branch_08034ad0 \n\
\n\
.ltorg \n\
 \n\
branch_08034a80: \n\
/* 08034a80 */ LDR R4, =D_030055d0 \n\
/* 08034a82 */ LDR R0, [R4] \n\
/* 08034a84 */ LDR R0, [R0, 0x4] \n\
/* 08034a86 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034a88 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08034a8a */ BL bmp_font_obj_print_c \n\
/* 08034a8e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08034a90 */ LDR R1, [R4] \n\
/* 08034a92 */ LDR R0, [R1, 0x4] \n\
/* 08034a94 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08034a96 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034a98 */ LDRSH R1, [R1, R2] \n\
/* 08034a9a */ BL delete_bmp_font_obj_text_anim \n\
/* 08034a9e */ LDR R5, =D_03005380 \n\
/* 08034aa0 */ LDR R0, [R5] \n\
/* 08034aa2 */ LDR R1, [R4] \n\
/* 08034aa4 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08034aa6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034aa8 */ LDRSH R1, [R1, R2] \n\
/* 08034aaa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034aac */ STR R2, [SP] \n\
/* 08034aae */ STR R2, [SP, 0x4] \n\
/* 08034ab0 */ STR R2, [SP, 0x8] \n\
/* 08034ab2 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08034ab4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08034ab6 */ BL func_0804d8f8 \n\
/* 08034aba */ LDR R0, [R5] \n\
/* 08034abc */ LDR R1, [R4] \n\
/* 08034abe */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08034ac0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034ac2 */ LDRSH R1, [R1, R2] \n\
/* 08034ac4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034ac6 */ BL func_0804d770 \n\
/* 08034aca */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08034acc */ BL scene_show_bg_layer \n\
 \n\
branch_08034ad0: \n\
/* 08034ad0 */ ADD SP, 0xC \n\
/* 08034ad2 */ POP {R4-R6} \n\
/* 08034ad4 */ POP {R0} \n\
/* 08034ad6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e768 \n\
/* 0800e768 */ PUSH {R4-R6, LR} \n\
/* 0800e76a */ SUB SP, 0x14 \n\
/* 0800e76c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800e76e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800e770 */ LDR R0, [R4, 0xC] \n\
/* 0800e772 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800e774 */ LDRSH R0, [R0, R1] \n\
/* 0800e776 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e778 */ BGE branch_0800e7da \n\
/* 0800e77a */ BL scene_get_default_text_id \n\
/* 0800e77e */ LDR R1, [R4] \n\
/* 0800e780 */ LSLS R0, R0, 0x2 \n\
/* 0800e782 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800e784 */ LDR R1, [R0] \n\
/* 0800e786 */ LDRH R0, [R4, 0xA] \n\
/* 0800e788 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800e78a */ BEQ branch_0800e7a4 \n\
/* 0800e78c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800e78e */ BGT branch_0800e796 \n\
/* 0800e790 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e792 */ BEQ branch_0800e79c \n\
/* 0800e794 */ B branch_0800e7b4 \n\
 \n\
branch_0800e796: \n\
/* 0800e796 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0800e798 */ BEQ branch_0800e7ac \n\
/* 0800e79a */ B branch_0800e7b4 \n\
 \n\
branch_0800e79c: \n\
/* 0800e79c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800e79e */ BL bmp_font_obj_print_c_default \n\
/* 0800e7a2 */ B branch_0800e7b2 \n\
 \n\
branch_0800e7a4: \n\
/* 0800e7a4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800e7a6 */ BL bmp_font_obj_print_l_default \n\
/* 0800e7aa */ B branch_0800e7b2 \n\
 \n\
branch_0800e7ac: \n\
/* 0800e7ac */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800e7ae */ BL bmp_font_obj_print_r_default \n\
 \n\
branch_0800e7b2: \n\
/* 0800e7b2 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_0800e7b4: \n\
/* 0800e7b4 */ LDR R0, =gSpriteHandler \n\
/* 0800e7b6 */ LDR R0, [R0] \n\
/* 0800e7b8 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0800e7ba */ LDRSH R3, [R4, R2] \n\
/* 0800e7bc */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0800e7be */ LDRSH R1, [R4, R2] \n\
/* 0800e7c0 */ STR R1, [SP] \n\
/* 0800e7c2 */ LDRH R1, [R4, 0x8] \n\
/* 0800e7c4 */ STR R1, [SP, 0x4] \n\
/* 0800e7c6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800e7c8 */ STR R1, [SP, 0x8] \n\
/* 0800e7ca */ STR R1, [SP, 0xC] \n\
/* 0800e7cc */ STR R1, [SP, 0x10] \n\
/* 0800e7ce */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800e7d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e7d2 */ BL sprite_create \n\
/* 0800e7d6 */ LDR R1, [R4, 0xC] \n\
/* 0800e7d8 */ STRH R0, [R1] \n\
 \n\
branch_0800e7da: \n\
/* 0800e7da */ ADD SP, 0x14 \n\
/* 0800e7dc */ POP {R4-R6} \n\
/* 0800e7de */ POP {R0} \n\
/* 0800e7e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

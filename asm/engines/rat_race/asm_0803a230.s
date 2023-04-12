asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a230 \n\
/* 0803a230 */ PUSH {R4-R6, LR} \n\
/* 0803a232 */ SUB SP, 0xC \n\
/* 0803a234 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0803a236 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803a238 */ BL func_0800c604 \n\
/* 0803a23c */ LDR R6, =D_030055d0 \n\
/* 0803a23e */ LDR R1, [R6] \n\
/* 0803a240 */ LDR R0, [R1, 0x4] \n\
/* 0803a242 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0803a244 */ LDRSH R1, [R1, R2] \n\
/* 0803a246 */ BL delete_bmp_font_obj_text_anim \n\
/* 0803a24a */ LDR R0, [R6] \n\
/* 0803a24c */ LDR R0, [R0, 0x4] \n\
/* 0803a24e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803a250 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a252 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0803a254 */ BL bmp_font_obj_print_c \n\
/* 0803a258 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803a25a */ LDR R5, =D_03005380 \n\
/* 0803a25c */ LDR R0, [R5] \n\
/* 0803a25e */ LDR R1, [R6] \n\
/* 0803a260 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0803a262 */ LDRSH R1, [R1, R3] \n\
/* 0803a264 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803a266 */ STR R3, [SP] \n\
/* 0803a268 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803a26a */ STR R4, [SP, 0x4] \n\
/* 0803a26c */ STR R4, [SP, 0x8] \n\
/* 0803a26e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a270 */ BL func_0804d8f8 \n\
/* 0803a274 */ LDR R0, [R5] \n\
/* 0803a276 */ LDR R2, [R6] \n\
/* 0803a278 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0803a27a */ LDRSH R1, [R2, R3] \n\
/* 0803a27c */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0803a27e */ LDRSH R2, [R2, R3] \n\
/* 0803a280 */ BL func_0804d614 \n\
/* 0803a284 */ LDR R0, [R5] \n\
/* 0803a286 */ LDR R1, [R6] \n\
/* 0803a288 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0803a28a */ LDRSH R1, [R1, R2] \n\
/* 0803a28c */ STR R4, [SP] \n\
/* 0803a28e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a290 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a292 */ BL func_0804dae0 \n\
/* 0803a296 */ ADD SP, 0xC \n\
/* 0803a298 */ POP {R4-R6} \n\
/* 0803a29a */ POP {R0} \n\
/* 0803a29c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

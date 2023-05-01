asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803113c \n\
/* 0803113c */ PUSH {R4, R5, LR} \n\
/* 0803113e */ SUB SP, 0xC \n\
/* 08031140 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08031142 */ LDR R4, =gCurrentEngineData \n\
/* 08031144 */ LDR R1, [R4] \n\
/* 08031146 */ LDR R0, [R1] \n\
/* 08031148 */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 0803114a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803114c */ LDRSH R1, [R1, R2] \n\
/* 0803114e */ BL delete_bmp_font_obj_text_anim \n\
/* 08031152 */ LDR R0, [R4] \n\
/* 08031154 */ LDR R0, [R0] \n\
/* 08031156 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08031158 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803115a */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0803115c */ BL bmp_font_obj_print_c \n\
/* 08031160 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08031162 */ LDR R0, =D_03005380 \n\
/* 08031164 */ LDR R0, [R0] \n\
/* 08031166 */ LDR R1, [R4] \n\
/* 08031168 */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 0803116a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803116c */ LDRSH R1, [R1, R3] \n\
/* 0803116e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08031170 */ STR R3, [SP] \n\
/* 08031172 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031174 */ STR R3, [SP, 0x4] \n\
/* 08031176 */ STR R3, [SP, 0x8] \n\
/* 08031178 */ BL func_0804d8f8 \n\
/* 0803117c */ ADD SP, 0xC \n\
/* 0803117e */ POP {R4, R5} \n\
/* 08031180 */ POP {R0} \n\
/* 08031182 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

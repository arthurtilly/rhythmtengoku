asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_common_display_text \n\
/* 0803d9a0 */ PUSH {R4, R5, LR} \n\
/* 0803d9a2 */ SUB SP, 0xC \n\
/* 0803d9a4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803d9a6 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803d9a8 */ BNE branch_0803d9c8 \n\
/* 0803d9aa */ LDR R0, =D_03005380 \n\
/* 0803d9ac */ LDR R0, [R0] \n\
/* 0803d9ae */ LDR R1, =D_030055d0 \n\
/* 0803d9b0 */ LDR R1, [R1] \n\
/* 0803d9b2 */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 0803d9b4 */ LDRSH R1, [R1, R2] \n\
/* 0803d9b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d9b8 */ BL func_0804d770 \n\
/* 0803d9bc */ B branch_0803da0a \n\
\n\
.ltorg \n\
 \n\
branch_0803d9c8: \n\
/* 0803d9c8 */ LDR R4, =D_030055d0 \n\
/* 0803d9ca */ LDR R1, [R4] \n\
/* 0803d9cc */ LDR R0, [R1] \n\
/* 0803d9ce */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0803d9d0 */ LDRSH R1, [R1, R3] \n\
/* 0803d9d2 */ BL func_08007b04 \n\
/* 0803d9d6 */ LDR R0, [R4] \n\
/* 0803d9d8 */ LDR R0, [R0] \n\
/* 0803d9da */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803d9dc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803d9de */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0803d9e0 */ BL bmp_font_obj_print_c \n\
/* 0803d9e4 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d9e6 */ LDR R5, =D_03005380 \n\
/* 0803d9e8 */ LDR R0, [R5] \n\
/* 0803d9ea */ LDR R1, [R4] \n\
/* 0803d9ec */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0803d9ee */ LDRSH R1, [R1, R3] \n\
/* 0803d9f0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d9f2 */ STR R3, [SP] \n\
/* 0803d9f4 */ STR R3, [SP, 0x4] \n\
/* 0803d9f6 */ STR R3, [SP, 0x8] \n\
/* 0803d9f8 */ BL func_0804d8f8 \n\
/* 0803d9fc */ LDR R0, [R5] \n\
/* 0803d9fe */ LDR R1, [R4] \n\
/* 0803da00 */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 0803da02 */ LDRSH R1, [R1, R2] \n\
/* 0803da04 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803da06 */ BL func_0804d770 \n\
 \n\
branch_0803da0a: \n\
/* 0803da0a */ ADD SP, 0xC \n\
/* 0803da0c */ POP {R4, R5} \n\
/* 0803da0e */ POP {R0} \n\
/* 0803da10 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

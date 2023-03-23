asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_common_display_text \n\
/* 08040b58 */ PUSH {R4, R5, LR} \n\
/* 08040b5a */ SUB SP, 0xC \n\
/* 08040b5c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08040b5e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08040b60 */ BNE branch_08040b80 \n\
/* 08040b62 */ LDR R0, =D_03005380 \n\
/* 08040b64 */ LDR R0, [R0] \n\
/* 08040b66 */ LDR R1, =D_030055d0 \n\
/* 08040b68 */ LDR R1, [R1] \n\
/* 08040b6a */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08040b6c */ LDRSH R1, [R1, R2] \n\
/* 08040b6e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040b70 */ BL func_0804d770 \n\
/* 08040b74 */ B branch_08040bc4 \n\
\n\
.ltorg \n\
 \n\
branch_08040b80: \n\
/* 08040b80 */ LDR R4, =D_030055d0 \n\
/* 08040b82 */ LDR R1, [R4] \n\
/* 08040b84 */ LDR R0, [R1, 0x38] \n\
/* 08040b86 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08040b88 */ LDRSH R1, [R1, R3] \n\
/* 08040b8a */ BL delete_bmp_font_obj_text_anim \n\
/* 08040b8e */ LDR R0, [R4] \n\
/* 08040b90 */ LDR R0, [R0, 0x38] \n\
/* 08040b92 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08040b94 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08040b96 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08040b98 */ BL bmp_font_obj_print_c \n\
/* 08040b9c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08040b9e */ LDR R5, =D_03005380 \n\
/* 08040ba0 */ LDR R0, [R5] \n\
/* 08040ba2 */ LDR R1, [R4] \n\
/* 08040ba4 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08040ba6 */ LDRSH R1, [R1, R3] \n\
/* 08040ba8 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08040baa */ STR R3, [SP] \n\
/* 08040bac */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040bae */ STR R3, [SP, 0x4] \n\
/* 08040bb0 */ STR R3, [SP, 0x8] \n\
/* 08040bb2 */ BL func_0804d8f8 \n\
/* 08040bb6 */ LDR R0, [R5] \n\
/* 08040bb8 */ LDR R1, [R4] \n\
/* 08040bba */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08040bbc */ LDRSH R1, [R1, R2] \n\
/* 08040bbe */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08040bc0 */ BL func_0804d770 \n\
 \n\
branch_08040bc4: \n\
/* 08040bc4 */ ADD SP, 0xC \n\
/* 08040bc6 */ POP {R4, R5} \n\
/* 08040bc8 */ POP {R0} \n\
/* 08040bca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

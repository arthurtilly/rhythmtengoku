asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007b04 \n\
/* 08007b04 */ PUSH {R4, LR} \n\
/* 08007b06 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007b08 */ LSLS R1, R1, 0x10 \n\
/* 08007b0a */ ASRS R1, R1, 0x10 \n\
/* 08007b0c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08007b0e */ BLT branch_08007b22 \n\
/* 08007b10 */ LDR R0, =D_03005380 \n\
/* 08007b12 */ LDR R0, [R0] \n\
/* 08007b14 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08007b16 */ BL func_0804ddb0 \n\
/* 08007b1a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08007b1c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08007b1e */ BL bmp_font_obj_delete_printed_anim \n\
 \n\
branch_08007b22: \n\
/* 08007b22 */ POP {R4} \n\
/* 08007b24 */ POP {R0} \n\
/* 08007b26 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

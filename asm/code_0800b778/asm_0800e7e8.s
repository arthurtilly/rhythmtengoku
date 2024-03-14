asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e7e8 \n\
/* 0800e7e8 */ PUSH {R4-R7, LR} \n\
/* 0800e7ea */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800e7ec */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800e7ee */ LDR R1, [R6, 0xC] \n\
/* 0800e7f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e7f2 */ LDRSH R0, [R1, R2] \n\
/* 0800e7f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e7f6 */ BLT branch_0800e826 \n\
/* 0800e7f8 */ LDR R4, =gSpriteHandler \n\
/* 0800e7fa */ LDR R0, [R4] \n\
/* 0800e7fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e7fe */ LDRSH R1, [R1, R2] \n\
/* 0800e800 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0800e802 */ BL sprite_get_data \n\
/* 0800e806 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800e808 */ LDR R0, [R4] \n\
/* 0800e80a */ LDR R1, [R6, 0xC] \n\
/* 0800e80c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e80e */ LDRSH R1, [R1, R2] \n\
/* 0800e810 */ BL sprite_delete \n\
/* 0800e814 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800e816 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800e818 */ BL bmp_font_obj_delete_printed_anim \n\
/* 0800e81c */ LDR R1, [R6, 0xC] \n\
/* 0800e81e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800e820 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800e822 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800e824 */ STRH R0, [R1] \n\
 \n\
branch_0800e826: \n\
/* 0800e826 */ POP {R4-R7} \n\
/* 0800e828 */ POP {R0} \n\
/* 0800e82a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

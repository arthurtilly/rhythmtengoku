asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ee58 \n\
/* 0803ee58 */ PUSH {R4, R5, LR} \n\
/* 0803ee5a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803ee5c */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803ee5e */ LDR R0, =gCurrentEngineData \n\
/* 0803ee60 */ LDR R3, [R0] \n\
/* 0803ee62 */ LSLS R1, R4, 0x2 \n\
/* 0803ee64 */ MOVS R5, 0xE1 @ Set R5 to 0xE1 \n\
/* 0803ee66 */ LSLS R5, R5, 0x2 \n\
/* 0803ee68 */ ADDS R0, R3, R5 @ Set R0 to R3 + R5 \n\
/* 0803ee6a */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0803ee6c */ LDR R0, [R1] \n\
/* 0803ee6e */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0803ee70 */ BHI branch_0803ee90 \n\
/* 0803ee72 */ STR R2, [R1] \n\
/* 0803ee74 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 0803ee76 */ LSLS R0, R0, 0x2 \n\
/* 0803ee78 */ ADDS R1, R3, R0 @ Set R1 to R3 + R0 \n\
/* 0803ee7a */ LDR R2, =toss_boys_button_masks \n\
/* 0803ee7c */ LSLS R0, R4, 0x1 \n\
/* 0803ee7e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803ee80 */ LDRH R2, [R0] \n\
/* 0803ee82 */ LDRH R0, [R1] \n\
/* 0803ee84 */ BICS R0, R2 @ Clear bits in R2 from R0 \n\
/* 0803ee86 */ STRH R0, [R1] \n\
/* 0803ee88 */ LDRH R0, [R1] \n\
/* 0803ee8a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ee8c */ BL gameplay_set_input_buttons \n\
 \n\
branch_0803ee90: \n\
/* 0803ee90 */ POP {R4, R5} \n\
/* 0803ee92 */ POP {R0} \n\
/* 0803ee94 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

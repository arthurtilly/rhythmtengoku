asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080039d4 \n\
/* 080039d4 */ STR R1, [R0] \n\
/* 080039d6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080039d8 */ STRB R2, [R0, 0x4] \n\
/* 080039da */ STRB R3, [R0, 0x5] \n\
/* 080039dc */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 080039de */ STR R1, [R0] \n\
/* 080039e0 */ STRB R1, [R0, 0x5] \n\
/* 080039e2 */ STRB R1, [R0, 0x4] \n\
/* 080039e4 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");

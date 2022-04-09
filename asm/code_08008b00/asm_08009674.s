asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009674 \n\
/* 08009674 */ LDR R0, =D_0300120c \n\
/* 08009676 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 08009678 */ STRH R3, [R0] \n\
/* 0800967a */ LDR R1, =D_080000c4 \n\
/* 0800967c */ LDRH R0, [R0] \n\
/* 0800967e */ STRH R0, [R1] \n\
/* 08009680 */ LDR R2, =D_0300120e \n\
/* 08009682 */ STRH R3, [R2] \n\
/* 08009684 */ LDRH R0, [R2] \n\
/* 08009686 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08009688 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800968a */ STRH R0, [R2] \n\
/* 0800968c */ LDR R1, =D_080000c6 \n\
/* 0800968e */ LDRH R0, [R2] \n\
/* 08009690 */ STRH R0, [R1] \n\
/* 08009692 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

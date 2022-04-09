asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002698 \n\
/* 08002698 */ PUSH {R4-R6, LR} \n\
/* 0800269a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800269c */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0800269e */ BL func_08002634 \n\
/* 080026a2 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080026a4 */ LSLS R4, R4, 0x10 \n\
/* 080026a6 */ LSRS R4, R4, 0x10 \n\
/* 080026a8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080026aa */ BL func_08002920 \n\
/* 080026ae */ LSLS R5, R5, 0x10 \n\
/* 080026b0 */ ASRS R5, R5, 0x10 \n\
/* 080026b2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080026b4 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080026b6 */ BL func_080028a8 \n\
/* 080026ba */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080026bc */ POP {R4-R6} \n\
/* 080026be */ POP {R1} \n\
/* 080026c0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

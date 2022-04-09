asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080026c4 \n\
/* 080026c4 */ PUSH {R4-R6, LR} \n\
/* 080026c6 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080026c8 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 080026ca */ LDR R2, =D_08aa4324 \n\
/* 080026cc */ LSLS R0, R0, 0x2 \n\
/* 080026ce */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080026d0 */ LDR R6, [R0] \n\
/* 080026d2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080026d4 */ BL func_0804b368 \n\
/* 080026d8 */ LSLS R4, R4, 0x10 \n\
/* 080026da */ LSRS R4, R4, 0x10 \n\
/* 080026dc */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080026de */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080026e0 */ BL func_08002920 \n\
/* 080026e4 */ LSLS R5, R5, 0x10 \n\
/* 080026e6 */ ASRS R5, R5, 0x10 \n\
/* 080026e8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080026ea */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080026ec */ BL func_080028a8 \n\
/* 080026f0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080026f2 */ POP {R4-R6} \n\
/* 080026f4 */ POP {R1} \n\
/* 080026f6 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

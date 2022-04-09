asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011bec \n\
/* 08011bec */ LDRB R1, [R0] \n\
/* 08011bee */ MOVS R0, 0x38 @ Set R0 to 0x38 \n\
/* 08011bf0 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08011bf2 */ LSLS R0, R0, 0x8 \n\
/* 08011bf4 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");

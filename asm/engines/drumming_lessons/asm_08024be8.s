asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024be8 \n\
/* 08024be8 */ LDR R1, =gCurrentEngineData \n\
/* 08024bea */ LDR R1, [R1] \n\
/* 08024bec */ LDR R2, =0x00000396 \n\
/* 08024bee */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08024bf0 */ STRH R0, [R1] \n\
/* 08024bf2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

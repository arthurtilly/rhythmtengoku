asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080331c0 \n\
/* 080331c0 */ LDR R2, =D_03004b10 \n\
/* 080331c2 */ LSLS R1, R0, 0x18 \n\
/* 080331c4 */ ASRS R1, R1, 0x18 \n\
/* 080331c6 */ LDRH R3, [R2, 0x14] \n\
/* 080331c8 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080331ca */ STRH R1, [R2, 0x14] \n\
/* 080331cc */ LSLS R0, R0, 0x10 \n\
/* 080331ce */ ASRS R0, R0, 0x18 \n\
/* 080331d0 */ LDRH R1, [R2, 0x16] \n\
/* 080331d2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080331d4 */ STRH R0, [R2, 0x16] \n\
/* 080331d6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

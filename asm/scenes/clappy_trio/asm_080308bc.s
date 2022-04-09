asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080308bc \n\
/* 080308bc */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 080308be */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 080308c0 */ LSLS R2, R2, 0x5 \n\
/* 080308c2 */ LDRH R3, [R1] \n\
/* 080308c4 */ LDR R0, =0xfffffe1f \n\
/* 080308c6 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 080308c8 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 080308ca */ STRH R0, [R1] \n\
/* 080308cc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

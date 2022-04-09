asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007370 \n\
/* 08007370 */ LDR R1, =D_03004b10 \n\
/* 08007372 */ LDR R0, =0x854 \n\
/* 08007374 */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 08007376 */ LDRH R2, [R3] \n\
/* 08007378 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0800737a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800737c */ STRH R0, [R3] \n\
/* 0800737e */ LDR R0, =0x858 \n\
/* 08007380 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08007382 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08007384 */ STR R0, [R1] \n\
/* 08007386 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

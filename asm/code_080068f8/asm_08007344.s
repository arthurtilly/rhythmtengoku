asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007344 \n\
/* 08007344 */ PUSH {R4, LR} \n\
/* 08007346 */ LDR R3, =D_03004b10 \n\
/* 08007348 */ LDR R1, =0x854 \n\
/* 0800734a */ ADDS R4, R3, R1 @ Set R4 to R3 + R1 \n\
/* 0800734c */ LDRH R2, [R4] \n\
/* 0800734e */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 08007350 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08007352 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08007354 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08007356 */ STRH R1, [R4] \n\
/* 08007358 */ LDR R1, =0x858 \n\
/* 0800735a */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 0800735c */ STR R0, [R3] \n\
/* 0800735e */ POP {R4} \n\
/* 08007360 */ POP {R0} \n\
/* 08007362 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007324 \n\
/* 08007324 */ LDR R2, =D_03004b10 \n\
/* 08007326 */ LDR R1, =0x854 \n\
/* 08007328 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0800732a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800732c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800732e */ LDRB R3, [R2] \n\
/* 08007330 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08007332 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08007334 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08007336 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08007338 */ STRB R1, [R2] \n\
/* 0800733a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019324 \n\
/* 08019324 */ LDR R1, =D_089d7980 \n\
/* 08019326 */ LDR R3, [R1] \n\
/* 08019328 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801932a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801932c */ LSLS R0, R0, 0x1 \n\
/* 0801932e */ LDRB R2, [R3] \n\
/* 08019330 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08019332 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08019334 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08019336 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08019338 */ STRB R1, [R3] \n\
/* 0801933a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

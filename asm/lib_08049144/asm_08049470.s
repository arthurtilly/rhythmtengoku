asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049470 \n\
/* 08049470 */ LDR R2, =D_03005b88 \n\
/* 08049472 */ LDR R2, [R2] \n\
/* 08049474 */ LSLS R0, R0, 0x5 \n\
/* 08049476 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08049478 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804947a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804947c */ LSLS R1, R1, 0x3 \n\
/* 0804947e */ LDRB R3, [R0] \n\
/* 08049480 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 08049482 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08049484 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 08049486 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 08049488 */ STRB R2, [R0] \n\
/* 0804948a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

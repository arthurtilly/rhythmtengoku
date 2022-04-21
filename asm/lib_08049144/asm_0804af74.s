asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804af74 \n\
/* 0804af74 */ LDR R1, =D_03001578 \n\
/* 0804af76 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0804af78 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804af7a */ STRB R2, [R1] \n\
/* 0804af7c */ LDR R1, =D_03001580 \n\
/* 0804af7e */ LSLS R0, R0, 0x1 \n\
/* 0804af80 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0804af82 */ LDR R2, =0x0000ffff \n\
/* 0804af84 */ STRH R2, [R1] \n\
/* 0804af86 */ LDR R1, =D_03001588 \n\
/* 0804af88 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804af8a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804af8c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804af8e */ STRH R1, [R0] \n\
/* 0804af90 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

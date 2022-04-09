asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802be24 \n\
/* 0802be24 */ LDR R1, =D_03004b10 \n\
/* 0802be26 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0802be28 */ ADDS R2, 0x4C @ Add 0x4C to R2 \n\
/* 0802be2a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802be2c */ STRH R0, [R2] \n\
/* 0802be2e */ LDRH R2, [R1] \n\
/* 0802be30 */ LDR R0, =0x0000dfff \n\
/* 0802be32 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0802be34 */ STRH R0, [R1] \n\
/* 0802be36 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

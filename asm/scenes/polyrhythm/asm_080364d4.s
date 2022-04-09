asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080364d4 \n\
/* 080364d4 */ PUSH {LR} \n\
/* 080364d6 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 080364d8 */ LSLS R2, R2, 0x7 \n\
/* 080364da */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080364dc */ BLT branch_080364ee \n\
/* 080364de */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080364e0 */ BNE branch_080364e8 \n\
/* 080364e2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080364e4 */ LSLS R0, R0, 0x3 \n\
/* 080364e6 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
 \n\
branch_080364e8: \n\
/* 080364e8 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 080364ea */ LSLS R0, R1, 0x2 \n\
/* 080364ec */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
 \n\
branch_080364ee: \n\
/* 080364ee */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080364f0 */ POP {R1} \n\
/* 080364f2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

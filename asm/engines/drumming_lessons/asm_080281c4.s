asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080281c4 \n\
/* 080281c4 */ LDR R1, =D_030046a8 \n\
/* 080281c6 */ LDR R2, [R1] \n\
/* 080281c8 */ MOVS R1, 0xAD @ Set R1 to 0xAD \n\
/* 080281ca */ LSLS R1, R1, 0x2 \n\
/* 080281cc */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080281ce */ LSRS R1, R0, 0x3 \n\
/* 080281d0 */ LSLS R1, R1, 0x2 \n\
/* 080281d2 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080281d4 */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 080281d6 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080281d8 */ LSLS R1, R1, 0x2 \n\
/* 080281da */ LDR R0, [R2] \n\
/* 080281dc */ LSRS R0, R1 @ Set R0 to R0 >> R1 (logical) \n\
/* 080281de */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 080281e0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080281e2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

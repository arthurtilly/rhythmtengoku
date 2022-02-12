asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025748 \n\
/* 08025748 */ LDR R1, =D_030055d0 \n\
/* 0802574a */ LDR R1, [R1] \n\
/* 0802574c */ LDR R2, =0x000013fa \n\
/* 0802574e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025750 */ STRB R0, [R1] \n\
/* 08025752 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

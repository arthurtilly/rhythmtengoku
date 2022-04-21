asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c340 \n\
/* 0804c340 */ PUSH {R4, LR} \n\
/* 0804c342 */ LDR R4, =D_03005b90 \n\
/* 0804c344 */ STRB R0, [R4] \n\
/* 0804c346 */ STRB R1, [R4, 0x1] \n\
/* 0804c348 */ STRB R2, [R4, 0x2] \n\
/* 0804c34a */ STRB R3, [R4, 0x3] \n\
/* 0804c34c */ POP {R4} \n\
/* 0804c34e */ POP {R0} \n\
/* 0804c350 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

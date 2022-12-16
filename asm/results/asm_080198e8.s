asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080198e8 \n\
/* 080198e8 */ PUSH {LR} \n\
/* 080198ea */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080198ec */ BL agb_random \n\
/* 080198f0 */ LSLS R0, R0, 0x10 \n\
/* 080198f2 */ LSRS R0, R0, 0x10 \n\
/* 080198f4 */ POP {R1} \n\
/* 080198f6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

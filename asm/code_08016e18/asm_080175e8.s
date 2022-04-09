asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080175e8 \n\
/* 080175e8 */ PUSH {LR} \n\
/* 080175ea */ ADDS R0, 0x23 @ Add 0x23 to R0 \n\
/* 080175ec */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080175ee */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080175f0 */ BL func_080087d4 \n\
/* 080175f4 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080175f6 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080175f8 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080175fa */ BL func_0804c340 \n\
/* 080175fe */ POP {R0} \n\
/* 08017600 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

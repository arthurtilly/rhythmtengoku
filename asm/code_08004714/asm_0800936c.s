asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800936c \n\
/* 0800936c */ PUSH {R4, LR} \n\
/* 0800936e */ LDR R4, =D_03001190 \n\
/* 08009370 */ LDR R0, =D_03004aec \n\
/* 08009372 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009374 */ LDRSH R0, [R0, R1] \n\
/* 08009376 */ LSLS R0, R0, 0x8 \n\
/* 08009378 */ MOVS R1, 0x31 @ Set R1 to 0x31 \n\
/* 0800937a */ BL __divsi3 \n\
/* 0800937e */ LDR R1, [R4] \n\
/* 08009380 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08009382 */ ASRS R0, R0, 0xC \n\
/* 08009384 */ POP {R4} \n\
/* 08009386 */ POP {R1} \n\
/* 08009388 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

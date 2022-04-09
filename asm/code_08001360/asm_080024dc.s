asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080024dc \n\
/* 080024dc */ PUSH {R4, LR} \n\
/* 080024de */ SUB SP, 0x4 \n\
/* 080024e0 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080024e2 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 080024e4 */ LSLS R4, R4, 0x10 \n\
/* 080024e6 */ ASRS R4, R4, 0x10 \n\
/* 080024e8 */ LSLS R3, R3, 0x10 \n\
/* 080024ea */ ASRS R3, R3, 0x10 \n\
/* 080024ec */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080024ee */ STR R1, [SP] \n\
/* 080024f0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080024f2 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080024f4 */ BL func_0800232c \n\
/* 080024f8 */ ADD SP, 0x4 \n\
/* 080024fa */ POP {R4} \n\
/* 080024fc */ POP {R0} \n\
/* 080024fe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

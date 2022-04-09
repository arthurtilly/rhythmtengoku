asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080074c4 \n\
/* 080074c4 */ PUSH {R4, LR} \n\
/* 080074c6 */ SUB SP, 0x4 \n\
/* 080074c8 */ LSLS R0, R0, 0x18 \n\
/* 080074ca */ ASRS R0, R0, 0x18 \n\
/* 080074cc */ LSLS R1, R1, 0x10 \n\
/* 080074ce */ ASRS R1, R1, 0x10 \n\
/* 080074d0 */ LSLS R2, R2, 0x10 \n\
/* 080074d2 */ ASRS R2, R2, 0x10 \n\
/* 080074d4 */ LSLS R3, R3, 0x10 \n\
/* 080074d6 */ ASRS R3, R3, 0x10 \n\
/* 080074d8 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 080074da */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080074dc */ STR R4, [SP] \n\
/* 080074de */ BL func_0800232c \n\
/* 080074e2 */ ADD SP, 0x4 \n\
/* 080074e4 */ POP {R4} \n\
/* 080074e6 */ POP {R0} \n\
/* 080074e8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

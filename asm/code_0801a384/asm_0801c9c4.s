asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c9c4 \n\
/* 0801c9c4 */ PUSH {R4, LR} \n\
/* 0801c9c6 */ LDR R1, =L2_pat00_seqData \n\
/* 0801c9c8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801c9ca */ BL func_0800267c \n\
/* 0801c9ce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801c9d0 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 0801c9d2 */ BL func_0800c3a4 \n\
/* 0801c9d6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801c9d8 */ LSLS R1, R1, 0x10 \n\
/* 0801c9da */ LSRS R1, R1, 0x10 \n\
/* 0801c9dc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801c9de */ BL func_080028c4 \n\
/* 0801c9e2 */ POP {R4} \n\
/* 0801c9e4 */ POP {R0} \n\
/* 0801c9e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

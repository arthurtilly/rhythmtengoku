asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007b4c \n\
/* 08007b4c */ LDR R2, =0x040000d4 @ !Hardware REG_DMA3SAD \n\
/* 08007b4e */ LDR R1, =D_08000cfc \n\
/* 08007b50 */ STR R1, [R2] \n\
/* 08007b52 */ LDR R3, =D_03000eb0 \n\
/* 08007b54 */ STR R3, [R2, 0x4] \n\
/* 08007b56 */ LDR R0, =D_08000f08 \n\
/* 08007b58 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08007b5a */ LSRS R0, R0, 0x2 \n\
/* 08007b5c */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 08007b5e */ LSLS R1, R1, 0x18 \n\
/* 08007b60 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007b62 */ STR R0, [R2, 0x8] \n\
/* 08007b64 */ LDR R0, [R2, 0x8] \n\
/* 08007b66 */ LDR R0, =D_03004af8 \n\
/* 08007b68 */ STR R3, [R0] \n\
/* 08007b6a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

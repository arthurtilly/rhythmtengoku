asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c6b8 \n\
/* 0801c6b8 */ PUSH {R4, R5, LR} \n\
/* 0801c6ba */ LDR R1, =gCurrentSceneData \n\
/* 0801c6bc */ LDR R2, [R1] \n\
/* 0801c6be */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 0801c6c0 */ LSLS R1, R1, 0x2 \n\
/* 0801c6c2 */ ADDS R4, R2, R1 @ Set R4 to R2 + R1 \n\
/* 0801c6c4 */ LDRH R3, [R4] \n\
/* 0801c6c6 */ LDR R5, =0x376 \n\
/* 0801c6c8 */ ADDS R1, R2, R5 @ Set R1 to R2 + R5 \n\
/* 0801c6ca */ STRH R3, [R1] \n\
/* 0801c6cc */ LDR R3, =D_089d84a0 \n\
/* 0801c6ce */ LSLS R1, R0, 0x1 \n\
/* 0801c6d0 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0801c6d2 */ LDRH R1, [R1] \n\
/* 0801c6d4 */ STRH R1, [R4] \n\
/* 0801c6d6 */ LDR R1, =0x37a \n\
/* 0801c6d8 */ ADDS R3, R2, R1 @ Set R3 to R2 + R1 \n\
/* 0801c6da */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801c6dc */ LSLS R1, R1, 0x1 \n\
/* 0801c6de */ STRH R1, [R3] \n\
/* 0801c6e0 */ ADDS R5, 0x6 @ Add 0x6 to R5 \n\
/* 0801c6e2 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0801c6e4 */ STRB R0, [R2] \n\
/* 0801c6e6 */ POP {R4, R5} \n\
/* 0801c6e8 */ POP {R0} \n\
/* 0801c6ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

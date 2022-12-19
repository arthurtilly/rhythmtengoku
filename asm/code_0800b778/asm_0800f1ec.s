asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f1ec \n\
/* 0800f1ec */ PUSH {LR} \n\
/* 0800f1ee */ SUB SP, 0x4 \n\
/* 0800f1f0 */ LDR R3, [R0, 0x8] \n\
/* 0800f1f2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800f1f4 */ ADDS R1, 0x48 @ Add 0x48 to R1 \n\
/* 0800f1f6 */ LDRH R2, [R1] \n\
/* 0800f1f8 */ LSLS R2, R2, 0x4 \n\
/* 0800f1fa */ LDR R1, [R0, 0x4] \n\
/* 0800f1fc */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800f1fe */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 0800f200 */ LDRH R2, [R0] \n\
/* 0800f202 */ LSLS R2, R2, 0x4 \n\
/* 0800f204 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800f206 */ LSLS R0, R0, 0x1 \n\
/* 0800f208 */ STR R0, [SP] \n\
/* 0800f20a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800f20c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0800f20e */ BL dma3_set \n\
/* 0800f212 */ ADD SP, 0x4 \n\
/* 0800f214 */ POP {R0} \n\
/* 0800f216 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

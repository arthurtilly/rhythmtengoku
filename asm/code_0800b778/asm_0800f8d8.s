asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f8d8 \n\
/* 0800f8d8 */ LSLS R1, R1, 0x10 \n\
/* 0800f8da */ ASRS R1, R1, 0x10 \n\
/* 0800f8dc */ LDR R2, [R0, 0x50] \n\
/* 0800f8de */ LSLS R0, R1, 0x1 \n\
/* 0800f8e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f8e2 */ LSLS R0, R0, 0x4 \n\
/* 0800f8e4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800f8e6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800f8e8 */ LDRSH R0, [R0, R1] \n\
/* 0800f8ea */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");

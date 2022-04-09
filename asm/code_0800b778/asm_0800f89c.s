asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f89c \n\
/* 0800f89c */ PUSH {R4, R5, LR} \n\
/* 0800f89e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800f8a0 */ LSLS R1, R1, 0x10 \n\
/* 0800f8a2 */ ASRS R2, R1, 0x10 \n\
/* 0800f8a4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800f8a6 */ BLT branch_0800f8ca \n\
/* 0800f8a8 */ LDR R1, [R5, 0x50] \n\
/* 0800f8aa */ LSLS R0, R2, 0x1 \n\
/* 0800f8ac */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800f8ae */ LSLS R4, R0, 0x4 \n\
/* 0800f8b0 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 0800f8b2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f8b4 */ LDRSH R1, [R1, R0] \n\
/* 0800f8b6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800f8b8 */ BLT branch_0800f8ca \n\
/* 0800f8ba */ LDR R0, =D_03005380 \n\
/* 0800f8bc */ LDR R0, [R0] \n\
/* 0800f8be */ BL func_0804d504 \n\
/* 0800f8c2 */ LDR R0, [R5, 0x50] \n\
/* 0800f8c4 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0800f8c6 */ LDR R1, =0xffff \n\
/* 0800f8c8 */ STRH R1, [R0] \n\
 \n\
branch_0800f8ca: \n\
/* 0800f8ca */ POP {R4, R5} \n\
/* 0800f8cc */ POP {R0} \n\
/* 0800f8ce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

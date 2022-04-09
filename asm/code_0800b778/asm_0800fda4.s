asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fda4 \n\
/* 0800fda4 */ PUSH {R4, LR} \n\
/* 0800fda6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800fda8 */ LSLS R1, R1, 0x10 \n\
/* 0800fdaa */ LSRS R1, R1, 0x10 \n\
/* 0800fdac */ LSLS R2, R2, 0x10 \n\
/* 0800fdae */ LSRS R2, R2, 0x10 \n\
/* 0800fdb0 */ LSLS R3, R3, 0x10 \n\
/* 0800fdb2 */ LSRS R3, R3, 0x10 \n\
/* 0800fdb4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800fdb6 */ BEQ branch_0800fdd0 \n\
/* 0800fdb8 */ STRH R1, [R4, 0xA] \n\
/* 0800fdba */ STRH R2, [R4, 0xC] \n\
/* 0800fdbc */ LDR R0, =D_03005380 \n\
/* 0800fdbe */ LDR R0, [R0] \n\
/* 0800fdc0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800fdc2 */ LDRSH R1, [R4, R2] \n\
/* 0800fdc4 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0800fdc6 */ BL func_0804d67c \n\
/* 0800fdca */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800fdcc */ BL func_0800f904 \n\
 \n\
branch_0800fdd0: \n\
/* 0800fdd0 */ POP {R4} \n\
/* 0800fdd2 */ POP {R0} \n\
/* 0800fdd4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

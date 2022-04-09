asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800feec \n\
/* 0800feec */ PUSH {LR} \n\
/* 0800feee */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800fef0 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800fef2 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800fef4 */ BEQ branch_0800ff0c \n\
/* 0800fef6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800fef8 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0800fefa */ LDRB R1, [R3, 0x12] \n\
/* 0800fefc */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800fefe */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ff00 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ff02 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800ff04 */ STRB R0, [R3, 0x12] \n\
/* 0800ff06 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800ff08 */ BL func_0800f904 \n\
 \n\
branch_0800ff0c: \n\
/* 0800ff0c */ POP {R0} \n\
/* 0800ff0e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

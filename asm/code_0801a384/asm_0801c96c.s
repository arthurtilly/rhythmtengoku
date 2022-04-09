asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c96c \n\
/* 0801c96c */ PUSH {LR} \n\
/* 0801c96e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801c970 */ LDR R0, =D_0300154c \n\
/* 0801c972 */ LDRB R0, [R0] \n\
/* 0801c974 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c976 */ BNE branch_0801c97a \n\
/* 0801c978 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0801c97a: \n\
/* 0801c97a */ LDR R1, =D_030053c0 \n\
/* 0801c97c */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 0801c97e */ LSLS R3, R3, 0x1 \n\
/* 0801c980 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0801c982 */ STRH R2, [R0] \n\
/* 0801c984 */ MOVS R0, 0xC9 @ Set R0 to 0xC9 \n\
/* 0801c986 */ LSLS R0, R0, 0x1 \n\
/* 0801c988 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801c98a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c98c */ STRH R0, [R1] \n\
/* 0801c98e */ POP {R0} \n\
/* 0801c990 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

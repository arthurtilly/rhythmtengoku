asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080092cc \n\
/* 080092cc */ PUSH {LR} \n\
/* 080092ce */ LDR R0, =D_03001110 \n\
/* 080092d0 */ BL func_0804e640 \n\
/* 080092d4 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080092d6 */ BL func_0804e690 \n\
/* 080092da */ MOVS R0, 0x96 @ Set R0 to 0x96 \n\
/* 080092dc */ LSLS R0, R0, 0x1 \n\
/* 080092de */ BL func_0804e6c4 \n\
/* 080092e2 */ LDR R1, =D_03004aec \n\
/* 080092e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080092e6 */ LDRSH R0, [R1, R2] \n\
/* 080092e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080092ea */ BNE branch_080092f0 \n\
/* 080092ec */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 080092ee */ STRH R0, [R1] \n\
 \n\
branch_080092f0: \n\
/* 080092f0 */ LDR R0, =D_0300119c \n\
/* 080092f2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080092f4 */ STRB R1, [R0] \n\
/* 080092f6 */ LDR R0, =D_0300119d \n\
/* 080092f8 */ STRB R1, [R0] \n\
/* 080092fa */ LDR R1, =D_030064d4 \n\
/* 080092fc */ LDR R0, =func_080093c0 \n\
/* 080092fe */ STR R0, [R1] \n\
/* 08009300 */ POP {R0} \n\
/* 08009302 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

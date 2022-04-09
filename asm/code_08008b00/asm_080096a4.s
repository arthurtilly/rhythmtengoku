asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080096a4 \n\
/* 080096a4 */ PUSH {LR} \n\
/* 080096a6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080096a8 */ LDR R0, =D_03001200 \n\
/* 080096aa */ LDRB R0, [R0] \n\
/* 080096ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080096ae */ BNE branch_080096b2 \n\
/* 080096b0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_080096b2: \n\
/* 080096b2 */ LDR R2, =D_0300120c \n\
/* 080096b4 */ LDRH R1, [R2] \n\
/* 080096b6 */ LDR R0, =0xfff7 \n\
/* 080096b8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080096ba */ STRH R0, [R2] \n\
/* 080096bc */ LSLS R0, R3, 0x3 \n\
/* 080096be */ LDRH R1, [R2] \n\
/* 080096c0 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080096c2 */ STRH R0, [R2] \n\
/* 080096c4 */ LDR R1, =D_080000c4 \n\
/* 080096c6 */ LDRH R0, [R2] \n\
/* 080096c8 */ STRH R0, [R1] \n\
/* 080096ca */ POP {R0} \n\
/* 080096cc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

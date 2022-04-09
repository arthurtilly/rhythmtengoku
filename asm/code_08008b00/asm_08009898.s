asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009898 \n\
/* 08009898 */ PUSH {LR} \n\
/* 0800989a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800989c */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800989e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080098a0 */ BLT branch_080098bc \n\
/* 080098a2 */ LDR R1, =D_089380ac \n\
/* 080098a4 */ LSLS R0, R2, 0x1 \n\
/* 080098a6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080098a8 */ LSLS R0, R0, 0x2 \n\
/* 080098aa */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 080098ac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080098ae */ LDR R0, [R0] \n\
/* 080098b0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080098b2 */ LDRB R0, [R0] \n\
/* 080098b4 */ B branch_080098be \n\
\n\
.ltorg \n\
 \n\
branch_080098bc: \n\
/* 080098bc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080098be: \n\
/* 080098be */ POP {R1} \n\
/* 080098c0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

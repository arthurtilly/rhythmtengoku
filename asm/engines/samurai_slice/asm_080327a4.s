asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080327a4 \n\
/* 080327a4 */ PUSH {R4, R5, LR} \n\
/* 080327a6 */ LDR R0, =gCurrentEngineData \n\
/* 080327a8 */ LDR R0, [R0] \n\
/* 080327aa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080327ac */ ADDS R4, 0x90 @ Add 0x90 to R4 \n\
/* 080327ae */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_080327b0: \n\
/* 080327b0 */ LDRB R0, [R4, 0x1C] \n\
/* 080327b2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080327b4 */ BNE branch_080327bc \n\
/* 080327b6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080327b8 */ BL func_08032708 \n\
 \n\
branch_080327bc: \n\
/* 080327bc */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 080327be */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 080327c0 */ LSLS R0, R0, 0x18 \n\
/* 080327c2 */ LSRS R5, R0, 0x18 \n\
/* 080327c4 */ CMP R5, 0x9 @ Compare R5 and 0x9 \n\
/* 080327c6 */ BLS branch_080327b0 \n\
/* 080327c8 */ POP {R4, R5} \n\
/* 080327ca */ POP {R0} \n\
/* 080327cc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

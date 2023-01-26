asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080108a0 \n\
/* 080108a0 */ PUSH {LR} \n\
/* 080108a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080108a4 */ BLT branch_080108c2 \n\
/* 080108a6 */ BL func_080107dc \n\
/* 080108aa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080108ac */ LDRB R0, [R1, 0x2] \n\
/* 080108ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080108b0 */ BNE branch_080108c2 \n\
/* 080108b2 */ LDRB R0, [R1, 0x1] \n\
/* 080108b4 */ CMP R0, 0xFE @ Compare R0 and 0xFE \n\
/* 080108b6 */ BHI branch_080108bc \n\
/* 080108b8 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080108ba */ STRB R0, [R1, 0x1] \n\
 \n\
branch_080108bc: \n\
/* 080108bc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080108be */ BL func_080107a8 \n\
 \n\
branch_080108c2: \n\
/* 080108c2 */ POP {R0} \n\
/* 080108c4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

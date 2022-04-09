asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019878 \n\
/* 08019878 */ PUSH {LR} \n\
/* 0801987a */ LDR R0, =D_089d7980 \n\
/* 0801987c */ LDR R0, [R0] \n\
/* 0801987e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019880 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 08019882 */ LDRH R0, [R1, 0x10] \n\
/* 08019884 */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 08019886 */ BHI branch_080198a4 \n\
/* 08019888 */ LDRH R0, [R1, 0xA] \n\
/* 0801988a */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0801988c */ BHI branch_08019898 \n\
/* 0801988e */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08019890 */ B branch_080198aa \n\
\n\
.ltorg \n\
 \n\
branch_08019898: \n\
/* 08019898 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0801989a */ BHI branch_080198a0 \n\
/* 0801989c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801989e */ B branch_080198aa \n\
 \n\
branch_080198a0: \n\
/* 080198a0 */ CMP R0, 0x7 @ Compare R0 and 0x7 \n\
/* 080198a2 */ BLS branch_080198a8 \n\
 \n\
branch_080198a4: \n\
/* 080198a4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080198a6 */ B branch_080198aa \n\
 \n\
branch_080198a8: \n\
/* 080198a8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080198aa: \n\
/* 080198aa */ POP {R1} \n\
/* 080198ac */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

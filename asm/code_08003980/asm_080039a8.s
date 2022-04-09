asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080039a8 \n\
/* 080039a8 */ PUSH {LR} \n\
/* 080039aa */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080039ac */ B branch_080039be \n\
 \n\
branch_080039ae: \n\
/* 080039ae */ STR R0, [R3] \n\
/* 080039b0 */ LDRB R0, [R1, 0x4] \n\
/* 080039b2 */ STRB R0, [R3, 0x4] \n\
/* 080039b4 */ LDRB R0, [R1, 0x5] \n\
/* 080039b6 */ STRB R0, [R3, 0x5] \n\
/* 080039b8 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 080039ba */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 080039bc */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
 \n\
branch_080039be: \n\
/* 080039be */ LDR R0, [R1] \n\
/* 080039c0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080039c2 */ BEQ branch_080039c8 \n\
/* 080039c4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080039c6 */ BNE branch_080039ae \n\
 \n\
branch_080039c8: \n\
/* 080039c8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080039ca */ STR R0, [R3] \n\
/* 080039cc */ STRB R0, [R3, 0x5] \n\
/* 080039ce */ STRB R0, [R3, 0x4] \n\
/* 080039d0 */ POP {R0} \n\
/* 080039d2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

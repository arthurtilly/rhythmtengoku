asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080197a4 \n\
/* 080197a4 */ PUSH {LR} \n\
/* 080197a6 */ LDR R0, =D_089d7980 \n\
/* 080197a8 */ LDR R0, [R0] \n\
/* 080197aa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080197ac */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 080197ae */ LDRH R0, [R1, 0x10] \n\
/* 080197b0 */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 080197b2 */ BHI branch_080197e0 \n\
/* 080197b4 */ LDRH R0, [R1, 0x2] \n\
/* 080197b6 */ LSLS R0, R0, 0x8 \n\
/* 080197b8 */ LDRH R1, [R1] \n\
/* 080197ba */ BL Div \n\
/* 080197be */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 080197c0 */ BLS branch_080197cc \n\
/* 080197c2 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080197c4 */ B branch_080197e6 \n\
\n\
.ltorg \n\
 \n\
branch_080197cc: \n\
/* 080197cc */ CMP R0, 0xF4 @ Compare R0 and 0xF4 \n\
/* 080197ce */ BLS branch_080197d4 \n\
/* 080197d0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080197d2 */ B branch_080197e6 \n\
 \n\
branch_080197d4: \n\
/* 080197d4 */ CMP R0, 0xE5 @ Compare R0 and 0xE5 \n\
/* 080197d6 */ BLS branch_080197dc \n\
/* 080197d8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080197da */ B branch_080197e6 \n\
 \n\
branch_080197dc: \n\
/* 080197dc */ CMP R0, 0xC7 @ Compare R0 and 0xC7 \n\
/* 080197de */ BHI branch_080197e4 \n\
 \n\
branch_080197e0: \n\
/* 080197e0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080197e2 */ B branch_080197e6 \n\
 \n\
branch_080197e4: \n\
/* 080197e4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080197e6: \n\
/* 080197e6 */ POP {R1} \n\
/* 080197e8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

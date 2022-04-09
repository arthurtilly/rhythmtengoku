asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080198b0 \n\
/* 080198b0 */ PUSH {LR} \n\
/* 080198b2 */ LDR R0, =D_089d7980 \n\
/* 080198b4 */ LDR R0, [R0] \n\
/* 080198b6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080198b8 */ ADDS R1, 0x38 @ Add 0x38 to R1 \n\
/* 080198ba */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 080198bc */ LDRH R0, [R0, 0x10] \n\
/* 080198be */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 080198c0 */ BHI branch_080198dc \n\
/* 080198c2 */ LDRH R0, [R1, 0xA] \n\
/* 080198c4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080198c6 */ BNE branch_080198d0 \n\
/* 080198c8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080198ca */ B branch_080198e2 \n\
\n\
.ltorg \n\
 \n\
branch_080198d0: \n\
/* 080198d0 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080198d2 */ BHI branch_080198d8 \n\
/* 080198d4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080198d6 */ B branch_080198e2 \n\
 \n\
branch_080198d8: \n\
/* 080198d8 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080198da */ BLS branch_080198e0 \n\
 \n\
branch_080198dc: \n\
/* 080198dc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080198de */ B branch_080198e2 \n\
 \n\
branch_080198e0: \n\
/* 080198e0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080198e2: \n\
/* 080198e2 */ POP {R1} \n\
/* 080198e4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

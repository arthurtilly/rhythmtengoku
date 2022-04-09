asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080178ac \n\
/* 080178ac */ PUSH {R4, LR} \n\
/* 080178ae */ LDR R0, =D_030046a4 \n\
/* 080178b0 */ LDR R0, [R0] \n\
/* 080178b2 */ LDR R0, [R0, 0x18] \n\
/* 080178b4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080178b6 */ BEQ branch_080178c4 \n\
 \n\
branch_080178b8: \n\
/* 080178b8 */ LDR R4, [R0, 0x4] \n\
/* 080178ba */ BL func_08017b44 \n\
/* 080178be */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080178c0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080178c2 */ BNE branch_080178b8 \n\
 \n\
branch_080178c4: \n\
/* 080178c4 */ LDR R0, =D_030046a4 \n\
/* 080178c6 */ LDR R0, [R0] \n\
/* 080178c8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080178ca */ STR R1, [R0, 0x18] \n\
/* 080178cc */ STR R1, [R0, 0x68] \n\
/* 080178ce */ STR R1, [R0, 0x6C] \n\
/* 080178d0 */ STR R1, [R0, 0x70] \n\
/* 080178d2 */ STR R1, [R0, 0x74] \n\
/* 080178d4 */ ADDS R0, 0x86 @ Add 0x86 to R0 \n\
/* 080178d6 */ STRH R1, [R0] \n\
/* 080178d8 */ POP {R4} \n\
/* 080178da */ POP {R0} \n\
/* 080178dc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

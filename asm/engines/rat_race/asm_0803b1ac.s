asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803b1ac \n\
/* 0803b1ac */ PUSH {R4, R5, LR} \n\
/* 0803b1ae */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803b1b0 */ BL func_0800c398 \n\
/* 0803b1b4 */ LSLS R0, R0, 0x6 \n\
/* 0803b1b6 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0803b1b8 */ BL __udivsi3 \n\
/* 0803b1bc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803b1be */ LDR R0, =gCurrentEngineData \n\
/* 0803b1c0 */ LDR R1, [R0] \n\
/* 0803b1c2 */ LDR R0, [R1, 0x28] \n\
/* 0803b1c4 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0803b1c6 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 0803b1c8 */ LDR R0, [R1, 0x18] \n\
/* 0803b1ca */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803b1cc */ BLT branch_0803b1d2 \n\
/* 0803b1ce */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803b1d0 */ BLE branch_0803b1dc \n\
 \n\
branch_0803b1d2: \n\
/* 0803b1d2 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0803b1d4 */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 0803b1d6 */ BL __divsi3 \n\
/* 0803b1da */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
 \n\
branch_0803b1dc: \n\
/* 0803b1dc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803b1de */ POP {R4, R5} \n\
/* 0803b1e0 */ POP {R1} \n\
/* 0803b1e2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

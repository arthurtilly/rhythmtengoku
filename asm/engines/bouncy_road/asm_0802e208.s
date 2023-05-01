asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e208 \n\
/* 0802e208 */ PUSH {R4-R6, LR} \n\
/* 0802e20a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802e20c */ LDR R6, =gCurrentEngineData \n\
/* 0802e20e */ MOVS R4, 0x40 @ Set R4 to 0x40 \n\
 \n\
branch_0802e210: \n\
/* 0802e210 */ LDR R0, [R6] \n\
/* 0802e212 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 0802e214 */ LDRB R0, [R1, 0x4] \n\
/* 0802e216 */ LSLS R0, R0, 0x1F \n\
/* 0802e218 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e21a */ BEQ branch_0802e222 \n\
/* 0802e21c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802e21e */ BL func_0802e078 \n\
 \n\
branch_0802e222: \n\
/* 0802e222 */ ADDS R4, 0x28 @ Add 0x28 to R4 \n\
/* 0802e224 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0802e226 */ CMP R5, 0x9 @ Compare R5 and 0x9 \n\
/* 0802e228 */ BLS branch_0802e210 \n\
/* 0802e22a */ POP {R4-R6} \n\
/* 0802e22c */ POP {R0} \n\
/* 0802e22e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

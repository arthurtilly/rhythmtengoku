asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019278 \n\
/* 08019278 */ PUSH {R4-R6, LR} \n\
/* 0801927a */ LDR R2, =D_089d7980 \n\
/* 0801927c */ LDR R1, [R2] \n\
/* 0801927e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019280 */ STR R0, [R1, 0x78] \n\
/* 08019282 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08019284 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08019286 */ MOVS R4, 0x7C @ Set R4 to 0x7C \n\
 \n\
branch_08019288: \n\
/* 08019288 */ LDR R0, [R6] \n\
/* 0801928a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801928c */ BL func_08019268 \n\
/* 08019290 */ ADDS R4, 0x18 @ Add 0x18 to R4 \n\
/* 08019292 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08019294 */ CMP R5, 0xF @ Compare R5 and 0xF \n\
/* 08019296 */ BLS branch_08019288 \n\
/* 08019298 */ POP {R4-R6} \n\
/* 0801929a */ POP {R0} \n\
/* 0801929c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

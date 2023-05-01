asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022244 \n\
/* 08022244 */ PUSH {R4, LR} \n\
/* 08022246 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022248 */ LDR R4, =gCurrentEngineData \n\
/* 0802224a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802224c */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
 \n\
branch_0802224e: \n\
/* 0802224e */ LDR R0, [R4] \n\
/* 08022250 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08022252 */ STRB R3, [R0] \n\
/* 08022254 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08022256 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08022258 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 0802225a */ BLS branch_0802224e \n\
/* 0802225c */ POP {R4} \n\
/* 0802225e */ POP {R0} \n\
/* 08022260 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

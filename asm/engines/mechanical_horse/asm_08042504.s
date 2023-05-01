asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042504 \n\
/* 08042504 */ PUSH {LR} \n\
/* 08042506 */ LDR R0, =gCurrentEngineData \n\
/* 08042508 */ LDR R1, [R0] \n\
/* 0804250a */ LDR R0, =0x2ee \n\
/* 0804250c */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0804250e */ LDRH R0, [R2] \n\
/* 08042510 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042512 */ BEQ branch_08042538 \n\
/* 08042514 */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 08042516 */ LSLS R3, R3, 0x2 \n\
/* 08042518 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0804251a */ LDRH R0, [R0] \n\
/* 0804251c */ LDR R1, =0xffffff00 \n\
/* 0804251e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042520 */ LSRS R1, R0, 0x1F \n\
/* 08042522 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042524 */ ASRS R0, R0, 0x1 \n\
/* 08042526 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08042528 */ LSLS R3, R3, 0x1 \n\
/* 0804252a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804252c */ LDRH R1, [R2] \n\
/* 0804252e */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08042530 */ LSLS R0, R0, 0x8 \n\
/* 08042532 */ LSRS R0, R0, 0x10 \n\
/* 08042534 */ BL set_beatscript_tempo \n\
 \n\
branch_08042538: \n\
/* 08042538 */ POP {R0} \n\
/* 0804253a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

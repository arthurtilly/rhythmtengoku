asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e420 \n\
/* 0803e420 */ LDR R1, =gCurrentEngineData \n\
/* 0803e422 */ LDR R3, [R1] \n\
/* 0803e424 */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 0803e426 */ LSLS R1, R1, 0x2 \n\
/* 0803e428 */ ADDS R2, R3, R1 @ Set R2 to R3 + R1 \n\
/* 0803e42a */ LDR R1, [R2] \n\
/* 0803e42c */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0803e42e */ ASRS R1, R1, 0x8 \n\
/* 0803e430 */ STR R1, [R2] \n\
/* 0803e432 */ MOVS R1, 0xE1 @ Set R1 to 0xE1 \n\
/* 0803e434 */ LSLS R1, R1, 0x2 \n\
/* 0803e436 */ ADDS R2, R3, R1 @ Set R2 to R3 + R1 \n\
/* 0803e438 */ LDR R1, [R2] \n\
/* 0803e43a */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0803e43c */ ASRS R0, R0, 0x8 \n\
/* 0803e43e */ STR R0, [R2] \n\
/* 0803e440 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

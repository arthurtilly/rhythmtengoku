asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802cfc8 \n\
/* 0802cfc8 */ LDR R1, =gCurrentEngineData \n\
/* 0802cfca */ LDR R2, [R1] \n\
/* 0802cfcc */ LSLS R1, R0, 0x2 \n\
/* 0802cfce */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802cfd0 */ LSLS R1, R1, 0x3 \n\
/* 0802cfd2 */ ADDS R2, 0x3C @ Add 0x3C to R2 \n\
/* 0802cfd4 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0802cfd6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802cfd8 */ STR R0, [R2] \n\
/* 0802cfda */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

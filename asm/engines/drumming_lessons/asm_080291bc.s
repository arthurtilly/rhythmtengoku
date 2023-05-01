asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080291bc \n\
/* 080291bc */ PUSH {R4, LR} \n\
/* 080291be */ LDR R0, =gCurrentEngineData \n\
/* 080291c0 */ LDR R1, [R0] \n\
/* 080291c2 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080291c4 */ LSLS R0, R0, 0x2 \n\
/* 080291c6 */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 080291c8 */ LDRH R2, [R3] \n\
/* 080291ca */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 080291cc */ LSLS R4, R4, 0x1 \n\
/* 080291ce */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080291d0 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 080291d2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080291d4 */ STRH R0, [R3] \n\
/* 080291d6 */ LDR R2, =0x000003fe \n\
/* 080291d8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080291da */ STRH R4, [R0] \n\
/* 080291dc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080291de */ LSLS R0, R0, 0x3 \n\
/* 080291e0 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 080291e2 */ LDR R0, =0x0000ff70 \n\
/* 080291e4 */ STRH R0, [R2] \n\
/* 080291e6 */ LDR R2, =0x00000402 \n\
/* 080291e8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080291ea */ STRH R4, [R1] \n\
/* 080291ec */ POP {R4} \n\
/* 080291ee */ POP {R0} \n\
/* 080291f0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

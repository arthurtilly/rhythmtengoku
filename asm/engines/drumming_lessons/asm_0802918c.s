asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802918c \n\
/* 0802918c */ PUSH {R4, LR} \n\
/* 0802918e */ LDR R2, =gCurrentEngineData \n\
/* 08029190 */ LDR R3, [R2] \n\
/* 08029192 */ LDR R2, =0x00000402 \n\
/* 08029194 */ ADDS R4, R3, R2 @ Set R4 to R3 + R2 \n\
/* 08029196 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08029198 */ STRH R2, [R4] \n\
/* 0802919a */ LDR R4, =0x00000404 \n\
/* 0802919c */ ADDS R2, R3, R4 @ Set R2 to R3 + R4 \n\
/* 0802919e */ STR R0, [R2] \n\
/* 080291a0 */ MOVS R0, 0x81 @ Set R0 to 0x81 \n\
/* 080291a2 */ LSLS R0, R0, 0x3 \n\
/* 080291a4 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080291a6 */ STRB R1, [R3] \n\
/* 080291a8 */ POP {R4} \n\
/* 080291aa */ POP {R0} \n\
/* 080291ac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

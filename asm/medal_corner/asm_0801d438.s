asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d438 \n\
/* 0801d438 */ PUSH {R4, LR} \n\
/* 0801d43a */ LDR R4, =gCurrentSceneData \n\
/* 0801d43c */ LDR R0, [R4] \n\
/* 0801d43e */ LDR R0, [R0, 0x4] \n\
/* 0801d440 */ BL func_0800b118 \n\
/* 0801d444 */ LDR R2, =D_03001550 \n\
/* 0801d446 */ LDR R1, [R4] \n\
/* 0801d448 */ LDRB R1, [R1, 0x18] \n\
/* 0801d44a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801d44c */ STRB R0, [R1] \n\
/* 0801d44e */ LDR R0, [R4] \n\
/* 0801d450 */ LDR R0, [R0, 0x4] \n\
/* 0801d452 */ BL func_0800b12c \n\
/* 0801d456 */ LDR R2, =D_03001554 \n\
/* 0801d458 */ LDR R1, [R4] \n\
/* 0801d45a */ LDRB R1, [R1, 0x18] \n\
/* 0801d45c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801d45e */ STRB R0, [R1] \n\
/* 0801d460 */ POP {R4} \n\
/* 0801d462 */ POP {R0} \n\
/* 0801d464 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

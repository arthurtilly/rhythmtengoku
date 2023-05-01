asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080223ac \n\
/* 080223ac */ PUSH {R4-R6, LR} \n\
/* 080223ae */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080223b0 */ LDR R6, =gCurrentEngineData \n\
/* 080223b2 */ MOVS R4, 0x90 @ Set R4 to 0x90 \n\
 \n\
branch_080223b4: \n\
/* 080223b4 */ LDR R0, [R6] \n\
/* 080223b6 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080223b8 */ BL func_08022268 \n\
/* 080223bc */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 080223be */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080223c0 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 080223c2 */ BLS branch_080223b4 \n\
/* 080223c4 */ POP {R4-R6} \n\
/* 080223c6 */ POP {R0} \n\
/* 080223c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027728 \n\
/* 08027728 */ LDR R1, =gCurrentEngineData \n\
/* 0802772a */ LDR R2, [R1] \n\
/* 0802772c */ NEGS R1, R0 @ Set R1 to -R0 \n\
/* 0802772e */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08027730 */ LSRS R1, R1, 0x1F \n\
/* 08027732 */ LDR R0, =0x000003cd \n\
/* 08027734 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08027736 */ STRB R1, [R2] \n\
/* 08027738 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

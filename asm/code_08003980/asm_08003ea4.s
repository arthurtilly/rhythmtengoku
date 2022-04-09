asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003ea4 \n\
/* 08003ea4 */ PUSH {LR} \n\
/* 08003ea6 */ LDR R0, =D_03004af0 \n\
/* 08003ea8 */ LDR R1, [R0] \n\
/* 08003eaa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08003eac */ BL _call_via_r1 \n\
/* 08003eb0 */ POP {R1} \n\
/* 08003eb2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

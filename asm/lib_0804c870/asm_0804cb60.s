asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804cb60 \n\
/* 0804cb60 */ PUSH {R4, R5, LR} \n\
/* 0804cb62 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804cb64 */ LDR R4, =D_03004430 \n\
/* 0804cb66 */ LDR R0, [R5, 0x8] \n\
/* 0804cb68 */ LDR R1, [R4] \n\
/* 0804cb6a */ BL _call_via_r1 \n\
/* 0804cb6e */ LDR R1, [R4] \n\
/* 0804cb70 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804cb72 */ BL _call_via_r1 \n\
/* 0804cb76 */ POP {R4, R5} \n\
/* 0804cb78 */ POP {R0} \n\
/* 0804cb7a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036604 \n\
/* 08036604 */ PUSH {LR} \n\
/* 08036606 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08036608 */ LDR R1, [R2, 0x30] \n\
/* 0803660a */ LSLS R0, R1, 0x1 \n\
/* 0803660c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803660e */ LSLS R0, R0, 0x7 \n\
/* 08036610 */ LDR R1, [R2, 0x34] \n\
/* 08036612 */ BL __divsi3 \n\
/* 08036616 */ SUBS R0, 0x80 @ Subtract 0x80 from R0 \n\
/* 08036618 */ POP {R1} \n\
/* 0803661a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

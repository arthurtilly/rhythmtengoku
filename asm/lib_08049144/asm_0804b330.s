asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b330 \n\
/* 0804b330 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804b332 */ LDRB R0, [R2] \n\
/* 0804b334 */ LSLS R0, R0, 0x18 \n\
/* 0804b336 */ LDRB R1, [R2, 0x1] \n\
/* 0804b338 */ LSLS R1, R1, 0x10 \n\
/* 0804b33a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b33c */ LDRB R1, [R2, 0x2] \n\
/* 0804b33e */ LSLS R1, R1, 0x8 \n\
/* 0804b340 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b342 */ LDRB R1, [R2, 0x3] \n\
/* 0804b344 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b346 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");

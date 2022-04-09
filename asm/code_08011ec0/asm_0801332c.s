asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801332c \n\
/* 0801332c */ PUSH {R4, LR} \n\
/* 0801332e */ LSLS R4, R0, 0x2 \n\
/* 08013330 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08013332 */ LSLS R4, R4, 0x3 \n\
/* 08013334 */ SUBS R4, 0x27 @ Subtract 0x27 from R4 \n\
/* 08013336 */ STRH R4, [R2] \n\
/* 08013338 */ LSLS R0, R1, 0x1 \n\
/* 0801333a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801333c */ LSLS R0, R0, 0x3 \n\
/* 0801333e */ SUBS R0, 0x24 @ Subtract 0x24 from R0 \n\
/* 08013340 */ STRH R0, [R3] \n\
/* 08013342 */ POP {R4} \n\
/* 08013344 */ POP {R0} \n\
/* 08013346 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

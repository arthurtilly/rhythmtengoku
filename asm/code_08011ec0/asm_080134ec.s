asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080134ec \n\
/* 080134ec */ PUSH {R4, LR} \n\
/* 080134ee */ LDR R4, =D_030046a4 \n\
/* 080134f0 */ LDR R0, [R4] \n\
/* 080134f2 */ ADDS R0, 0x1C @ Add 0x1C to R0 \n\
/* 080134f4 */ BL func_080133cc \n\
/* 080134f8 */ LDR R0, [R4] \n\
/* 080134fa */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 080134fc */ BL func_080133cc \n\
/* 08013500 */ POP {R4} \n\
/* 08013502 */ POP {R0} \n\
/* 08013504 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

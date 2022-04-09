asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080271a8 \n\
/* 080271a8 */ PUSH {LR} \n\
/* 080271aa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080271ac */ LSLS R1, R1, 0x10 \n\
/* 080271ae */ LSRS R1, R1, 0x10 \n\
/* 080271b0 */ LDR R2, =D_089e16f0 \n\
/* 080271b2 */ LDR R0, =D_030055d0 \n\
/* 080271b4 */ LDR R0, [R0] \n\
/* 080271b6 */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 080271b8 */ LSLS R3, R3, 0x2 \n\
/* 080271ba */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080271bc */ LDRB R0, [R0] \n\
/* 080271be */ LSLS R0, R0, 0x2 \n\
/* 080271c0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080271c2 */ LDR R0, [R0] \n\
/* 080271c4 */ BL func_0802ad20 \n\
/* 080271c8 */ POP {R0} \n\
/* 080271ca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

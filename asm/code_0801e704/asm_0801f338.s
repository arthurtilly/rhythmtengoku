asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f338 \n\
/* 0801f338 */ PUSH {LR} \n\
/* 0801f33a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f33c */ BL func_0800c604 \n\
/* 0801f340 */ BL func_0800c3b8 \n\
/* 0801f344 */ LSLS R0, R0, 0x10 \n\
/* 0801f346 */ LSRS R0, R0, 0x10 \n\
/* 0801f348 */ LDR R2, =D_089de7a4 \n\
/* 0801f34a */ LDR R1, =D_030055d0 \n\
/* 0801f34c */ LDR R1, [R1] \n\
/* 0801f34e */ LDRB R1, [R1, 0x4] \n\
/* 0801f350 */ LSLS R1, R1, 0x2 \n\
/* 0801f352 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801f354 */ LDR R1, [R1] \n\
/* 0801f356 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801f358 */ LSLS R2, R2, 0x6 \n\
/* 0801f35a */ BL func_08002ee0 \n\
/* 0801f35e */ LDR R1, =(func_0801f328 + 1) \n\
/* 0801f360 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f362 */ BL func_08005d38 \n\
/* 0801f366 */ POP {R0} \n\
/* 0801f368 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

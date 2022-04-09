asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ee44 \n\
/* 0802ee44 */ PUSH {R4, R5, LR} \n\
/* 0802ee46 */ LDR R5, =D_030055d0 \n\
/* 0802ee48 */ LDR R0, [R5] \n\
/* 0802ee4a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802ee4c */ STR R4, [R0, 0x18] \n\
/* 0802ee4e */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 0802ee50 */ BL func_0800c3a4 \n\
/* 0802ee54 */ LDR R1, [R5] \n\
/* 0802ee56 */ STR R0, [R1, 0x1C] \n\
/* 0802ee58 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802ee5a */ ADDS R0, 0x88 @ Add 0x88 to R0 \n\
/* 0802ee5c */ STRH R4, [R0] \n\
/* 0802ee5e */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 0802ee60 */ STRH R4, [R1] \n\
/* 0802ee62 */ POP {R4, R5} \n\
/* 0802ee64 */ POP {R0} \n\
/* 0802ee66 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

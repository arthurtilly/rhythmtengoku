asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802100c \n\
/* 0802100c */ PUSH {R4, LR} \n\
/* 0802100e */ LDR R4, =D_030055d0 \n\
/* 08021010 */ LDR R1, [R4] \n\
/* 08021012 */ MOVS R0, 0x86 @ Set R0 to 0x86 \n\
/* 08021014 */ LSLS R0, R0, 0x4 \n\
/* 08021016 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08021018 */ LDRH R0, [R1] \n\
/* 0802101a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802101c */ STRH R0, [R1] \n\
/* 0802101e */ BL func_0800bc40 \n\
/* 08021022 */ LDR R0, [R4] \n\
/* 08021024 */ ADDS R0, 0x42 @ Add 0x42 to R0 \n\
/* 08021026 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08021028 */ STRB R1, [R0] \n\
/* 0802102a */ POP {R4} \n\
/* 0802102c */ POP {R0} \n\
/* 0802102e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

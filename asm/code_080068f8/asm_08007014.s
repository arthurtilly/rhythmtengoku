asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007014 \n\
/* 08007014 */ PUSH {LR} \n\
/* 08007016 */ SUB SP, 0x4 \n\
/* 08007018 */ LSLS R0, R0, 0x10 \n\
/* 0800701a */ LSRS R3, R0, 0x10 \n\
/* 0800701c */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 0800701e */ LDR R1, =D_03004b64 \n\
/* 08007020 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08007022 */ LSLS R2, R2, 0x3 \n\
/* 08007024 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08007026 */ LSLS R0, R0, 0x1 \n\
/* 08007028 */ STR R0, [SP] \n\
/* 0800702a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800702c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0800702e */ BL func_080018e0 \n\
/* 08007032 */ ADD SP, 0x4 \n\
/* 08007034 */ POP {R0} \n\
/* 08007036 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

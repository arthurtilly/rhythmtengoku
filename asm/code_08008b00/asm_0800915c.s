asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800915c \n\
/* 0800915c */ LDR R2, =0x04000200 @ !Hardware REG_IE \n\
/* 0800915e */ LDRH R0, [R2] \n\
/* 08009160 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08009162 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08009164 */ STRH R0, [R2] \n\
/* 08009166 */ LDR R2, =0x04000004 @ !Hardware REG_DISPSTAT \n\
/* 08009168 */ LDRH R0, [R2] \n\
/* 0800916a */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0800916c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800916e */ STRH R0, [R2] \n\
/* 08009170 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

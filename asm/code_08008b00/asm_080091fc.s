asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080091fc \n\
/* 080091fc */ LDR R2, =0x04000200 @ !Hardware REG_IE \n\
/* 080091fe */ LDRH R0, [R2] \n\
/* 08009200 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08009202 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08009204 */ STRH R0, [R2] \n\
/* 08009206 */ LDR R2, =0x04000004 @ !Hardware REG_DISPSTAT \n\
/* 08009208 */ LDRH R0, [R2] \n\
/* 0800920a */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 0800920c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800920e */ STRH R0, [R2] \n\
/* 08009210 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

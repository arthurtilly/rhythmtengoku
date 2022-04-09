asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080091d8 \n\
/* 080091d8 */ LDR R0, =D_03001104 \n\
/* 080091da */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080091dc */ STR R1, [R0] \n\
/* 080091de */ LDR R0, =D_03001108 \n\
/* 080091e0 */ STR R1, [R0] \n\
/* 080091e2 */ LDR R2, =0x04000004 @ !Hardware REG_DISPSTAT \n\
/* 080091e4 */ LDRH R1, [R2] \n\
/* 080091e6 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080091e8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080091ea */ STRH R0, [R2] \n\
/* 080091ec */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

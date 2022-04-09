asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800928c \n\
/* 0800928c */ PUSH {LR} \n\
/* 0800928e */ LDR R3, =D_03001108 \n\
/* 08009290 */ STR R1, [R3] \n\
/* 08009292 */ LDR R3, =D_0300110c \n\
/* 08009294 */ STR R2, [R3] \n\
/* 08009296 */ LDR R2, =D_03001104 \n\
/* 08009298 */ SUBS R3, R0, 0x1 @ Set R3 to R0 - 0x1 \n\
/* 0800929a */ STR R3, [R2] \n\
/* 0800929c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800929e */ BEQ branch_080092c4 \n\
/* 080092a0 */ LDR R2, =0x04000004 @ !Hardware REG_DISPSTAT \n\
/* 080092a2 */ LDRH R1, [R2] \n\
/* 080092a4 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080092a6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080092a8 */ LSLS R1, R3, 0x8 \n\
/* 080092aa */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080092ac */ STRH R0, [R2] \n\
/* 080092ae */ BL func_080091fc \n\
/* 080092b2 */ B branch_080092c8 \n\
\n\
.ltorg \n\
 \n\
branch_080092c4: \n\
/* 080092c4 */ BL func_0800921c \n\
 \n\
branch_080092c8: \n\
/* 080092c8 */ POP {R0} \n\
/* 080092ca */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

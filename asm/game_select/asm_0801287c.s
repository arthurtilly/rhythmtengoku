asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801287c \n\
/* 0801287c */ PUSH {R4, LR} \n\
/* 0801287e */ LDR R4, =D_030046a8 \n\
/* 08012880 */ LDR R0, [R4] \n\
/* 08012882 */ LDR R1, =0x276 \n\
/* 08012884 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012886 */ LDRB R0, [R0] \n\
/* 08012888 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801288a */ BNE branch_080128a8 \n\
/* 0801288c */ MOVS R0, 0x29 @ Set R0 to 0x29 \n\
/* 0801288e */ BL func_0801314c \n\
/* 08012892 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08012894 */ BLE branch_080128a8 \n\
/* 08012896 */ LDR R0, [R4] \n\
/* 08012898 */ MOVS R2, 0x9E @ Set R2 to 0x9E \n\
/* 0801289a */ LSLS R2, R2, 0x2 \n\
/* 0801289c */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0801289e */ LDRB R0, [R1] \n\
/* 080128a0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080128a2 */ BEQ branch_080128a8 \n\
/* 080128a4 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080128a6 */ STRB R0, [R1] \n\
 \n\
branch_080128a8: \n\
/* 080128a8 */ POP {R4} \n\
/* 080128aa */ POP {R0} \n\
/* 080128ac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

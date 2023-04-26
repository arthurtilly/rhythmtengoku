asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037280 \n\
/* 08037280 */ PUSH {LR} \n\
/* 08037282 */ LDR R2, =gCurrentEngineData \n\
/* 08037284 */ LDR R1, [R2] \n\
/* 08037286 */ LDRB R0, [R1] \n\
/* 08037288 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803728a */ BNE branch_080372b8 \n\
/* 0803728c */ ADDS R1, 0x4A @ Add 0x4A to R1 \n\
/* 0803728e */ LDRH R0, [R1] \n\
/* 08037290 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08037292 */ STRH R0, [R1] \n\
/* 08037294 */ LSLS R0, R0, 0x10 \n\
/* 08037296 */ LSRS R0, R0, 0x10 \n\
/* 08037298 */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 0803729a */ BLS branch_080372a0 \n\
/* 0803729c */ MOVS R0, 0x63 @ Set R0 to 0x63 \n\
/* 0803729e */ STRH R0, [R1] \n\
 \n\
branch_080372a0: \n\
/* 080372a0 */ LDR R0, [R2] \n\
/* 080372a2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080372a4 */ ADDS R1, 0x4A @ Add 0x4A to R1 \n\
/* 080372a6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080372a8 */ ADDS R2, 0x4C @ Add 0x4C to R2 \n\
/* 080372aa */ LDRH R0, [R1] \n\
/* 080372ac */ LDRH R1, [R2] \n\
/* 080372ae */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080372b0 */ BLS branch_080372b4 \n\
/* 080372b2 */ STRH R0, [R2] \n\
 \n\
branch_080372b4: \n\
/* 080372b4 */ BL func_0803709c \n\
 \n\
branch_080372b8: \n\
/* 080372b8 */ POP {R0} \n\
/* 080372ba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

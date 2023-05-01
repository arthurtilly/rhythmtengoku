asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026a0c \n\
/* 08026a0c */ PUSH {LR} \n\
/* 08026a0e */ LDR R0, =gCurrentEngineData \n\
/* 08026a10 */ LDR R1, [R0] \n\
/* 08026a12 */ LDR R2, =0x0000181c \n\
/* 08026a14 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08026a16 */ LDRB R0, [R0] \n\
/* 08026a18 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026a1a */ BEQ branch_08026a3a \n\
/* 08026a1c */ LDR R0, =0x0000181e \n\
/* 08026a1e */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08026a20 */ LDRH R0, [R2] \n\
/* 08026a22 */ CMP R0, 0xEF @ Compare R0 and 0xEF \n\
/* 08026a24 */ BHI branch_08026a3a \n\
/* 08026a26 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08026a28 */ STRH R0, [R2] \n\
/* 08026a2a */ LSLS R0, R0, 0x10 \n\
/* 08026a2c */ LSRS R0, R0, 0x10 \n\
/* 08026a2e */ CMP R0, 0xEF @ Compare R0 and 0xEF \n\
/* 08026a30 */ BLS branch_08026a3a \n\
/* 08026a32 */ LDR R2, =0x000013d4 \n\
/* 08026a34 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08026a36 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08026a38 */ STR R0, [R1] \n\
 \n\
branch_08026a3a: \n\
/* 08026a3a */ POP {R0} \n\
/* 08026a3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

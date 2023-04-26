asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08041940 \n\
/* 08041940 */ PUSH {LR} \n\
/* 08041942 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08041944 */ LDR R0, =gCurrentEngineData \n\
/* 08041946 */ LDR R2, [R0] \n\
 \n\
branch_08041948: \n\
/* 08041948 */ LSLS R0, R1, 0x3 \n\
/* 0804194a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804194c */ LSLS R0, R0, 0x2 \n\
/* 0804194e */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 08041950 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08041952 */ LDRB R0, [R0] \n\
/* 08041954 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08041956 */ BNE branch_08041960 \n\
/* 08041958 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804195a */ B branch_0804196c \n\
\n\
.ltorg \n\
 \n\
branch_08041960: \n\
/* 08041960 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 08041962 */ LSLS R0, R0, 0x18 \n\
/* 08041964 */ LSRS R1, R0, 0x18 \n\
/* 08041966 */ CMP R1, 0x13 @ Compare R1 and 0x13 \n\
/* 08041968 */ BLS branch_08041948 \n\
/* 0804196a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0804196c: \n\
/* 0804196c */ POP {R1} \n\
/* 0804196e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

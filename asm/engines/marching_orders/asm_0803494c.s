asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803494c \n\
/* 0803494c */ PUSH {R4, LR} \n\
/* 0803494e */ LDR R4, =gCurrentEngineData \n\
/* 08034950 */ LDR R2, [R4] \n\
/* 08034952 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08034954 */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 08034956 */ LDRB R0, [R0] \n\
/* 08034958 */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 0803495a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803495c */ BEQ branch_08034960 \n\
/* 0803495e */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
 \n\
branch_08034960: \n\
/* 08034960 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08034962 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 08034964 */ BL func_080343b8 \n\
/* 08034968 */ LDR R1, [R4] \n\
/* 0803496a */ ADDS R1, 0x38 @ Add 0x38 to R1 \n\
/* 0803496c */ LDRB R0, [R1] \n\
/* 0803496e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034970 */ EORS R0, R2 @ Set R0 to R0 ^ R2 \n\
/* 08034972 */ STRB R0, [R1] \n\
/* 08034974 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08034976 */ BL ticks_to_frames \n\
/* 0803497a */ LDR R1, [R4] \n\
/* 0803497c */ STRH R0, [R1, 0x3A] \n\
/* 0803497e */ POP {R4} \n\
/* 08034980 */ POP {R0} \n\
/* 08034982 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

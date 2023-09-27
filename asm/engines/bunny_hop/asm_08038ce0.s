asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038ce0 \n\
/* 08038ce0 */ PUSH {R4-R6, LR} \n\
/* 08038ce2 */ LSLS R0, R0, 0x10 \n\
/* 08038ce4 */ LSRS R6, R0, 0x10 \n\
/* 08038ce6 */ LDR R0, =gCurrentEngineData \n\
/* 08038ce8 */ LDR R0, [R0] \n\
/* 08038cea */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08038cec */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08038cee */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08038cf0: \n\
/* 08038cf0 */ LDRB R0, [R4, 0x2] \n\
/* 08038cf2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08038cf4 */ BNE branch_08038d02 \n\
/* 08038cf6 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08038cf8 */ BL ticks_to_frames \n\
/* 08038cfc */ LDRH R1, [R4, 0xC] \n\
/* 08038cfe */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08038d00 */ STRH R1, [R4, 0xC] \n\
 \n\
branch_08038d02: \n\
/* 08038d02 */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 08038d04 */ LSLS R0, R0, 0x18 \n\
/* 08038d06 */ LSRS R5, R0, 0x18 \n\
/* 08038d08 */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08038d0a */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08038d0c */ BLS branch_08038cf0 \n\
/* 08038d0e */ POP {R4-R6} \n\
/* 08038d10 */ POP {R0} \n\
/* 08038d12 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

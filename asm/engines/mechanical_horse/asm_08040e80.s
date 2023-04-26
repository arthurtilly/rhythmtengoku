asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040e80 \n\
/* 08040e80 */ PUSH {LR} \n\
/* 08040e82 */ LDR R0, =gCurrentEngineData \n\
/* 08040e84 */ LDR R1, [R0] \n\
/* 08040e86 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08040e88 */ LSLS R2, R2, 0x2 \n\
/* 08040e8a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08040e8c */ LDRB R0, [R0] \n\
/* 08040e8e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08040e90 */ BNE branch_08040ea4 \n\
/* 08040e92 */ ADDS R2, 0x6 @ Add 0x6 to R2 \n\
/* 08040e94 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08040e96 */ LDRB R0, [R0] \n\
/* 08040e98 */ LSLS R0, R0, 0x18 \n\
/* 08040e9a */ ASRS R0, R0, 0x18 \n\
/* 08040e9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08040e9e */ BLT branch_08040ea4 \n\
/* 08040ea0 */ BL func_08040dd8 \n\
 \n\
branch_08040ea4: \n\
/* 08040ea4 */ BL func_08040c58 \n\
/* 08040ea8 */ POP {R0} \n\
/* 08040eaa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

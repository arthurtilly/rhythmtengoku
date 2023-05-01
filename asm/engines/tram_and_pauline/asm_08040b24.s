asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_common_beat_animation \n\
/* 08040b24 */ PUSH {R4, R5, LR} \n\
/* 08040b26 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040b28 */ LDR R5, =gCurrentEngineData \n\
/* 08040b2a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08040b2c: \n\
/* 08040b2c */ LDR R2, [R5] \n\
/* 08040b2e */ LSLS R0, R3, 0x2 \n\
/* 08040b30 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08040b32 */ LSLS R1, R0, 0x2 \n\
/* 08040b34 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08040b36 */ LDRB R0, [R0, 0x6] \n\
/* 08040b38 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08040b3a */ BHI branch_08040b44 \n\
/* 08040b3c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08040b3e */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08040b40 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040b42 */ STR R4, [R0] \n\
 \n\
branch_08040b44: \n\
/* 08040b44 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 08040b46 */ LSLS R0, R0, 0x18 \n\
/* 08040b48 */ LSRS R3, R0, 0x18 \n\
/* 08040b4a */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08040b4c */ BLS branch_08040b2c \n\
/* 08040b4e */ POP {R4, R5} \n\
/* 08040b50 */ POP {R0} \n\
/* 08040b52 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

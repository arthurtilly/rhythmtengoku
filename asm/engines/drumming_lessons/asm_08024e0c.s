asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_input_event \n\
/* 08024e0c */ PUSH {LR} \n\
/* 08024e0e */ LDR R0, =gCurrentEngineData \n\
/* 08024e10 */ LDR R2, [R0] \n\
/* 08024e12 */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 08024e14 */ LSLS R1, R1, 0x2 \n\
/* 08024e16 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08024e18 */ LDR R0, [R0] \n\
/* 08024e1a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024e1c */ BEQ branch_08024e30 \n\
/* 08024e1e */ LDR R1, [R0, 0x4] \n\
/* 08024e20 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08024e22 */ BEQ branch_08024e30 \n\
/* 08024e24 */ MOVS R3, 0xE4 @ Set R3 to 0xE4 \n\
/* 08024e26 */ LSLS R3, R3, 0x2 \n\
/* 08024e28 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08024e2a */ LDR R0, [R0] \n\
/* 08024e2c */ BL _call_via_r1 \n\
 \n\
branch_08024e30: \n\
/* 08024e30 */ LDR R0, =gCurrentEngineData \n\
/* 08024e32 */ LDR R0, [R0] \n\
/* 08024e34 */ LDRB R0, [R0] \n\
/* 08024e36 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08024e38 */ BNE branch_08024e3e \n\
/* 08024e3a */ BL beatscript_enable_loops \n\
 \n\
branch_08024e3e: \n\
/* 08024e3e */ POP {R0} \n\
/* 08024e40 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a198 \n\
/* 0803a198 */ PUSH {R4, LR} \n\
/* 0803a19a */ LDR R4, =gCurrentEngineData \n\
/* 0803a19c */ LDR R0, [R4] \n\
/* 0803a19e */ LDRB R0, [R0, 0x1C] \n\
/* 0803a1a0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803a1a2 */ BEQ branch_0803a1ac \n\
/* 0803a1a4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803a1a6 */ BLE branch_0803a1c8 \n\
/* 0803a1a8 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803a1aa */ BNE branch_0803a1c8 \n\
 \n\
branch_0803a1ac: \n\
/* 0803a1ac */ BL func_0803a164 \n\
/* 0803a1b0 */ BL func_0800c398 \n\
/* 0803a1b4 */ LDR R4, [R4] \n\
/* 0803a1b6 */ LSLS R0, R0, 0x6 \n\
/* 0803a1b8 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0803a1ba */ BL __udivsi3 \n\
/* 0803a1be */ LDR R1, [R4, 0x28] \n\
/* 0803a1c0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a1c2 */ LDR R1, [R4, 0x18] \n\
/* 0803a1c4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803a1c6 */ STR R1, [R4, 0x18] \n\
 \n\
branch_0803a1c8: \n\
/* 0803a1c8 */ POP {R4} \n\
/* 0803a1ca */ POP {R0} \n\
/* 0803a1cc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

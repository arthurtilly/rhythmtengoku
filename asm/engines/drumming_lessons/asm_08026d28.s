asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_input_event \n\
/* 08026d28 */ PUSH {LR} \n\
/* 08026d2a */ LDR R2, =D_030055d0 \n\
/* 08026d2c */ LDR R1, [R2] \n\
/* 08026d2e */ LDR R3, =0x000013f8 \n\
/* 08026d30 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08026d32 */ LDRB R0, [R0] \n\
/* 08026d34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026d36 */ BNE branch_08026d44 \n\
/* 08026d38 */ LDR R0, =0x000013d4 \n\
/* 08026d3a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08026d3c */ LDR R0, [R1] \n\
/* 08026d3e */ LDR R3, =0xffffff00 \n\
/* 08026d40 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08026d42 */ STR R0, [R1] \n\
 \n\
branch_08026d44: \n\
/* 08026d44 */ LDR R0, [R2] \n\
/* 08026d46 */ LDR R1, =0x0000181e \n\
/* 08026d48 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026d4a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026d4c */ STRH R1, [R0] \n\
/* 08026d4e */ POP {R0} \n\
/* 08026d50 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

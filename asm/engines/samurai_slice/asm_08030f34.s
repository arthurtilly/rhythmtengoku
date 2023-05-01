asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030f34 \n\
/* 08030f34 */ PUSH {LR} \n\
/* 08030f36 */ LDR R1, =gCurrentEngineData \n\
/* 08030f38 */ LDR R1, [R1] \n\
/* 08030f3a */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08030f3c */ LSLS R2, R2, 0x1 \n\
/* 08030f3e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08030f40 */ STRB R0, [R1] \n\
/* 08030f42 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030f44 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08030f46 */ BL gameplay_set_input_buttons \n\
/* 08030f4a */ POP {R0} \n\
/* 08030f4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

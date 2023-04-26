asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024ba0 \n\
/* 08024ba0 */ PUSH {LR} \n\
/* 08024ba2 */ LDR R1, =gCurrentEngineData \n\
/* 08024ba4 */ LDR R1, [R1] \n\
/* 08024ba6 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08024ba8 */ LSLS R2, R2, 0x2 \n\
/* 08024baa */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08024bac */ STRB R0, [R1] \n\
/* 08024bae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024bb0 */ BEQ branch_08024bc4 \n\
/* 08024bb2 */ LDR R0, =0x000003f3 \n\
/* 08024bb4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08024bb6 */ BL gameplay_set_input_buttons \n\
/* 08024bba */ B branch_08024bcc \n\
\n\
.ltorg \n\
 \n\
branch_08024bc4: \n\
/* 08024bc4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08024bc6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08024bc8 */ BL gameplay_set_input_buttons \n\
 \n\
branch_08024bcc: \n\
/* 08024bcc */ POP {R0} \n\
/* 08024bce */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

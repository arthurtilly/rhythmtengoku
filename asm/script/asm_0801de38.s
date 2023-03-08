asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801de38 \n\
/* 0801de38 */ PUSH {R4, LR} \n\
/* 0801de3a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801de3c */ LDRB R0, [R4, 0x4] \n\
/* 0801de3e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801de40 */ BEQ branch_0801de64 \n\
/* 0801de42 */ LDR R0, [R4, 0x20] \n\
/* 0801de44 */ BL get_task_state \n\
/* 0801de48 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801de4a */ BEQ branch_0801de52 \n\
/* 0801de4c */ LDR R0, [R4, 0x20] \n\
/* 0801de4e */ BL force_stop_task \n\
 \n\
branch_0801de52: \n\
/* 0801de52 */ LDR R0, [R4] \n\
/* 0801de54 */ BL bmp_font_bg_clear_print_data \n\
/* 0801de58 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801de5a */ STRB R0, [R4, 0x4] \n\
/* 0801de5c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801de5e */ ADDS R1, 0x29 @ Add 0x29 to R1 \n\
/* 0801de60 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801de62 */ STRB R0, [R1] \n\
 \n\
branch_0801de64: \n\
/* 0801de64 */ POP {R4} \n\
/* 0801de66 */ POP {R0} \n\
/* 0801de68 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

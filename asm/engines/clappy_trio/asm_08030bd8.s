asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_common_display_text \n\
/* 08030bd8 */ PUSH {LR} \n\
/* 08030bda */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08030bdc */ LDR R0, =gCurrentEngineData \n\
/* 08030bde */ LDR R0, [R0] \n\
/* 08030be0 */ LDR R0, [R0, 0x14] \n\
/* 08030be2 */ BL text_printer_set_string \n\
/* 08030be6 */ POP {R0} \n\
/* 08030be8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

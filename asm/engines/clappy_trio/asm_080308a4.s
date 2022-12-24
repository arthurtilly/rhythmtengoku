asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_engine_update \n\
/* 080308a4 */ PUSH {LR} \n\
/* 080308a6 */ LDR R0, =D_030055d0 \n\
/* 080308a8 */ LDR R0, [R0] \n\
/* 080308aa */ LDR R0, [R0, 0x14] \n\
/* 080308ac */ BL text_printer_update \n\
/* 080308b0 */ POP {R0} \n\
/* 080308b2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

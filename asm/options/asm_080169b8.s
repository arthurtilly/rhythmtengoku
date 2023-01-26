asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080169b8 \n\
/* 080169b8 */ PUSH {R4, LR} \n\
/* 080169ba */ LDR R0, =D_030046a4 \n\
/* 080169bc */ LDR R0, [R0] \n\
/* 080169be */ LDRB R0, [R0] \n\
/* 080169c0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080169c2 */ BEQ branch_080169d4 \n\
/* 080169c4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080169c6 */ BLE branch_080169de \n\
/* 080169c8 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080169ca */ BEQ branch_080169da \n\
/* 080169cc */ B branch_080169de \n\
\n\
.ltorg \n\
 \n\
branch_080169d4: \n\
/* 080169d4 */ BL func_08016620 \n\
/* 080169d8 */ B branch_080169de \n\
 \n\
branch_080169da: \n\
/* 080169da */ BL func_0801685c \n\
 \n\
branch_080169de: \n\
/* 080169de */ LDR R4, =D_030046a4 \n\
/* 080169e0 */ LDR R0, [R4] \n\
/* 080169e2 */ LDR R0, [R0, 0x14] \n\
/* 080169e4 */ BL text_printer_update \n\
/* 080169e8 */ LDR R0, [R4] \n\
/* 080169ea */ LDR R0, [R0, 0x20] \n\
/* 080169ec */ BL text_printer_update \n\
/* 080169f0 */ POP {R4} \n\
/* 080169f2 */ POP {R0} \n\
/* 080169f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

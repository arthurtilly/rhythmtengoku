asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c660 \n\
/* 0800c660 */ PUSH {R4, R5, LR} \n\
/* 0800c662 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c664 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800c666 */ LSLS R4, R4, 0x10 \n\
/* 0800c668 */ LSRS R4, R4, 0x10 \n\
/* 0800c66a */ LSLS R5, R5, 0x18 \n\
/* 0800c66c */ LSRS R5, R5, 0x18 \n\
/* 0800c66e */ BL get_current_mem_id \n\
/* 0800c672 */ LSLS R0, R0, 0x10 \n\
/* 0800c674 */ LSRS R0, R0, 0x10 \n\
/* 0800c676 */ LDR R1, =D_089de5c8 \n\
/* 0800c678 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800c67a */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800c67c */ BL func_08004508 \n\
/* 0800c680 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c682 */ BL func_0800f09c \n\
/* 0800c686 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800c688 */ POP {R4, R5} \n\
/* 0800c68a */ POP {R1} \n\
/* 0800c68c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

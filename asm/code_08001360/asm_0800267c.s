asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800267c \n\
/* 0800267c */ PUSH {R4, LR} \n\
/* 0800267e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002680 */ LDR R0, =D_08aa4324 \n\
/* 08002682 */ LSLS R4, R4, 0x2 \n\
/* 08002684 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08002686 */ LDR R0, [R4] \n\
/* 08002688 */ BL func_0804b368 \n\
/* 0800268c */ LDR R0, [R4] \n\
/* 0800268e */ POP {R4} \n\
/* 08002690 */ POP {R1} \n\
/* 08002692 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

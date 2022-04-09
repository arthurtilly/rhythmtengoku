asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047ecc \n\
/* 08047ecc */ PUSH {R4, LR} \n\
/* 08047ece */ LDR R1, =Lesson1_seqData \n\
/* 08047ed0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047ed2 */ BL func_0800267c \n\
/* 08047ed6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08047ed8 */ LDR R1, =0x117 \n\
/* 08047eda */ BL func_08002894 \n\
/* 08047ede */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047ee0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08047ee2 */ BL func_08017758 \n\
/* 08047ee6 */ POP {R4} \n\
/* 08047ee8 */ POP {R0} \n\
/* 08047eea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start fade_out_all_soundplayers \n\
/* 080028ec */ PUSH {R4-R7, LR} \n\
/* 080028ee */ LSLS R0, R0, 0x10 \n\
/* 080028f0 */ LSRS R6, R0, 0x10 \n\
/* 080028f2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080028f4 */ LDR R0, =D_08aa445c \n\
/* 080028f6 */ LDRB R1, [R0] \n\
/* 080028f8 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 080028fa */ BCS branch_08002912 \n\
/* 080028fc */ LDR R5, =D_08aa4460 \n\
/* 080028fe */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
 \n\
branch_08002900: \n\
/* 08002900 */ LDR R0, [R5] \n\
/* 08002902 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08002904 */ BL func_0804b7dc \n\
/* 08002908 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0800290a */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800290c */ LDRB R0, [R7] \n\
/* 0800290e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08002910 */ BCC branch_08002900 \n\
 \n\
branch_08002912: \n\
/* 08002912 */ POP {R4-R7} \n\
/* 08002914 */ POP {R0} \n\
/* 08002916 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

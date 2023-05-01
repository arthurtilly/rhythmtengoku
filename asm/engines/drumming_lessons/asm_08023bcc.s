asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023bcc \n\
/* 08023bcc */ PUSH {LR} \n\
/* 08023bce */ LDR R0, =gCurrentEngineData \n\
/* 08023bd0 */ LDR R0, [R0] \n\
/* 08023bd2 */ LDR R2, =0x000003a9 \n\
/* 08023bd4 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08023bd6 */ LDRB R1, [R1] \n\
/* 08023bd8 */ ADDS R2, 0x3 @ Add 0x3 to R2 \n\
/* 08023bda */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08023bdc */ LDR R0, [R0] \n\
/* 08023bde */ LSLS R1, R1, 0x2 \n\
/* 08023be0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08023be2 */ LDR R0, [R1] \n\
/* 08023be4 */ BL gameplay_display_text \n\
/* 08023be8 */ POP {R0} \n\
/* 08023bea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

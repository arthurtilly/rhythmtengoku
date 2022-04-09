asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bcc4 \n\
/* 0800bcc4 */ PUSH {LR} \n\
/* 0800bcc6 */ LDR R2, =D_030053c0 \n\
/* 0800bcc8 */ LDRB R1, [R2] \n\
/* 0800bcca */ LSLS R0, R1, 0x1B \n\
/* 0800bccc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bcce */ BLT branch_0800bcdc \n\
/* 0800bcd0 */ LSLS R0, R1, 0x1A \n\
/* 0800bcd2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bcd4 */ BLT branch_0800bcdc \n\
/* 0800bcd6 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0800bcd8 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800bcda */ STRB R0, [R2] \n\
 \n\
branch_0800bcdc: \n\
/* 0800bcdc */ POP {R0} \n\
/* 0800bcde */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

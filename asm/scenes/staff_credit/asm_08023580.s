asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023580 \n\
/* 08023580 */ PUSH {LR} \n\
/* 08023582 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023584 */ BL func_0800c604 \n\
/* 08023588 */ BL func_08017578 \n\
/* 0802358c */ LDR R0, =D_03004b10 \n\
/* 0802358e */ LDR R1, =0x00000256 \n\
/* 08023590 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08023592 */ LDR R1, =0x00007fff \n\
/* 08023594 */ STRH R1, [R0] \n\
/* 08023596 */ POP {R0} \n\
/* 08023598 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

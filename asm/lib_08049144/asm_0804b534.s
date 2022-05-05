asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b534 \n\
/* 0804b534 */ PUSH {LR} \n\
/* 0804b536 */ LSLS R0, R0, 0x10 \n\
/* 0804b538 */ LDR R3, =D_08aa4460 \n\
/* 0804b53a */ LDR R1, =D_08aa06f8 \n\
/* 0804b53c */ LSRS R0, R0, 0xD \n\
/* 0804b53e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804b540 */ LDRH R2, [R0, 0x4] \n\
/* 0804b542 */ LSLS R1, R2, 0x1 \n\
/* 0804b544 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804b546 */ LSLS R1, R1, 0x2 \n\
/* 0804b548 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0804b54a */ LDR R2, [R1] \n\
/* 0804b54c */ LDR R1, [R0] \n\
/* 0804b54e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804b550 */ BL func_0804b368 \n\
/* 0804b554 */ POP {R0} \n\
/* 0804b556 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

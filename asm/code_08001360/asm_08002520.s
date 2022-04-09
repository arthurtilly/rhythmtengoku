asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002520 \n\
/* 08002520 */ PUSH {LR} \n\
/* 08002522 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002524 */ BLT branch_08002534 \n\
/* 08002526 */ LSLS R0, R0, 0x3 \n\
/* 08002528 */ LDR R1, =D_03000238 \n\
/* 0800252a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800252c */ B branch_08002536 \n\
\n\
.ltorg \n\
 \n\
branch_08002534: \n\
/* 08002534 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08002536: \n\
/* 08002536 */ POP {R1} \n\
/* 08002538 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804af0c \n\
/* 0804af0c */ LSLS R0, R0, 0x10 \n\
/* 0804af0e */ LSRS R0, R0, 0x10 \n\
/* 0804af10 */ LDR R2, =D_03001570 \n\
/* 0804af12 */ LDRH R3, [R2] \n\
/* 0804af14 */ MOVS R1, 0x6D @ Set R1 to 0x6D \n\
/* 0804af16 */ MULS R1, R3 @ Multiply R1 by R3 \n\
/* 0804af18 */ LDR R3, =0x000003fd \n\
/* 0804af1a */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0804af1c */ STRH R1, [R2] \n\
/* 0804af1e */ LDRH R1, [R2] \n\
/* 0804af20 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804af22 */ LSRS R0, R0, 0x10 \n\
/* 0804af24 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

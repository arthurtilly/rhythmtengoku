asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007fdc \n\
/* 08007fdc */ PUSH {R4, LR} \n\
/* 08007fde */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007fe0 */ LDRH R0, [R4, 0x4] \n\
/* 08007fe2 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08007fe4 */ STRH R0, [R4, 0x4] \n\
/* 08007fe6 */ LDRH R0, [R4, 0x4] \n\
/* 08007fe8 */ LSLS R0, R0, 0x4 \n\
/* 08007fea */ LDRH R1, [R4, 0x2] \n\
/* 08007fec */ BL Div \n\
/* 08007ff0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08007ff2 */ LDRH R0, [R4, 0x6] \n\
/* 08007ff4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007ff6 */ BEQ branch_08008000 \n\
/* 08007ff8 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08007ffa */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08007ffc */ SUBS R1, R0, R1 @ Set R1 to R0 - R1 \n\
/* 08007ffe */ B branch_08008004 \n\
 \n\
branch_08008000: \n\
/* 08008000 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08008002 */ SUBS R3, R0, R1 @ Set R3 to R0 - R1 \n\
 \n\
branch_08008004: \n\
/* 08008004 */ LDRH R0, [R4] \n\
/* 08008006 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08008008 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0800800a */ CMP R2, 0x40 @ Compare R2 and 0x40 \n\
/* 0800800c */ BEQ branch_08008022 \n\
/* 0800800e */ CMP R2, 0x40 @ Compare R2 and 0x40 \n\
/* 08008010 */ BGT branch_08008018 \n\
/* 08008012 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08008014 */ BEQ branch_08008022 \n\
/* 08008016 */ B branch_0800803a \n\
 \n\
branch_08008018: \n\
/* 08008018 */ CMP R2, 0x80 @ Compare R2 and 0x80 \n\
/* 0800801a */ BEQ branch_08008034 \n\
/* 0800801c */ CMP R2, 0xC0 @ Compare R2 and 0xC0 \n\
/* 0800801e */ BEQ branch_08008034 \n\
/* 08008020 */ B branch_0800803a \n\
 \n\
branch_08008022: \n\
/* 08008022 */ LDR R0, =D_03004b10 \n\
/* 08008024 */ LSLS R1, R1, 0x8 \n\
/* 08008026 */ ORRS R3, R1 @ Set R3 to R3 | R1 \n\
/* 08008028 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 0800802a */ STRH R3, [R0] \n\
/* 0800802c */ B branch_0800803a \n\
\n\
.ltorg \n\
 \n\
branch_08008034: \n\
/* 08008034 */ LDR R0, =D_03004b10 \n\
/* 08008036 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08008038 */ STRH R1, [R0] \n\
 \n\
branch_0800803a: \n\
/* 0800803a */ LDRH R0, [R4, 0x4] \n\
/* 0800803c */ LDRH R4, [R4, 0x2] \n\
/* 0800803e */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08008040 */ BCC branch_0800804c \n\
/* 08008042 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08008044 */ B branch_0800804e \n\
\n\
.ltorg \n\
 \n\
branch_0800804c: \n\
/* 0800804c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800804e: \n\
/* 0800804e */ POP {R4} \n\
/* 08008050 */ POP {R1} \n\
/* 08008052 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

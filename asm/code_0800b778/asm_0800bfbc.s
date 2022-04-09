asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bfbc \n\
/* 0800bfbc */ PUSH {R4, R5, LR} \n\
/* 0800bfbe */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800bfc0 */ BL func_08002a18 \n\
/* 0800bfc4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bfc6 */ BEQ branch_0800c010 \n\
/* 0800bfc8 */ LDR R4, =D_030053c0 \n\
/* 0800bfca */ STR R0, [R4, 0x4] \n\
/* 0800bfcc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800bfce */ BL func_080102d0 \n\
/* 0800bfd2 */ STRH R0, [R4, 0x8] \n\
/* 0800bfd4 */ BL func_0800be64 \n\
/* 0800bfd8 */ BL func_0800c060 \n\
/* 0800bfdc */ LDR R0, [R4, 0x4] \n\
/* 0800bfde */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 0800bfe0 */ LSLS R2, R2, 0x1 \n\
/* 0800bfe2 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 0800bfe4 */ LDRH R1, [R1] \n\
/* 0800bfe6 */ BL func_08002920 \n\
/* 0800bfea */ LDR R0, [R4, 0x4] \n\
/* 0800bfec */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 0800bfee */ LSLS R3, R3, 0x1 \n\
/* 0800bff0 */ ADDS R1, R4, R3 @ Set R1 to R4 + R3 \n\
/* 0800bff2 */ LDRH R1, [R1] \n\
/* 0800bff4 */ SUBS R3, 0x2 @ Subtract 0x2 from R3 \n\
/* 0800bff6 */ ADDS R2, R4, R3 @ Set R2 to R4 + R3 \n\
/* 0800bff8 */ LDRH R2, [R2] \n\
/* 0800bffa */ BL func_08002934 \n\
/* 0800bffe */ LDR R0, [R4, 0x4] \n\
/* 0800c000 */ MOVS R2, 0xCB @ Set R2 to 0xCB \n\
/* 0800c002 */ LSLS R2, R2, 0x1 \n\
/* 0800c004 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 0800c006 */ LDRB R1, [R1] \n\
/* 0800c008 */ LSLS R1, R1, 0x18 \n\
/* 0800c00a */ ASRS R1, R1, 0x18 \n\
/* 0800c00c */ BL func_080029c4 \n\
 \n\
branch_0800c010: \n\
/* 0800c010 */ POP {R4, R5} \n\
/* 0800c012 */ POP {R0} \n\
/* 0800c014 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

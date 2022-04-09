asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801bc0c \n\
/* 0801bc0c */ PUSH {R4-R7, LR} \n\
/* 0801bc0e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801bc10 */ BNE branch_0801bcc8 \n\
/* 0801bc12 */ LDR R5, =D_030046a4 \n\
/* 0801bc14 */ LDR R0, [R5] \n\
/* 0801bc16 */ MOVS R4, 0xD8 @ Set R4 to 0xD8 \n\
/* 0801bc18 */ LSLS R4, R4, 0x2 \n\
/* 0801bc1a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801bc1c */ LDR R0, [R0] \n\
/* 0801bc1e */ BL func_0800b118 \n\
/* 0801bc22 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0801bc24 */ LDR R0, [R5] \n\
/* 0801bc26 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801bc28 */ LDR R0, [R0] \n\
/* 0801bc2a */ BL func_0800b12c \n\
/* 0801bc2e */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801bc30 */ LDR R0, [R5] \n\
/* 0801bc32 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801bc34 */ LDR R0, [R0] \n\
/* 0801bc36 */ BL func_0800b0d4 \n\
/* 0801bc3a */ LDR R0, =D_030046a8 \n\
/* 0801bc3c */ LDR R0, [R0] \n\
/* 0801bc3e */ ADDS R0, 0xC2 @ Add 0xC2 to R0 \n\
/* 0801bc40 */ LDRB R4, [R0] \n\
/* 0801bc42 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801bc44 */ BLE branch_0801bc6a \n\
/* 0801bc46 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801bc48 */ BL func_0801aed0 \n\
/* 0801bc4c */ SUBS R0, R4, 0x1 @ Set R0 to R4 - 0x1 \n\
/* 0801bc4e */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0801bc50 */ BLT branch_0801bc5a \n\
/* 0801bc52 */ SUBS R6, 0x1 @ Subtract 0x1 from R6 \n\
/* 0801bc54 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0801bc56 */ BLE branch_0801bc5a \n\
/* 0801bc58 */ SUBS R7, 0x1 @ Subtract 0x1 from R7 \n\
 \n\
branch_0801bc5a: \n\
/* 0801bc5a */ LDR R0, =D_030046a4 \n\
/* 0801bc5c */ LDR R0, [R0] \n\
/* 0801bc5e */ MOVS R1, 0x92 @ Set R1 to 0x92 \n\
/* 0801bc60 */ LSLS R1, R1, 0x3 \n\
/* 0801bc62 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bc64 */ LDR R0, [R0] \n\
/* 0801bc66 */ BL func_08011d8c \n\
 \n\
branch_0801bc6a: \n\
/* 0801bc6a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801bc6c */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801bc6e */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0801bc70 */ BL func_0801b138 \n\
/* 0801bc74 */ BL func_0801c7c0 \n\
/* 0801bc78 */ LDR R4, =D_030046a4 \n\
/* 0801bc7a */ LDR R0, [R4] \n\
/* 0801bc7c */ MOVS R2, 0xDC @ Set R2 to 0xDC \n\
/* 0801bc7e */ LSLS R2, R2, 0x2 \n\
/* 0801bc80 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801bc82 */ LDR R0, [R0] \n\
/* 0801bc84 */ BL func_0800b3e8 \n\
/* 0801bc88 */ LDR R0, [R4] \n\
/* 0801bc8a */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801bc8c */ LSLS R1, R1, 0x2 \n\
/* 0801bc8e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bc90 */ LDR R0, [R0] \n\
/* 0801bc92 */ BL func_0800b3c8 \n\
/* 0801bc96 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801bc98 */ BL func_0801c6b8 \n\
/* 0801bc9c */ LDR R0, [R4] \n\
/* 0801bc9e */ MOVS R2, 0xD7 @ Set R2 to 0xD7 \n\
/* 0801bca0 */ LSLS R2, R2, 0x2 \n\
/* 0801bca2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801bca4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801bca6 */ STRB R1, [R0] \n\
/* 0801bca8 */ LDR R0, =s_studio_bgm_seqData \n\
/* 0801bcaa */ BL func_08002634 \n\
/* 0801bcae */ LDR R1, [R4] \n\
/* 0801bcb0 */ MOVS R2, 0x97 @ Set R2 to 0x97 \n\
/* 0801bcb2 */ LSLS R2, R2, 0x3 \n\
/* 0801bcb4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801bcb6 */ STR R0, [R1] \n\
/* 0801bcb8 */ B branch_0801bcd6 \n\
\n\
.ltorg \n\
 \n\
branch_0801bcc8: \n\
/* 0801bcc8 */ LDR R0, =D_030046a4 \n\
/* 0801bcca */ LDR R0, [R0] \n\
/* 0801bccc */ MOVS R1, 0xD7 @ Set R1 to 0xD7 \n\
/* 0801bcce */ LSLS R1, R1, 0x2 \n\
/* 0801bcd0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bcd2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801bcd4 */ STRB R1, [R0] \n\
 \n\
branch_0801bcd6: \n\
/* 0801bcd6 */ POP {R4-R7} \n\
/* 0801bcd8 */ POP {R0} \n\
/* 0801bcda */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802575c \n\
/* 0802575c */ PUSH {R4, R5, LR} \n\
/* 0802575e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08025760 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08025762 */ LDR R0, =D_089e06b0 \n\
/* 08025764 */ LSLS R3, R3, 0x1 \n\
/* 08025766 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08025768 */ LDRH R3, [R3] \n\
/* 0802576a */ LSLS R5, R5, 0x1 \n\
/* 0802576c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802576e */ CMP R2, R5 @ Check R2 - R5 \n\
/* 08025770 */ BCS branch_080257ac \n\
 \n\
branch_08025772: \n\
/* 08025772 */ LDRH R0, [R4] \n\
/* 08025774 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08025776 */ STRH R0, [R1] \n\
/* 08025778 */ LDRH R0, [R4, 0x2] \n\
/* 0802577a */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0802577c */ STRH R0, [R1, 0x2] \n\
/* 0802577e */ LDRH R0, [R4, 0x4] \n\
/* 08025780 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08025782 */ STRH R0, [R1, 0x4] \n\
/* 08025784 */ LDRH R0, [R4, 0x6] \n\
/* 08025786 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08025788 */ STRH R0, [R1, 0x6] \n\
/* 0802578a */ LDRH R0, [R4, 0x8] \n\
/* 0802578c */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0802578e */ STRH R0, [R1, 0x8] \n\
/* 08025790 */ LDRH R0, [R4, 0xA] \n\
/* 08025792 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08025794 */ STRH R0, [R1, 0xA] \n\
/* 08025796 */ LDRH R0, [R4, 0xC] \n\
/* 08025798 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0802579a */ STRH R0, [R1, 0xC] \n\
/* 0802579c */ LDRH R0, [R4, 0xE] \n\
/* 0802579e */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 080257a0 */ STRH R0, [R1, 0xE] \n\
/* 080257a2 */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 080257a4 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080257a6 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080257a8 */ CMP R2, R5 @ Check R2 - R5 \n\
/* 080257aa */ BCC branch_08025772 \n\
 \n\
branch_080257ac: \n\
/* 080257ac */ POP {R4, R5} \n\
/* 080257ae */ POP {R0} \n\
/* 080257b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

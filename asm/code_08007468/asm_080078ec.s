asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080078ec \n\
/* 080078ec */ PUSH {R4, R5, LR} \n\
/* 080078ee */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080078f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080078f2 */ LDRSH R0, [R5, R1] \n\
/* 080078f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080078f6 */ BLT branch_08007932 \n\
/* 080078f8 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 080078fa */ BL mem_heap_alloc \n\
/* 080078fe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007900 */ LDRH R0, [R5] \n\
/* 08007902 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08007904 */ STRH R0, [R4] \n\
/* 08007906 */ LDRH R0, [R5, 0x4] \n\
/* 08007908 */ STRH R0, [R4, 0x2] \n\
/* 0800790a */ LDRH R0, [R5, 0x6] \n\
/* 0800790c */ STRH R0, [R4, 0x4] \n\
/* 0800790e */ LDRH R0, [R5, 0x8] \n\
/* 08007910 */ STRH R0, [R4, 0x6] \n\
/* 08007912 */ LDRH R0, [R5, 0xA] \n\
/* 08007914 */ STRH R0, [R4, 0x8] \n\
/* 08007916 */ LDRH R0, [R5, 0xC] \n\
/* 08007918 */ STRH R0, [R4, 0xA] \n\
/* 0800791a */ LDRH R0, [R5, 0xE] \n\
/* 0800791c */ STRH R0, [R4, 0xC] \n\
/* 0800791e */ STRH R1, [R4, 0xE] \n\
/* 08007920 */ LDRH R0, [R5, 0x10] \n\
/* 08007922 */ STRH R0, [R4, 0x10] \n\
/* 08007924 */ LDRB R0, [R5, 0x2] \n\
/* 08007926 */ STRB R0, [R4, 0x12] \n\
/* 08007928 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800792a */ BL func_08007854 \n\
/* 0800792e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08007930 */ B branch_08007936 \n\
 \n\
branch_08007932: \n\
/* 08007932 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08007934 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08007936: \n\
/* 08007936 */ POP {R4, R5} \n\
/* 08007938 */ POP {R1} \n\
/* 0800793a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012928 \n\
/* 08012928 */ PUSH {R4-R7, LR} \n\
/* 0801292a */ LDR R0, =D_030046a4 \n\
/* 0801292c */ LDR R7, [R0] \n\
/* 0801292e */ BL func_080128b8 \n\
/* 08012932 */ LDR R0, =0x453 \n\
/* 08012934 */ ADDS R6, R7, R0 @ Set R6 to R7 + R0 \n\
/* 08012936 */ LDRB R0, [R6] \n\
/* 08012938 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801293a */ BEQ branch_080129be \n\
/* 0801293c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801293e */ LDR R5, =D_030046a8 \n\
/* 08012940 */ LDR R0, [R5] \n\
/* 08012942 */ LDR R4, =0x29e \n\
/* 08012944 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08012946 */ LDRB R0, [R0] \n\
/* 08012948 */ CMP R0, 0x2F @ Compare R0 and 0x2F \n\
/* 0801294a */ BHI branch_0801294e \n\
/* 0801294c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_0801294e: \n\
/* 0801294e */ CMP R0, 0x2C @ Compare R0 and 0x2C \n\
/* 08012950 */ BHI branch_0801295e \n\
/* 08012952 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08012954 */ BL func_08001980 \n\
/* 08012958 */ LSLS R0, R0, 0x10 \n\
/* 0801295a */ LSRS R0, R0, 0x10 \n\
/* 0801295c */ ADDS R2, R0, 0x2 @ Set R2 to R0 + 0x2 \n\
 \n\
branch_0801295e: \n\
/* 0801295e */ LDR R0, [R5] \n\
/* 08012960 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08012962 */ LDRB R0, [R0] \n\
/* 08012964 */ CMP R0, 0x1D @ Compare R0 and 0x1D \n\
/* 08012966 */ BHI branch_08012974 \n\
/* 08012968 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801296a */ BL func_08001980 \n\
/* 0801296e */ LSLS R0, R0, 0x10 \n\
/* 08012970 */ LSRS R0, R0, 0x10 \n\
/* 08012972 */ ADDS R2, R0, 0x3 @ Set R2 to R0 + 0x3 \n\
 \n\
branch_08012974: \n\
/* 08012974 */ LDR R0, [R5] \n\
/* 08012976 */ LDR R1, =0x276 \n\
/* 08012978 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801297a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801297c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801297e */ STRB R1, [R0] \n\
/* 08012980 */ LDR R0, [R5] \n\
/* 08012982 */ LDR R3, =0x277 \n\
/* 08012984 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08012986 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08012988 */ STRB R1, [R0] \n\
/* 0801298a */ LDR R0, [R5] \n\
/* 0801298c */ MOVS R1, 0x9E @ Set R1 to 0x9E \n\
/* 0801298e */ LSLS R1, R1, 0x2 \n\
/* 08012990 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012992 */ STRB R2, [R0] \n\
/* 08012994 */ LDRB R0, [R6] \n\
/* 08012996 */ BL func_08001980 \n\
/* 0801299a */ LDR R2, [R5] \n\
/* 0801299c */ LSLS R0, R0, 0x10 \n\
/* 0801299e */ LSRS R0, R0, 0x10 \n\
/* 080129a0 */ LDR R3, =0x454 \n\
/* 080129a2 */ ADDS R1, R7, R3 @ Set R1 to R7 + R3 \n\
/* 080129a4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080129a6 */ LDRB R0, [R1] \n\
/* 080129a8 */ LDR R1, =0x279 \n\
/* 080129aa */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080129ac */ STRB R0, [R2] \n\
/* 080129ae */ LDR R0, [R5] \n\
/* 080129b0 */ LDR R3, =0x27a \n\
/* 080129b2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080129b4 */ STRB R4, [R0] \n\
/* 080129b6 */ LDR R0, [R5] \n\
/* 080129b8 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 080129ba */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080129bc */ STRB R4, [R0] \n\
 \n\
branch_080129be: \n\
/* 080129be */ POP {R4-R7} \n\
/* 080129c0 */ POP {R0} \n\
/* 080129c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

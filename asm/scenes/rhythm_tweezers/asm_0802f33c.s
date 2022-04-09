asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f33c \n\
/* 0802f33c */ PUSH {R4, R5, LR} \n\
/* 0802f33e */ SUB SP, 0x8 \n\
/* 0802f340 */ LDR R0, =D_030055d0 \n\
/* 0802f342 */ LDR R0, [R0] \n\
/* 0802f344 */ ADDS R4, R0, 0x4 @ Set R4 to R0 + 0x4 \n\
/* 0802f346 */ LDR R0, [R0, 0x4] \n\
/* 0802f348 */ LDR R1, =D_088e8898 \n\
/* 0802f34a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802f34c */ STR R2, [SP] \n\
/* 0802f34e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802f350 */ STR R5, [SP, 0x4] \n\
/* 0802f352 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f354 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802f356 */ BL func_08010064 \n\
/* 0802f35a */ LDRB R0, [R4, 0x5] \n\
/* 0802f35c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802f35e */ BEQ branch_0802f366 \n\
/* 0802f360 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802f362 */ BL func_0802ea74 \n\
 \n\
branch_0802f366: \n\
/* 0802f366 */ STRB R5, [R4, 0x5] \n\
/* 0802f368 */ ADD SP, 0x8 \n\
/* 0802f36a */ POP {R4, R5} \n\
/* 0802f36c */ POP {R0} \n\
/* 0802f36e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

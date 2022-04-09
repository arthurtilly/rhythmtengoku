asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002e78 \n\
/* 08002e78 */ PUSH {R4, R5, LR} \n\
/* 08002e7a */ SUB SP, 0x5C \n\
/* 08002e7c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08002e7e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08002e80 */ LSLS R2, R2, 0xA \n\
/* 08002e82 */ MOV R0, SP @ Set R0 to SP \n\
/* 08002e84 */ BL func_08002a6c \n\
/* 08002e88 */ MOV R0, SP @ Set R0 to SP \n\
/* 08002e8a */ LDRB R1, [R0] \n\
/* 08002e8c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08002e8e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002e90 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002e92 */ BEQ branch_08002ea8 \n\
/* 08002e94 */ MOV R4, SP @ Set R4 to SP \n\
/* 08002e96 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_08002e98: \n\
/* 08002e98 */ MOV R0, SP @ Set R0 to SP \n\
/* 08002e9a */ BL func_08002b10 \n\
/* 08002e9e */ LDRB R1, [R4] \n\
/* 08002ea0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08002ea2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002ea4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002ea6 */ BNE branch_08002e98 \n\
 \n\
branch_08002ea8: \n\
/* 08002ea8 */ ADD SP, 0x5C \n\
/* 08002eaa */ POP {R4, R5} \n\
/* 08002eac */ POP {R0} \n\
/* 08002eae */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

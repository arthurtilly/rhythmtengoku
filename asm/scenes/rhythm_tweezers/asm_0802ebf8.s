asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ebf8 \n\
/* 0802ebf8 */ PUSH {R4, R5, LR} \n\
/* 0802ebfa */ LDR R0, =D_030055d0 \n\
/* 0802ebfc */ LDR R0, [R0] \n\
/* 0802ebfe */ ADDS R5, R0, 0x4 @ Set R5 to R0 + 0x4 \n\
/* 0802ec00 */ BL func_0802ebdc \n\
/* 0802ec04 */ LDRB R0, [R5, 0x4] \n\
/* 0802ec06 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ec08 */ BEQ branch_0802ec12 \n\
/* 0802ec0a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802ec0c */ BNE branch_0802ec12 \n\
/* 0802ec0e */ BL func_0802eba0 \n\
 \n\
branch_0802ec12: \n\
/* 0802ec12 */ LDRB R0, [R5, 0x5] \n\
/* 0802ec14 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ec16 */ BEQ branch_0802ec3c \n\
/* 0802ec18 */ LDR R0, [R5] \n\
/* 0802ec1a */ BL func_08010198 \n\
/* 0802ec1e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802ec20 */ LSLS R4, R4, 0x18 \n\
/* 0802ec22 */ ASRS R4, R4, 0x18 \n\
/* 0802ec24 */ LDR R0, [R5] \n\
/* 0802ec26 */ BL func_08010288 \n\
/* 0802ec2a */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 0802ec2c */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802ec2e */ BNE branch_0802ec3c \n\
/* 0802ec30 */ LDRB R0, [R5, 0x5] \n\
/* 0802ec32 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802ec34 */ BL func_0802ea74 \n\
/* 0802ec38 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802ec3a */ STRB R0, [R5, 0x5] \n\
 \n\
branch_0802ec3c: \n\
/* 0802ec3c */ LDR R0, [R5] \n\
/* 0802ec3e */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802ec40 */ LDRSH R1, [R5, R2] \n\
/* 0802ec42 */ BL func_0800febc \n\
/* 0802ec46 */ POP {R4, R5} \n\
/* 0802ec48 */ POP {R0} \n\
/* 0802ec4a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

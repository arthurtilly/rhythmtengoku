asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005640 \n\
/* 08005640 */ PUSH {LR} \n\
/* 08005642 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08005644 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08005646 */ B branch_0800567e \n\
 \n\
branch_08005648: \n\
/* 08005648 */ LSLS R0, R0, 0x18 \n\
/* 0800564a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800564c */ BLT branch_08005672 \n\
/* 0800564e */ LDRB R0, [R1] \n\
/* 08005650 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08005652 */ BEQ branch_08005668 \n\
/* 08005654 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08005656 */ BGT branch_0800565e \n\
/* 08005658 */ CMP R0, 0xA @ Compare R0 and 0xA \n\
/* 0800565a */ BEQ branch_08005664 \n\
/* 0800565c */ B branch_0800566c \n\
 \n\
branch_0800565e: \n\
/* 0800565e */ CMP R0, 0x3A @ Compare R0 and 0x3A \n\
/* 08005660 */ BEQ branch_08005668 \n\
/* 08005662 */ B branch_0800566c \n\
 \n\
branch_08005664: \n\
/* 08005664 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08005666 */ B branch_0800567e \n\
 \n\
branch_08005668: \n\
/* 08005668 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0800566a */ B branch_0800567e \n\
 \n\
branch_0800566c: \n\
/* 0800566c */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0800566e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08005670 */ B branch_0800567e \n\
 \n\
branch_08005672: \n\
/* 08005672 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08005674 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08005676 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08005678 */ LDRSB R0, [R1, R0] \n\
/* 0800567a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800567c */ BLT branch_08005672 \n\
 \n\
branch_0800567e: \n\
/* 0800567e */ LDRB R0, [R1] \n\
/* 08005680 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005682 */ BNE branch_08005648 \n\
/* 08005684 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08005686 */ POP {R1} \n\
/* 08005688 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

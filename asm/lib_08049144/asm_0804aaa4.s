asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804aaa4 \n\
/* 0804aaa4 */ PUSH {LR} \n\
/* 0804aaa6 */ LSLS R1, R1, 0x5 \n\
/* 0804aaa8 */ LDR R2, [R0, 0x18] \n\
/* 0804aaaa */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0804aaac */ LDRB R1, [R2, 0x4] \n\
/* 0804aaae */ LSLS R1, R1, 0x19 \n\
/* 0804aab0 */ LSRS R1, R1, 0x19 \n\
/* 0804aab2 */ LDRB R0, [R0, 0x5] \n\
/* 0804aab4 */ LSLS R0, R0, 0x18 \n\
/* 0804aab6 */ ASRS R0, R0, 0x19 \n\
/* 0804aab8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804aaba */ LDRB R0, [R2, 0x7] \n\
/* 0804aabc */ LSLS R0, R0, 0x1A \n\
/* 0804aabe */ LSRS R0, R0, 0x1E \n\
/* 0804aac0 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804aac2 */ BNE branch_0804aacc \n\
/* 0804aac4 */ LDRB R0, [R2, 0xD] \n\
/* 0804aac6 */ LSLS R0, R0, 0x18 \n\
/* 0804aac8 */ ASRS R0, R0, 0x19 \n\
/* 0804aaca */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
 \n\
branch_0804aacc: \n\
/* 0804aacc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804aace */ BGE branch_0804aad2 \n\
/* 0804aad0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
 \n\
branch_0804aad2: \n\
/* 0804aad2 */ CMP R1, 0x7F @ Compare R1 and 0x7F \n\
/* 0804aad4 */ BLE branch_0804aad8 \n\
/* 0804aad6 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
 \n\
branch_0804aad8: \n\
/* 0804aad8 */ LSLS R0, R1, 0x18 \n\
/* 0804aada */ LSRS R0, R0, 0x18 \n\
/* 0804aadc */ POP {R1} \n\
/* 0804aade */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");

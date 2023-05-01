asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032478 \n\
/* 08032478 */ PUSH {LR} \n\
/* 0803247a */ LDR R0, =gCurrentEngineData \n\
/* 0803247c */ LDR R0, [R0] \n\
/* 0803247e */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08032480 */ LDRB R0, [R0] \n\
/* 08032482 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08032484 */ BEQ branch_08032494 \n\
/* 08032486 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08032488 */ BLE branch_0803249e \n\
/* 0803248a */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803248c */ BEQ branch_0803249a \n\
/* 0803248e */ B branch_0803249e \n\
\n\
.ltorg \n\
 \n\
branch_08032494: \n\
/* 08032494 */ BL func_08032298 \n\
/* 08032498 */ B branch_0803249e \n\
 \n\
branch_0803249a: \n\
/* 0803249a */ BL func_08032330 \n\
 \n\
branch_0803249e: \n\
/* 0803249e */ POP {R0} \n\
/* 080324a0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");

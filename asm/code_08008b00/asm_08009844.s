asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009844 \n\
/* 08009844 */ PUSH {R4, LR} \n\
/* 08009846 */ SUB SP, 0x4 \n\
/* 08009848 */ LDR R0, =D_0800116c \n\
/* 0800984a */ LDR R1, =D_03001220 \n\
/* 0800984c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800984e */ LSLS R2, R2, 0x1 \n\
/* 08009850 */ STR R2, [SP] \n\
/* 08009852 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 08009854 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08009856 */ BL func_0800186c \n\
/* 0800985a */ LDR R4, =D_03001218 \n\
/* 0800985c */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0800985e */ LSLS R0, R0, 0x4 \n\
/* 08009860 */ BL mem_heap_alloc \n\
/* 08009864 */ STR R0, [R4] \n\
/* 08009866 */ LDR R1, =D_0300121c \n\
/* 08009868 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800986a */ STR R0, [R1] \n\
/* 0800986c */ ADD SP, 0x4 \n\
/* 0800986e */ POP {R4} \n\
/* 08009870 */ POP {R0} \n\
/* 08009872 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

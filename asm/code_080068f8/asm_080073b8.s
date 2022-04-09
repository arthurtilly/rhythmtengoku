asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080073b8 \n\
/* 080073b8 */ PUSH {LR} \n\
/* 080073ba */ LDR R0, =mem_heap_alloc \n\
/* 080073bc */ LDR R1, =mem_heap_dealloc \n\
/* 080073be */ BL func_0804ca80 \n\
/* 080073c2 */ LDR R0, =mem_heap_alloc_id \n\
/* 080073c4 */ BL func_0804ca94 \n\
/* 080073c8 */ LDR R1, =D_03004f64 \n\
/* 080073ca */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080073cc */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 080073ce */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080073d0 */ BL func_0804caa0 \n\
/* 080073d4 */ LDR R1, =D_03005380 \n\
/* 080073d6 */ STR R0, [R1] \n\
/* 080073d8 */ POP {R0} \n\
/* 080073da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");

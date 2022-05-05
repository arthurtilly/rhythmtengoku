.section .text
.syntax unified
.code 16

.include "include/gba.inc"

thumb_func_start CpuFastSet
/* 0804c868 */ SWI 12
/* 0804c86a */ BX LR

thumb_func_start Div
/* 0804c86c */ SWI 6
/* 0804c86e */ BX LR

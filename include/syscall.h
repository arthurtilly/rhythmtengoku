#pragma once

#define CPU_FAST_SET_SRC_FIXED 0x01000000

void CpuFastSet(const void *src, void *dest, u32 control);
s32 Div(s32 num, s32 denom);

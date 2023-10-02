#include "code_08001360.h"
#include "code_08002f68.h"
#include "memory_heap.h"


/* ARITHMETIC */


#define FUNC_SQRT_SIZE ((u32)&math_sqrt_rom_end - (u32)math_sqrt_rom)

extern s32 math_sqrt_rom(s32 value);
extern void *math_sqrt_rom_end;
extern s32 (*math_sqrt)(s32 value);

extern u8 D_0893640c[];
extern u16 D_0893644e[];

static s32 math_sqrt_code[120];


// Init. sqrt()
void init_math_sqrt(void) {
    DmaCopy32(3, math_sqrt_rom, math_sqrt_code, FUNC_SQRT_SIZE);
    math_sqrt = (void *)math_sqrt_code;
}


// ? (8 bits)
u8 func_08002f9c(s16 arg0, s16 arg1) {
    s32 r6;
    s32 sign;

    r6 = 0;
    sign = 1;

    if (arg0 < 0) {
        arg0 = -arg0;
        r6 = (64 * 2);
        sign = -sign;
    }

    if (arg1 < 0) {
        arg1 = -arg1;
        sign = -sign;
    }

    if (arg0 < arg1) {
        s32 swap;

        r6 += (64 * sign);
        sign = -sign;
        swap = arg0;
        arg0 = arg1;
        arg1 = swap;
    }

    return r6 + (sign * D_0893640c[64 * arg1 / arg0]);
}


// ? (16 bits)
u16 func_08003004(s16 arg0, s16 arg1) {
    s32 r6;
    s32 sign;

    r6 = 0;
    sign = 1;

    if (arg0 < 0) {
        arg0 = -arg0;
        r6 = (512 * 2);
        sign = -sign;
    }

    if (arg1 < 0) {
        arg1 = -arg1;
        sign = -sign;
    }

    if (arg0 < arg1) {
        s32 swap;

        r6 += (512 * sign);
        sign = -sign;
        swap = arg0;
        arg0 = arg1;
        arg1 = swap;
    }

    return r6 + (sign * D_0893644e[256 * arg1 / arg0]);
}


void func_08003070(struct struct_08003070 *arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6) {
    if ((arg1 + arg3) > arg0->unk14) {
        u32 temp = arg0->unk14 - arg1;
        u32 temp1 = arg3 - temp;
        
        func_08003070(arg0, arg1, arg2, temp, arg4, arg5, arg6);
        func_08003070(arg0, 0, arg2, temp1, arg4, arg5 + temp, arg6);
    } else if ((arg2 + arg4) > arg0->unk15) {
        u32 temp = arg0->unk15 - arg2;
        u32 temp1 = arg4 - temp;

        func_08003070(arg0, arg1, arg2, arg3, temp, arg5, arg6);
        func_08003070(arg0, arg1, 0, arg3, temp1, arg5, arg6 + temp);
    } else {
        u32 temp_r8 = (!arg0->unk0_b0) ? 16 * sizeof(u16) : 32 * sizeof(u16);
        u8 *temp_r6 = &arg0->unk8[(arg1 + arg2 * arg0->unk14) * temp_r8];
        u8 *temp_r4 = &arg0->unk18[(arg5 + arg6 * arg0->unk20) * temp_r8];
        u32 i;

        for (i = 0; i < arg4; i++) {
            dma3_set(temp_r4, temp_r6, arg3 * temp_r8, 32, 256);
            temp_r6 += arg0->unk14 * temp_r8;
            temp_r4 += arg0->unk20 * temp_r8;
        }
    }
}

void func_0800318c(struct struct_08003070 *arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6) {
    if ((arg1 + arg5) > 32) {
        u32 temp = 32 - arg1;
        u32 temp1 = arg5 - temp;
        
        func_0800318c(arg0, arg1, arg2, arg3, arg4, temp, arg6);
        func_0800318c(arg0, 0, arg2, arg3 + temp, arg4, temp1, arg6);
    } else {
        if ((arg2 + arg6) > 32) {
            u32 temp = 32 - arg2;
            u32 temp1 = arg6 - temp;
            
            func_0800318c(arg0, arg1, arg2, arg3, arg4, arg5, temp);
            func_0800318c(arg0, arg1, 0, arg3, arg4 + temp, arg5, temp1);
        } else {
            u16 *temp_r6 = &arg0->unkC[arg1] + arg2 * 32;
            u16 *temp_r4 = &arg0->unk44[arg3] + arg0->unk14 * arg4;
            u32 i;
            
            for (i = 0; i < arg6; i++) {
                dma3_set(temp_r4, temp_r6, arg5 * 2, 16, 256);
                temp_r6 += 32;
                temp_r4 += arg0->unk14;
            }
        }
    }
}

void func_08003278(struct struct_08003070 *arg0) {
    u32 i;
    
    if (!arg0->unk0_b1) return;
    for (i = 0; i < arg0->unk0_b2; i++) {
        u32 temp_r5;
        u32 temp_r8;
        
        temp_r8 = arg0->unk10;
        temp_r8 += arg0->unk22[i];
        
        temp_r5 = arg0->unk12;
        temp_r5 += arg0->unk2A[i];
        func_08003070(arg0, temp_r8 % arg0->unk14, temp_r5 % arg0->unk15, arg0->unk32[i], arg0->unk3A[i], temp_r8, temp_r5);
        func_0800318c(arg0, temp_r8 % 32, temp_r5 % 32, arg0->unk22[i], arg0->unk2A[i], arg0->unk32[i], arg0->unk3A[i]);
    }
    arg0->unk58[0] = arg0->unk4E + arg0->unk52;
    arg0->unk5C[0] = arg0->unk50 + arg0->unk54;
    arg0->unk0_b1 = 0;
    arg0->unk0_b2 = 0;
}

void func_08003384(struct struct_08003070 *arg0) {
    arg0->unk0_b1 = 0;
    arg0->unk0_b2 = 0;
}

u32 func_08003398(struct struct_08003070 *arg0) {
    return arg0->unk0_b1;
}

void func_080033a0(struct struct_08003070 *arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6) {
    u32 temp_r3;
    s32 temp_r5;
    s32 temp_r9;

    // ????
    u8 arg1_1 = arg1;
    u8 arg2_1 = arg2;
    u8 arg3_1 = arg3;
    u8 arg4_1 = arg4;
    u16 arg5_1 = arg5;
    u16 arg6_1 = arg6;
    u32 sp28;
    
    temp_r9 = arg0->unk14;
    sp28 = arg5_1 % temp_r9;
    temp_r5 = arg0->unk15;
    temp_r3 = arg6_1 % temp_r5;

    if ((sp28 + arg3_1) > temp_r9) {
        u32 temp = temp_r9 - sp28;
        u32 temp1 = arg3_1 - temp;
        
        func_080033a0(arg0, arg1_1, arg2_1, temp, arg4_1, arg5_1, arg6_1);
        func_080033a0(arg0, arg1_1 + temp, arg2_1, temp1, arg4_1, arg5_1 + temp, arg6_1);
    } else if ((temp_r3 + arg4_1) > temp_r5) {
        u32 temp = temp_r5 - temp_r3;
        u32 temp1 = arg4_1 - temp;
        
        func_080033a0(arg0, arg1_1, arg2_1, arg3_1, temp, arg5_1, arg6_1);
        func_080033a0(arg0, arg1_1, arg2_1 + temp, arg3_1, temp1, arg5_1, arg6_1 + temp);
    } else {
        u16 *temp_r6 = &arg0->unk44[arg1_1] + arg2_1 * temp_r9;
        u8 *temp_r7 = &arg0->unk1C[arg5_1] + arg6_1 * arg0->unk20;
        u32 temp_r4 = sp28 + temp_r9 * temp_r3 + arg0->unk16;
        u32 i, j;

        for (i = 0; i < arg4_1; i++) {
            if (!arg0->unk0_b0) {
                for (j = 0; j < arg3_1; j++) {
                    temp_r6[j] = (temp_r4 + j) | (temp_r7[j] << 12);
                }
            } else {
                for (j = 0; j < arg3_1; j++) {
                    temp_r6[j] = temp_r4 + j;
                }
                
            }
            temp_r4 += arg0->unk14;
            temp_r6 += arg0->unk14;
            temp_r7 += arg0->unk20;
        }
        
    }
}

void func_0800351c(struct struct_08003070 *arg0, u8 arg1, u8 arg2, u8 arg3, u8 arg4) {
    if (arg0->unk0_b2 < 8) {
        u16 temp = arg0->unk0_b2;

        arg0->unk22[temp] = arg1;
        arg0->unk2A[temp] = arg2;
        arg0->unk32[temp] = arg3;
        arg0->unk3A[temp] = arg4;
        func_080033a0(arg0, arg1, arg2, arg3, arg4, arg0->unk10 + arg1, arg0->unk12 + arg2);
        arg0->unk0_b2++;
        arg0->unk0_b1 = 1;
    }
}

void func_08003598(struct struct_08003070 *arg0, u16 arg1, u16 arg2) {
    arg0->unk10 = arg1;
    arg0->unk12 = arg2;
}

void func_080035a0(struct struct_08003070 *arg0, struct struct_080035a0 *arg1, u8 *arg2, u16 *arg3,
                    u8 arg4, u8 arg5, u16 arg6, u16 *arg7, u8 arg8, u8 arg9, u16 *arg10, u16 *arg11,
                    u16 arg12, u16 arg13) {
    u32 temp_r4;
    u32 i;
    u32 j;
    u16 *temp;
    
    arg0->unk0_b0 = arg1->unk0;
    temp_r4 = (!arg0->unk0_b0) ? 16 * sizeof(u16) : 32 * sizeof(u16);
    arg0->unk4 = arg1->unkC;
    arg0->unk0_b1 = 0;
    arg0->unk0_b2 = 0;
    arg0->unk8 = arg2;
    arg0->unkC = arg3;
    arg0->unk14 = arg4;
    arg0->unk15 = arg5;
    arg0->unk16 = arg6;
    arg0->unk18 = arg1->unk10;
    arg0->unk1C = &arg1->unk10[arg1->unk4 * arg1->unk8 * temp_r4];
    arg0->unk20 = arg1->unk4;
    arg0->unk21 = arg1->unk8;
    arg0->unk44 = arg7;
    arg0->unk4C = arg8;
    arg0->unk4D = arg9;
    arg0->unk58 = arg10;
    arg0->unk5C = arg11;
    arg0->unk52 = arg12;
    arg0->unk54 = arg13;

    for (i = 0; i < arg5; i++) {
        for (j = 0; j < arg4; j++) {
            (&arg7[i * arg4])[j] = (j + arg4 * i) & 0x3ff;
        }
    }
}

void func_080036c4(struct struct_08003070 *arg0, u16 arg1, u16 arg2) {
    u32 temp = arg0->unk4C + 1;
    u32 temp1 = arg0->unk4D + 1;
    
    arg0->unk10 = arg1 / 8;
    arg0->unk12 = arg2 / 8;
    arg0->unk48 = arg1;
    arg0->unk4A = arg2;
    arg0->unk4E = arg1 & 0xff;
    arg0->unk50 = arg2 & 0xff;
    func_0800351c(arg0, 0, 0, temp, temp1);
}

void func_08003720(struct struct_08003070 *arg0, u16 arg1, u16 arg2) {
    u32 temp_r8;
    u32 temp_r9;
    u32 temp_sl;
    u32 sp4;
    u32 temp_r2;
    u32 temp_r0;
    
    if ((arg0->unk48 == arg1) && (arg0->unk4A == arg2)) return;
    temp_r8 = arg1 / 8;
    temp_sl = arg2 / 8;
    temp_r2 = arg0->unk48;
    temp_r0 = arg0->unk4A;
    temp_r2 /= 8;
    temp_r9 = temp_r2;
    temp_r0 /= 8;
    sp4 = temp_r0;
    if ((temp_r8 == temp_r9) && (temp_sl == sp4)) {
        arg0->unk48 = arg1;
        arg0->unk4A = arg2;
        arg0->unk4E = arg1 & 0xff;
        arg0->unk50 = arg2 & 0xff;
        arg0->unk0_b1 = 1;
    } else {
        s32 temp_r5 = temp_r8 - temp_r9;
        s32 temp_r6 = temp_sl - sp4;
        temp_r5 = ABS(temp_r5);
        temp_r6 = ABS(temp_r6);
        
        if ((temp_r5 >= (arg0->unk4C + 1)) || (temp_r6 >= (arg0->unk4D + 1))) {
            func_080036c4(arg0, arg1, arg2);
        } else {
            u32 temp_r2;
            u32 temp_r7;
            
            arg0->unk10 = temp_r8;
            arg0->unk12 = temp_sl;
            arg0->unk48 = arg1;
            arg0->unk4A = arg2;
            arg0->unk4E = arg1 & 0xff;
            arg0->unk50 = arg2 & 0xff;
            
            if (temp_r5) {
                temp_r7 = arg0->unk4D + 1;
                
                if (temp_r8 >= temp_r9) {
                    u32 temp1 = arg0->unk4C;
                    u32 temp = temp_r5 - 1;
                    temp_r2 = temp1 - temp;
                } else {
                    temp_r2 = 0;
                }
                func_0800351c(arg0, temp_r2, 0, temp_r5, temp_r7);
            }
            if (temp_r6) {
                u32 temp1 = arg0->unk4C;
                u32 temp = temp_r5 - 1;
                u32 temp_r3 = temp1 - temp;
                u32 temp_r0;
                temp_r2 = (temp_r8 < temp_r9) ? temp_r5 : 0;
                
                if (temp_sl >= sp4) {
                    u32 temp1 = arg0->unk4D;
                    u32 temp = temp_r6 - 1;
                    temp_r0 = temp1 - temp;
                } else {
                    temp_r0 = 0;
                }
                func_0800351c(arg0, temp_r2, temp_r0, temp_r3, temp_r6);
            }
        }
    }
}

void func_0800387c(struct struct_0800387c *arg0, u8 *arg1) {
    while (arg0->unk0 != NULL) {
        dma3_set(arg0->unk0, arg1 + arg0->unk4 * 32, arg0->unk5 * 32, 32, 256);
        arg0++;
    }
}

u32 func_080038b0(struct PaletteInterpolator *arg0, struct struct_0800387c *arg1, u32 arg2, u32 arg3, u8 *arg4) {
    u16 *temp_r5;
    u16 *temp_r6;
    u16 *temp;
    u16 *temp1;
    u32 tempret = 0;
    
    for (tempret = 0; arg1->unk0 != NULL; arg0++, arg1++, tempret++) {
        while (arg0->isActive) {
            arg0++;
        }

        temp_r5 = (u16 *)(((u8 *)PaletteRAMBase) +  arg1->unk4 * 32);
        temp_r6 = (u16 *)(arg4 +  arg1->unk4 * 32);
        switch (arg3) {
            case 0:
                temp = (u16 *)arg1->unk0;
                func_08001cd8(arg0, arg2, arg1->unk5, temp, NULL, temp_r5, temp_r6);
                break;
            case 1:
                temp1 = (u16 *)arg1->unk0;
                func_08001c64(arg0, arg2, arg1->unk5, NULL, temp1, temp_r5, temp_r6);
                break;
            case 2:
                temp = (u16 *)arg1->unk0;
                func_08001cd8(arg0, arg2, arg1->unk5, temp, (u16 *)0x7fff, temp_r5, temp_r6);
                break;
            case 3:
                temp1 = (u16 *)arg1->unk0;
                func_08001c64(arg0, arg2, arg1->unk5, (u16 *)0x7fff, temp1, temp_r5, temp_r6);
                break;
        }
    }
    return tempret;
}

void func_08003974(struct struct_0800387c *arg0) {
    arg0->unk0 = NULL;
    arg0->unk5 = 0;
    arg0->unk4 = 0;
}

void func_08003980(struct struct_0800387c *arg0, struct struct_0800387c *arg1) {
    while (arg1->unk0 != NULL) {
        arg0->unk0 = arg1->unk0;
        arg0->unk4 = arg1->unk4;
        arg0->unk5 = arg1->unk5;
        arg0++;
        arg1++;
    }
    arg0->unk0 = NULL;
    arg0->unk5 = 0;
    arg0->unk4 = 0;
}

void func_080039a8(struct struct_0800387c *arg0, struct struct_0800387c *arg1, u32 arg2) {
    while ((arg1->unk0 != NULL) && (arg2 != 0)) {
        arg0->unk0 = arg1->unk0;
        arg0->unk4 = arg1->unk4;
        arg0->unk5 = arg1->unk5;
        arg0++;
        arg1++;
        arg2--;
    }
    arg0->unk0 = NULL;
    arg0->unk5 = 0;
    arg0->unk4 = 0;
}

void func_080039d4(struct struct_0800387c *arg0, u8 *arg1, u32 arg2, u32 arg3) {
    arg0->unk0 = arg1;
    arg0->unk4 = arg2;
    arg0->unk5 = arg3;
    arg0++;
    arg0->unk0 = NULL;
    arg0->unk5 = 0;
    arg0->unk4 = 0;
}

void func_080039e8(struct struct_0800387c *arg0, struct struct_0800387c *arg1) {
    while (arg0->unk0 != NULL) {
        arg0++;
    }
    func_08003980(arg0, arg1);
}

void func_08003a00(struct struct_0800387c *arg0, struct struct_0800387c *arg1, u32 arg2) {
    while (arg0->unk0 != NULL) {
        arg0++;
    }
    func_080039a8(arg0, arg1, arg2);
}

void func_08003a18(struct struct_0800387c *arg0, u8 *arg1, u32 arg2, u32 arg3) {
    while (arg0->unk0 != NULL) {
        arg0++;
    }
    func_080039d4(arg0, arg1, arg2, arg3);
}

void func_08003a34(struct struct_0800387c *arg0, u32 arg1) {
    u8 *temp = arg0->unk0;

    *temp++ = arg1;
    arg0->unk0 = temp;
}

void func_08003a40(struct struct_0800387c *arg0, u32 arg1) {
    u8 *temp = arg0->unk0;

    *temp++ = arg1;
    *temp++ = (arg1 >> 8);
    arg0->unk0 = temp;
}

void func_08003a50(struct struct_0800387c *arg0, u32 arg1) {
    u8 *temp = arg0->unk0;

    *temp++ = arg1;
    *temp++ = (arg1 >> 8);
    *temp++ = (arg1 >> 0x10);
    *temp++ = (arg1 >> 0x18);
    arg0->unk0 = temp;
}

u32 func_08003a6c(struct struct_0800387c *arg0) {
    u8 *temp = arg0->unk0;

    arg0->unk0 = (temp -= 1);
    return temp[0];
}

u32 func_08003a78(struct struct_0800387c *arg0) {
    u8 *temp = arg0->unk0;

    arg0->unk0 = (temp -= 2);
    return temp[0] | (temp[1] << 8);
}

u32 func_08003a88(struct struct_0800387c *arg0) {
    u8 *temp = arg0->unk0;

    arg0->unk0 = (temp -= 4);
    return temp[0] | (temp[1] << 8) | (temp[2] << 0x10) | (temp[3] << 0x18);
}


// Get Absolute Value (16 bits)
s16 func_08003aa4(s16 value) {
    return (value < 0) ? -value : value;
}


// Get Absolute Value (32 bits)
s32 func_08003ab8(s32 value) {
    return (value < 0) ? -value : value;
}


// Generate Shuffled Array of Values from MIN to MAX
void func_08003ac4(u16 *array, u16 min, u16 max) {
    u16 range;
    s32 i;

    range = max - min;

    for (i = 0; i <= range; i++) {
        array[i] = min + i;
    }

    for (i = range; i > 0; i--) {
        s32 rand = agb_random(i + 1);
        s32 prev = array[i];

        array[i] = array[rand];
        array[rand] = prev;
    }
}

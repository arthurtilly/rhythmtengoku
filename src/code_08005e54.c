#include "code_08005e54.h"
#include "memory_heap.h"
#include "code_08001360.h"


/* ? */

u32 func_08005e54(struct struct_08005e54 *arg0, s32 *arg1, s32 *arg2, s32 *arg3, s32 *arg4) {
    s32 temp_r2;
    s32 temp_ip;

    temp_r2 = *arg1 + *arg3;
    temp_ip = *arg2 + *arg4;

    if (((*arg1 >= arg0->unk4) || (temp_r2 <= 0)) || (*arg2 >= arg0->unk6) || (temp_ip <= 0)) {
        *arg4 = 0;
        *arg3 = 0;
        return 0;
    }
    if (*arg1 < 0) {
        *arg3 = temp_r2;
        *arg1 = 0;
    }
    if (temp_r2 > arg0->unk4) {
        *arg3 -= temp_r2 - arg0->unk4;
    }
    if (*arg2 < 0) {
        *arg4 += *arg2;
        *arg2 = 0;
    }
    if (temp_ip > arg0->unk6) {
        *arg4 -= temp_ip - arg0->unk6;
    }
    return *arg3 * *arg4;
}

void func_08005ee4(struct struct_08005e54 *arg0, u16 arg1) {
    func_08005f34(arg0, 0, 0, arg0->unk4, arg0->unk6, arg1);
}

void func_08005f04(struct struct_08005e54 *arg0, s32 arg1, s32 arg2, u16 arg3) {
    if ((arg1 >= 0) && (arg1 < arg0->unk4) && (arg2 >= 0) && (arg2 < arg0->unk6)) {
        arg0->unk0[arg1 + arg0->unk4 * arg2] = arg3;
    }
}

void func_08005f34(struct struct_08005e54 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, u16 arg5) {
    u16 *temp_r2;
    u32 i;
    
    if ((arg3 <= 0) || (arg4 <= 0)) {
        return;
    }
    if (func_08005e54(arg0, &arg1, &arg2, &arg3, &arg4) == 0) {
        return;
    }
    temp_r2 = &arg0->unk0[arg1] + arg2 * arg0->unk4; 
    if (arg3 > 1) {
        while (arg4-- != 0) {
            for (i = arg3; i >= 8; temp_r2 += 8, i -= 8) {
                temp_r2[7] = arg5;
                temp_r2[6] = arg5;
                temp_r2[5] = arg5;
                temp_r2[4] = arg5;
                temp_r2[3] = arg5;
                temp_r2[2] = arg5;
                temp_r2[1] = arg5;
                temp_r2[0] = arg5;
            }
            for (i; i != 0; temp_r2++, i--) {
                temp_r2[0] = arg5;
            }
            temp_r2 += arg0->unk4 - arg3;
        }
        return;
    }
    while (arg4--) {
        *temp_r2 = arg5;
        temp_r2 += arg0->unk4;
    }
}

void func_08005fe4(struct struct_08005e54 *arg0, u16 arg1[10], s32 arg2, s32 arg3, s32 arg4, s32 arg5, u32 arg6) {
    func_08005f34(arg0, arg2 + 1, arg3, arg4 - 2, 1, arg1[1]);
    func_08005f34(arg0, arg2 + 1, arg5 + arg3 - 1, arg4 - 2, 1, arg1[7]);
    func_08005f34(arg0, arg2, arg3 + 1, 1, arg5 - 2, arg1[3]);
    func_08005f34(arg0, arg4 + arg2 - 1, arg3 + 1, 1, arg5 - 2, arg1[5]);
    func_08005f04(arg0, arg2, arg3, arg1[0]);
    func_08005f04(arg0, arg4 + arg2 - 1, arg3, arg1[2]);
    func_08005f04(arg0, arg2, arg3 + arg5 - 1, arg1[6]);
    func_08005f04(arg0, arg4 + arg2 - 1, arg3 + arg5 - 1, arg1[8]);
    if (arg6) {
        func_08005f34(arg0, arg2 + 1, arg3 + 1, arg4 - 2, arg5 - 2, arg1[4]);
    }
    
}

void func_080060bc(u16 arg0[10], u16 arg1[10], u16 *arg2) {
    if (arg2 != NULL) {
        arg1[4] = arg2[arg0[4] & 0x3ff] | (arg0[4] & ~0x3ff);
        arg1[1] = arg2[arg0[1] & 0x3ff] | (arg0[1] & ~0x3ff);
        arg1[7] = arg2[arg0[7] & 0x3ff] | (arg0[7] & ~0x3ff);
        arg1[3] = arg2[arg0[3] & 0x3ff] | (arg0[3] & ~0x3ff);
        arg1[5] = arg2[arg0[5] & 0x3ff] | (arg0[5] & ~0x3ff);
        arg1[0] = arg2[arg0[0] & 0x3ff] | (arg0[0] & ~0x3ff);
        arg1[2] = arg2[arg0[2] & 0x3ff] | (arg0[2] & ~0x3ff);
        arg1[6] = arg2[arg0[6] & 0x3ff] | (arg0[6] & ~0x3ff);
        arg1[8] = arg2[arg0[8] & 0x3ff] | (arg0[8] & ~0x3ff);
        return;
    }
    dma3_set(arg0, arg1, 10 * sizeof(u16), 32, 0x100);
}

void func_080061a4(struct struct_08005e54 *arg0, struct BitmapFontBG *arg1, s32 arg2, s32 arg3, const char *arg4, u32 arg5) {
    bmp_font_bg_print_text(arg1, &arg0->unk0[arg2 + arg3 * arg0->unk4], arg0->unk4, arg4, arg5);
}

s32 func_080061d0(u16 arg0, struct struct_08005e54 *arg1, struct BitmapFontBG *arg2, s32 arg3, s32 arg4, 
                    const char *arg5, u32 arg6, u32 arg7) {
    return start_bmp_font_bg_printer_task(arg0, arg2, &arg1->unk0[arg3 + arg4 * arg1->unk4], arg1->unk4, arg5, arg6, arg7);
}

void func_0800620c(struct struct_08005e54 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, 
                    struct struct_08005e54 *arg5, s32 arg6, s32 arg7) {
    s32 oarg1 = arg1;
    s32 oarg2 = arg2;
    u32 i;
    u32 j;
    u16 *temp_r1;
    u16 *temp_r2;
    
    if (func_08005e54(arg0, &arg1, &arg2, &arg3, &arg4) == 0) {
        return;
    }
    oarg1 = arg6 + (arg1 - oarg1);
    arg6 = oarg1;
    oarg2 = arg7 + (arg2 - oarg2);
    arg7 = oarg2;
    if (func_08005e54(arg5, &arg6, &arg7, &arg3, &arg4) == 0) {
        return;
    }
    arg1 += arg6 - oarg1;
    arg2 += arg7 - oarg2;

    temp_r2 = &arg0->unk0[arg1] + arg0->unk4 * arg2;
    temp_r1 = &arg5->unk0[arg6] + arg5->unk4 * arg7;

    for (i = 0; i < arg4; i++) {
        for (j = 0; j < (arg3 >> 3); temp_r2 += 8, temp_r1 += 8, j++) {
            temp_r1[0] = temp_r2[0];
            temp_r1[1] = temp_r2[1];
            temp_r1[2] = temp_r2[2];
            temp_r1[3] = temp_r2[3];
            temp_r1[4] = temp_r2[4];
            temp_r1[5] = temp_r2[5];
            temp_r1[6] = temp_r2[6];
            temp_r1[7] = temp_r2[7];
        }
        for (j = 0; j < (arg3 & 7); temp_r2++, temp_r1++, j++) {
            temp_r1[0] = temp_r2[0];
        }
        temp_r2 += arg0->unk4 - arg3;
        temp_r1 += arg5->unk4 - arg3;
    }
}

struct struct_08005e54 *func_08006328(u16 arg0, s32 arg1, s32 arg2) {
    struct struct_08005e54 *temp;

    temp = mem_heap_alloc_id(arg0, sizeof(struct struct_08005e54));
    temp->unk0 = mem_heap_alloc_id(arg0, arg2 * arg1 * sizeof(u16));
    temp->unk4 = arg1;
    temp->unk6 = arg2;
    return temp;
}

void func_08006364(struct struct_08005e54 *arg0) {
    mem_heap_dealloc(arg0->unk0);
    mem_heap_dealloc(arg0);
}

void func_0800637c(struct struct_08005e54 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, u16 arg5) {
    u32 i;
    u32 j;
    u16 *temp_r6;
    u16 *temp_r1;
    u16 temp_r4 = arg5 << 0xc;
    u16 temp_r5 = 0xfff;

    temp_r6 = &arg0->unk0[arg1] + arg2 * arg0->unk4;
    for (i = 0; i < arg4; i++) {
        temp_r1 = temp_r6;
        for (j = 0; j < (arg3 >> 3); temp_r1 += 8, j++) {
            temp_r1[0] = (temp_r1[0] & temp_r5) | temp_r4;
            temp_r1[1] = (temp_r1[1] & temp_r5) | temp_r4;
            temp_r1[2] = (temp_r1[2] & temp_r5) | temp_r4;
            temp_r1[3] = (temp_r1[3] & temp_r5) | temp_r4;
            temp_r1[4] = (temp_r1[4] & temp_r5) | temp_r4;
            temp_r1[5] = (temp_r1[5] & temp_r5) | temp_r4;
            temp_r1[6] = (temp_r1[6] & temp_r5) | temp_r4;
            temp_r1[7] = (temp_r1[7] & temp_r5) | temp_r4;
        }
        for (j = 0; j < (arg3 & 7); j++, temp_r1++) {
            temp_r1[0] = (temp_r1[0] & temp_r5) | temp_r4;
        }
        temp_r6 += arg0->unk4;
    }
}

void func_08006448(struct struct_08005e54 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, u16 arg5) {
    u32 i;
    u32 j;
    u16 *temp_r6;
    u16 *temp_r1;
    u16 temp_r4 = arg5 << 0xc;

    temp_r6 = &arg0->unk0[arg1] + arg2 * arg0->unk4;
    for (i = 0; i < arg4; i++) {
        temp_r1 = temp_r6;
        for (j = 0; j < (arg3 >> 3); temp_r1 += 8, j++) {
            temp_r1[0] |= temp_r4;
            temp_r1[1] |= temp_r4;
            temp_r1[2] |= temp_r4;
            temp_r1[3] |= temp_r4;
            temp_r1[4] |= temp_r4;
            temp_r1[5] |= temp_r4;
            temp_r1[6] |= temp_r4;
            temp_r1[7] |= temp_r4;
        }
        for (j = 0; j < (arg3 & 7); j++, temp_r1++) {
            temp_r1[0] |= temp_r4;
        }
        temp_r6 += arg0->unk4;
    }
}

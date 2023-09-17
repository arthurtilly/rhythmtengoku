#include "code_08008dcc.h"

//#include "code_08001360.h" // Header was probably not included: u16 agb_random(u16) read as s32(s32)

static u32 D_030010f4;
static u8 D_030010f8;
static u8 D_030010f9;
static void (*D_030010fc)(s32);
static s32 D_03001100;
static s32 D_03001104;
static void (*D_03001108)(s32);
static s32 D_0300110c;


// Set of Natural Numbers from 0
void math_arr_set_natural_int8(s8 arr[], u32 len) {
    u32 i;

    for (i = 0; i < len; i++) {
        arr[i] = i;
    }
}


// Set of Natural Numbers from 0
void math_arr_set_natural_int16(s16 arr[], u32 len) {
    u32 i;

    for (i = 0; i < len; i++) {
        arr[i] = i;
    }
}


// Set of Natural Numbers from 0
void math_arr_set_natural_int32(s32 arr[], u32 len) {
    u32 i;

    for (i = 0; i < len; i++) {
        arr[i] = i;
    }
}


// Shuffled Set of Natural Numbers
void math_arr_set_shuffled_int8(s8 arr[], u32 len) {
    u32 i;

    math_arr_set_natural_int8(arr, len);
    
    for (i = 0; i < len; i++) {
        u32 r = agb_random(len);
        s8 n = arr[i];

        arr[i] = arr[r];
        arr[r] = n;
    }
}


// Shuffled Set of Natural Numbers
void math_arr_set_shuffled_int16(s16 arr[], u32 len) {
    u32 i;

    math_arr_set_natural_int16(arr, len);
    
    for (i = 0; i < len; i++) {
        u32 r = agb_random(len);
        s16 n = arr[i];

        arr[i] = arr[r];
        arr[r] = n;
    }
}


// Shuffled Set of Natural Numbers
void math_arr_set_shuffled_int32(s32 arr[], u32 len) {
    u32 i;

    math_arr_set_natural_int32(arr, len);
    
    for (i = 0; i < len; i++) {
        u32 r = agb_random(len);
        s32 n = arr[i];

        arr[i] = arr[r];
        arr[r] = n;
    }
}


// Invert (Palette?)
void math_arr_invert_palette(s16 src[], s16 dest[], u32 total) {
    u32 i;

    for (i = 0; i < (total * 16); i++) {
        dest[i] = 0x7FFF - src[i];
    }
}


// Retrieve Item from Array at Scene-related Index
s32 math_arr_get_scene(s32 arr[]) {
    u32 id = scene_get_default_text_id();

    if (arr == NULL) {
        return 0;
    }

    return arr[id];
}


// Retrieve Item from Array at Given Index
s32 math_arr_get_i(s32 arr[], u32 id) {
    if (arr == NULL) {
        return 0;
    }

    return arr[id];
}


// LERP
s32 math_lerp(s32 v1, s32 v2, u32 t, u32 total) {
    return fast_divsi3((v2 - v1) * t, total) + v1;
}



//
s32 func_08008f1c(void) {
    u32 i;
    u32 temp2 = 1000000;
    D_0E000000 = 0x70;
	
    for (i = 0; i < temp2; i++) {
        u8 temp = D_0E000002;
        if (temp & 0x40) {
            D_030010f4 = i;
            return temp & 1;
        }
    }
	
    D_030010f4 = i;
    return -1;
}


//
u32 func_08008f68(void) {
	return D_030010f4;
}


//
s32 func_08008f74(void) {
    volatile u32 temp;
    D_0E000003 = 1;
    D_0E000000 = 0xFF;
    D_0E000000 = 0x90;
    
    for (temp = 0; temp < 100; temp++) {}
    
    D_0E000002 = 0;
    
    for (temp = 0; temp < 100; temp++) {}
    
    D_030010f8 = D_0E000002;
    D_030010f9 = D_0E000002;
    return func_08008f1c();
}


//
void func_08008fe0(u8 *arg0, u8 *arg1) {
    *arg0 = D_030010f8;
    *arg1 = D_030010f9;
}


//
s32 func_08008ff8(u32 arg0) {
    volatile u32 unused;
    D_0E000000 = 0xFF;
    D_0E000000 = 0x60;
    arg0 *= 32;
    D_0E000001 = arg0;
    D_0E000001 = arg0 >> 8;
    D_0E000000 = 0xD0;
    return func_08008f1c();
}


//
u32 func_08009024(void) {
    u32 i;
    for (i = 0; i < 0x400; i++) {
        s32 temp = func_08008ff8(i);
        if (temp != 0) {
            return temp;
        }
    }
    return 0;
}


//
s32 func_08009048(u32 arg0, u8 arg1[]) {
    u32 i;
    volatile u32 unused;
    D_0E000000 = 0xFF;
    D_0E000000 = 0x80;
    D_0E000001 = 0;
    D_0E000001 = arg0;
    D_0E000001 = arg0 >> 8;
	
    for (i = 0; i < UNK_SIZE_210; i++) {
        D_0E000002 = arg1[i];
    }
	
    D_0E000000 = 0x10;
    return func_08008f1c();
}


//
s32 func_08009090(u32 arg0, u8 arg1[], u32 arg2) {
    u32 temp1 = arg0;
    u32 temp2 = (arg2 + UNK_SIZE_210 - 1) / UNK_SIZE_210;
    s32 temp3;
    while (arg0 < temp1 + temp2) {
        temp3 = func_08009048(arg0, arg1);
        if (temp3 != 0) {
            return temp3;
        }
        arg1 += UNK_SIZE_210;
        arg0++;
    }
    return temp3;
}


//
void func_080090d0(void) {
    volatile u32 temp;
    for (temp = 0; temp < 200; temp++) {}
}


//
void func_080090ec(u32 arg0, u8 arr[], u32 len) {
    u32 i;
    
    if (len == 0) {
        return;
    }
    
    D_0E000000 = 0xFF;
    D_0E000000 = 0;
    D_0E000003 = 0;
    D_0E000001 = 0;
    D_0E000001 = arg0;
    D_0E000001 = arg0 >> 8;
    
    while (len != 0) {
        u32 n = len;

        if (n > UNK_SIZE_210) {
            n = UNK_SIZE_210;
        }

        len -= n;
        func_080090d0();

        for (i = 0; i < n; i++) {
            *arr++ = D_0E000002;
        }
    }
    
    D_0E000003 = 1;
}


// Possible split


void func_08009150(void) {
    D_030010fc = NULL;
}

void func_0800915c(void) {
    REG_IE |= INTERRUPT_HBLANK;
    REG_DISPSTAT |= DISPSTAT_HBLANK_IRQ;
}

void func_0800917c(void) {
    REG_IE &= ~INTERRUPT_HBLANK;
    REG_DISPSTAT &= ~DISPSTAT_HBLANK_IRQ;
}

void func_080091a4(void) {
    if (D_030010fc != NULL) {
        D_030010fc(D_03001100);
    }
}

void func_080091c4(void arg0(s32), s32 arg1) {
    D_030010fc = arg0;
    D_03001100 = arg1;
}

void func_080091d8(void) {
    D_03001104 = 0;
    D_03001108 = NULL;
    REG_DISPSTAT &= ~DISPSTAT_VCOUNT_LINE_TRIG_MASK;
}

void func_080091fc(void) {
    REG_IE |= INTERRUPT_VCOUNT;
    REG_DISPSTAT |= DISPSTAT_VCOUNT_IRQ;
}

void func_0800921c(void) {
    REG_IE &= ~INTERRUPT_VCOUNT;
    REG_DISPSTAT &= ~(DISPSTAT_VCOUNT_IRQ | DISPSTAT_VCOUNT_LINE_TRIG_MASK);
}

void func_08009240(s32 arg0) {
    D_03001108(D_0300110c);
    func_080091c4(NULL,0);
    func_0800917c();
}

void func_08009268(void) {
    if (D_03001108 != NULL) {
        func_080091c4(func_08009240, 0);
        func_0800915c();
    }
}

void func_0800928c(s32 arg0, void arg1(s32), s32 arg2) {
    D_03001108 = arg1;
    D_0300110c = arg2;
    D_03001104 = arg0 - 1;
    if (arg1 != NULL) {
        REG_DISPSTAT = (REG_DISPSTAT & ~DISPSTAT_VCOUNT_LINE_TRIG_MASK) | (D_03001104 << 8);
        func_080091fc();
    } else {
        func_0800921c();
    }
}

#include "memory.h"

asm(".include \"include/gba.inc\"");//Temporary

static u16 sEWRAMSaveBufferStart;
static u16 sEWRAMSaveBufferEnd;
static u16 sEWRAMMemoryHeapStart;
static u16 sEWRAMMemoryHeapLength;
static s32 unused_03000094; // unknown

// Initiate the size and positions of the save buffer and memory heap.
void init_ewram(void) {
    u16 ewramStart = 4;
    u16 ewramEnd = 0x10000 - 4;
    u16 saveBufferLength = SAVE_BUFFER_SIZE / 4;
	u16 saveEnd, heapLength;
	
    sEWRAMSaveBufferStart = ewramStart;
    saveEnd = ewramStart + saveBufferLength;
	heapLength = ewramEnd - saveBufferLength;
    sEWRAMSaveBufferEnd = saveEnd;
	
    sEWRAMMemoryHeapStart = saveEnd;
    sEWRAMMemoryHeapLength = heapLength;
}

void *get_save_buffer_start(void) {
	return (void *)(ExternWorkRAMBase + sEWRAMSaveBufferStart*4);
}

void *get_save_buffer_end(void) {
	return (void *)(ExternWorkRAMBase + sEWRAMSaveBufferEnd*4);
}

void *get_memory_heap_start(void) {
	return (void *)(ExternWorkRAMBase + sEWRAMMemoryHeapStart*4);
}

u32 get_memory_heap_length(void) {
	return sEWRAMMemoryHeapLength*4;
}

s32 func_08000794(s32 *arg1, u32 arg2) {
	u32 temp1, temp2;
	u32 i;
	s32 total = 0;
	
    arg2 /= 4;
    temp1 = arg2 / 16;
    temp2 = arg2 - (temp1 * 16);
	
	for (i = 0; i < temp1; i++) {
		total += arg1[0];
		total += arg1[1];
		total += arg1[2];
		//total += arg1[3]; // lmao why is this missing
		total += arg1[4];
		total += arg1[5];
		total += arg1[6];
		total += arg1[7];
		total += arg1[8];
		total += arg1[9];
		total += arg1[10];
		total += arg1[11];
		total += arg1[12];
		total += arg1[13];
		total += arg1[14];
		total += arg1[15];
        arg1 += 16;
	}
	for (i = 0; i < temp2; i++) {
		total += arg1[i];
	}
	return total;
}

// inconsistent with other functions, might be able to figure out once func_0804c96c is known (lib function?)
void func_08000804(void) {
    s32 **temp;
	
    func_0804c96c();
	
    temp = &D_030046a8;
    *temp = get_save_buffer_start();
}

void func_0800081c(void) {
    s32 *temp = D_030046a8;
    func_080018e0(0,temp,SAVE_BUFFER_SIZE,0x20,0x100);
    strcpy(temp, &D_08935fbc);
    temp[1] = SAVE_BUFFER_SIZE;
    temp[2] = 0;
    temp[3] = 0x26040000;
    func_080102f4();
}

s32 func_08000868(s32 *arg1) {
    s32 *temp = D_030046a8;
	
    D_030064c8(arg1, temp, SAVE_BUFFER_SIZE);
	
    if (func_0800820c(temp, &D_08935fbc, 0x4) != 0) {
        return 1;
    }
	
    if (func_08000794(D_030046a8, SAVE_BUFFER_SIZE) - temp[2] != temp[2]) {
        return 2;
    }
	
    return 0;
}

s32 func_080008bc(void) {
	return func_08000868(D_08935fb4);
}

s32 func_080008d0(void) {
	return func_08000868(D_08935fb8);
}

void func_080008e4(s32 *arg1) {
    s32 *temp = D_030046a8;

    temp[2] = 0;
    temp[2] = func_08000794(D_030046a8, SAVE_BUFFER_SIZE);
	
    func_0804c8b0(D_030046a8,arg1,SAVE_BUFFER_SIZE);
}

// types here are probably weird, some kind of offset calculator
s32 func_0800091c(s32 *arg1) {
	return (u32)arg1 - (u32)D_030046a8;
}

void func_08000928(s32 *arg1) {
    s32 *temp = D_030046a8;
    s32 temp2 = func_0800091c(temp); // isnt this literally always 0

    temp[2] = 0;
    temp[2] = func_08000794(D_030046a8,SAVE_BUFFER_SIZE);

    func_0804c8b0((u32)D_030046a8 + temp2,(u32)arg1 + temp2,0x10);
}

void func_0800096c(s32 *arg1, s32 arg2) {
    s32 temp2;

    func_08000928(D_08935fb4);
    temp2 = func_0800091c(arg1);

    func_0804c8b0((u32)D_030046a8 + temp2,(u32)D_08935fb4 + temp2,arg2);
}

void func_080009a0(void) {
	func_080008e4(D_08935fb4);
}

void func_080009b4(void) {
	func_080008e4(D_08935fb8);
}

void func_080009c8_stub(void) {

}

void func_080009cc_stub(void) {

}

s32 func_080009d0(s16 *arg1) {
    if ((func_0800820c(arg1, &D_08935fc4, 4) == 0) && (arg1[2] == arg1[3])) {
        return arg1[2];
    }
    return 0;
}

s32 func_080009fc(void) {
	return 0;
}

#include "common.h"

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A370);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A37C);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A4D0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A610);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A650);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A6E8);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A704);

// INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A854);
typedef struct UnkSructFromfunc8013A854 {
    /* 0x00 */ char unk_00[0x10];
    /* 0x10 */ u16 unk10;
    /* 0x11 */ char unk_11[0x03];
    /* 0x14 */ u16 unk14;
    /* 0x15 */ char unk_15[0x67];
} UnkSructFromfunc8013A854; // size = 0x7C

void func_8013A854(u32 a0) {
    UnkSructFromfunc8013A854* v0 = D_80156954;
    s32 temp_v0;
    s32 phi_return;
    if (a0 < 0x5AU) { // sltiu $v0, $a0, 0x5a bool result of less then compare, won't run code if equal 0
        // phi_return = a0 << 5;
        s32 v1 = 0x80156954; 
        v0 = (a0 * 0x7C) + 0x80156954;
        v0 = v0 - a0;
        v0 = 0x80156954 << 2;
        v0 = v0 + v1;
        v0->unk14 = 0;
        v0->unk10 = (u16)-1;
        phi_return = v0;
    }
}

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A888);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A8E0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A920);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A93C);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A9C8);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A9E8);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013AA9C);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013AF20);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013AF70);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013B0EC);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013B1B0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013BC88);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013C048);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013C220);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013C3F0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013CFA8);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013DAB4);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013E2F0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013E904);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013EE48);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013EE68);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013F1F8);

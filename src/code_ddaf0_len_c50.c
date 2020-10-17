#include "common.h"

typedef struct {
    /* 0x00 */ u8 unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ char unk_01[0x10];
    /* 0x1C */ u8 unk_1C;
} struct_80159D50; // size = 0x20

extern struct_80159D50 D_80159D50[0x40];

void func_801473F0(void) {
    struct_80159D50* phi_v1 = &D_80159D50;
    s32 i;

    for (i = 0; i < 0x40; i++) {
        phi_v1->unk_00 = 0;
        phi_v1++;
    }
}

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147414);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147474);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147574);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147650);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147698);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147AC4);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", set_ui_panel_properties);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147D70);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147E48);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147E7C);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147EC4);

INCLUDE_ASM(s32, "code_ddaf0_len_c50", func_80147F30);

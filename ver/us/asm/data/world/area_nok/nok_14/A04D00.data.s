.include "macro.inc"

.section .data

glabel D_802424C0_A04D00
.word 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802445B0, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242510_A04D50
.word 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802445B8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242560_A04DA0
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x0000007D, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x0000007E, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x0000007F, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000005, 0x00000001, 0x0000000C, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000005, 0x00000001, 0x0000000C, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000004, 0x00000001, 0x0000000A, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242648_A04E88
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x00000086, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000087, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000001, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000001, 0x00000001, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x00000064, 0x00000028, 0x00000002, 0xFE363C81, 0x00000190, 0x00000027, 0x00000002, 0xFE363C81, 0x000003E8, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x00000083, 0x00000002, 0x00000043, 0x00000003, SetTexPanner, 0x00000084, 0x00000002, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000003, 0x00000001, 0x00000014, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000002, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000002, 0x00000001, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x00000064, 0x00000027, 0x00000002, 0xFE363C81, 0x00000320, 0x00000028, 0x00000002, 0xFE363C82, 0x00000190, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000014, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x00000081, 0x00000003, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000003, 0x00000001, 0x0000001E, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000003, 0x00000000, 0x00000000, 0xFE363C80, 0x00000028, 0x00000002, 0xFE363C80, 0x000003E8, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x0000001E, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802428C0_A05100
.word 0x00000047, 0x00000005, D_802424C0_A04D00, 0x00080000, 0x00000005, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80242510_A04D50, 0x00080000, 0x00000015, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242908_A05148
.word 0x00000003, 0x00000001, 0x00000000, 0x0000000F, 0x00000002, 0xF5DE0180, 0xFFFFFFA5, 0x00000043, 0x00000007, func_80240000_A02840, 0xFFFFFF8D, 0x0000006E, 0xFFFFFF92, 0x000003E7, 0x00000000, 0x00000002, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000020, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8024456C, 0x00000046, 0x00000001, 0x80242CD0, 0x00000044, 0x00000001, D_80242560_A04DA0, 0x00000044, 0x00000001, D_80242648_A04E88, 0x00000044, 0x00000001, 0x80243714, 0x00000044, 0x00000001, D_80242908_A05148, 0x00000044, 0x00000001, 0x80242480, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000004, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000014, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, D_802428C0_A05100, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000

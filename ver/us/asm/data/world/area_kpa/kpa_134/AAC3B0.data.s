.include "macro.inc"

.section .data

glabel D_80243410_AAC3B0
.word 0x0000000A, 0x00000002, 0xF84061B6, 0x00000001, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C85, 0xFFFFFF20, 0x00000043, 0x00000005, MakeLerp, 0x00000163, 0x00000172, 0x00000004, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, kpa_134_SetEntityPosition, 0xFD050F80, 0xFE363C85, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000028, 0x00000002, 0xFE363C85, 0x00000002, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFE363C80, 0x000000F0, 0x00000010, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, kpa_134_SetEntityPosition, 0xFD050F80, 0xFE363C85, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000028, 0x00000002, 0xFE363C85, 0x00000002, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243598_AAC538
.word 0x0000001A, 0x00000000

glabel D_802435A0_AAC540
.word 0x00000043, 0x00000001, func_802D6420, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00D8, 0x000000A0, 0x00000028, 0x00000043, 0x00000001, func_802D6954, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0xFFFFFFFF, 0x00000043, 0x00000001, func_802D6954, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, RemoveKeyItemAt, 0xFE363C81, 0x00000024, 0x00000002, 0xF84061B5, 0x00000001, 0x00000043, 0x00000005, kpa_134_GetEntityPosition, 0xFD050F81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, PlaySoundAt, 0x00000269, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C80, 0xFD050F81, 0x00000043, 0x00000001, kpa_134_SetEntityFlags100000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000001, func_802D6954, 0x00000048, 0x00000000, 0x00000047, 0x00000005, 0x802408E8, 0x00000100, 0x00000027, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF84061B5, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802BCD68, 0x000002E7, 0x0000000A, 0x00000073, 0x0000010E, D_80000000, 0x00000024, 0x00000002, 0xFD050F81, 0xFE363C80, 0x0000004E, 0x00000006, D_802435A0_AAC540, 0x00000100, 0x00004000, D_80243598_AAC538, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000047, 0x00000005, 0x802408E8, 0x00000100, 0x00000027, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xF84061B6, 0x00000000, 0x00000043, 0x00000007, MakeEntity, D_802E9BD4, 0xFFFFFF20, 0x00000163, 0xFFFFFFE7, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignAreaFlag, 0x00000009, 0x00000024, 0x00000002, 0xFD050F80, 0xFE363C80, 0x00000013, 0x00000000, 0x00000043, 0x00000007, MakeEntity, D_802EA0C4, 0xFFFFFF20, 0x0000014A, 0xFFFFFFE7, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80243410_AAC3B0, 0x00000043, 0x00000008, MakeEntity, 0x802EAA54, 0x000001DB, 0x00000000, 0xFFFFFFEC, 0x0000005A, 0x0000003C, D_80000000, 0x00000043, 0x00000008, MakeEntity, 0x802EA588, 0x000000C3, 0x0000012C, 0xFFFFFFB5, 0x00000000, 0x000000A3, D_80000000, 0x00000043, 0x00000002, AssignBlockFlag, 0xF84061B7, 0x00000002, 0x00000000, 0x00000001, 0x00000000

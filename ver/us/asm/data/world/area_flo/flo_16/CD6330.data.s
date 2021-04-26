.include "macro.inc"

.section .data

glabel D_80244500_CD6330
.word 0x00000043, 0x00000001, func_80242940_CD4770, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x0000000A, 0x00000002, 0xF97188A9, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0x00000032, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0x000000B4, 0x00000024, 0x00000002, 0xF97188A9, 0x00000001, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000032, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x000000B4, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xF97188A9, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000002, PlaySound, 0x0000204D, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000001E, 0xF24A7DB4, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7B4D, 0x00000057, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFE363C85, 0xFE363C86, 0x0000001E, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x0000005E, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000061, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000006C, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x0000006F, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000061, 0xFE363C87, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x0000006F, 0xFE363C87, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001A, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001B, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000020, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000021, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, MakeLerp, 0xFE363C87, 0xFE363C88, 0x0000000F, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x0000005E, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000061, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000006C, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x0000006F, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000061, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x0000006F, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802448FC_CD672C
.word 0x00000043, 0x00000001, func_80242940_CD4770, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x0000000A, 0x00000002, 0xF97188AA, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0x00000032, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0x000000B4, 0x00000024, 0x00000002, 0xF97188AA, 0x00000001, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000032, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x000000B4, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xF97188AA, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000002, PlaySound, 0x0000204D, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000001E, 0xF24A7DB4, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7B4D, 0x00000057, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFE363C85, 0xFE363C86, 0x0000001E, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x00000065, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000068, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000073, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000076, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000081, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000084, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000068, 0xFE363C87, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000076, 0xFE363C87, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000084, 0xFE363C87, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001D, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001E, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000023, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000024, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000029, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000002A, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, MakeLerp, 0xFE363C87, 0xFE363C88, 0x0000000F, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x00000065, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000068, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000073, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000076, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000081, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x00000084, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000068, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000076, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000084, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80244DC8_CD6BF8
.word 0x00000043, 0x00000001, func_80242940_CD4770, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x0000000A, 0x00000002, 0xF97188AB, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0xFFFFFFCE, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0x000000B4, 0x00000024, 0x00000002, 0xF97188AB, 0x00000001, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0xFFFFFFCE, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x000000B4, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xF97188AB, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000002, PlaySound, 0x0000204D, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000001E, 0xF24A7DB4, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7B4D, 0x00000057, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFE363C85, 0xFE363C86, 0x0000001E, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x0000007A, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x0000007D, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000088, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x0000008B, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x0000007D, 0xFE363C87, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x0000008B, 0xFE363C87, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000026, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000027, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000002C, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000002D, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, MakeLerp, 0xFE363C87, 0xFE363C88, 0x0000000F, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x0000007A, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x0000007D, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000088, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000005, TranslateGroup, 0x0000008B, 0x00000000, 0xFE363C86, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x0000007D, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x0000008B, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF97188A9, 0x00000000, 0x00000024, 0x00000002, 0xF97188AA, 0x00000000, 0x00000024, 0x00000002, 0xF97188AB, 0x00000000, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000001A, 0x0000005E, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000001B, 0x0000005E, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000001D, 0x00000065, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000001E, 0x00000065, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000020, 0x0000006C, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000021, 0x0000006C, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000023, 0x00000073, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000024, 0x00000073, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000026, 0x0000007A, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000027, 0x0000007A, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000029, 0x00000081, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000002A, 0x00000081, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000002C, 0x00000088, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000002D, 0x00000088, 0x00000047, 0x00000005, D_80244500_CD6330, 0x00000080, 0x0000001A, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802448FC_CD672C, 0x00000080, 0x0000001D, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80244500_CD6330, 0x00000080, 0x00000020, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802448FC_CD672C, 0x00000080, 0x00000023, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80244DC8_CD6BF8, 0x00000080, 0x00000026, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802448FC_CD672C, 0x00000080, 0x00000029, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80244DC8_CD6BF8, 0x00000080, 0x0000002C, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

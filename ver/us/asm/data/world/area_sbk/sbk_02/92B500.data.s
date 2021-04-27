.include "macro.inc"

.section .data

glabel D_80241250_92B500
.word 0x00000012, 0x00000000

glabel D_80241258_92B508
.word 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x0000000D, 0x0000005F, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0xFFFFFFCE, 0x00000032, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x00000082, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000082, 0x00000000, 0xFE363C80, 0x00000000, 0x00000028, 0x00000002, 0xFE363C82, 0x0000000A, 0x0000002C, 0x00000002, 0xFE363C83, 0xF24A7B4D, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000000D, 0x7FFFFE00, 0x00000043, 0x00000003, EnableModel, 0x00000082, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x8000005F, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241418_92B6C8
.word 0x00000072, 0x0000007D, 0x0000FFFF

glabel D_80241424_92B6D4
.word 0x0000007E, 0x00000080, 0x0000FFFF

glabel D_80241430_92B6E0
.word 0x00000043, 0x00000004, sbk_02_UnkFunc27, 0x00000002, 0x00000000, 0x00000003, 0x00000043, 0x00000004, sbk_02_UnkFunc27, 0x00000001, 0xFFFFFFFF, 0x00000003, 0x00000043, 0x00000004, sbk_02_UnkFunc27, 0x00000001, D_80241418_92B6C8, 0x00000000, 0x00000043, 0x00000004, sbk_02_UnkFunc27, 0x00000000, D_80241424_92B6D4, 0x00000000, 0x00000043, 0x00000008, func_80240364_92A614, 0x000000FF, 0x000000FF, 0x000000FF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000008, func_80240364_92A614, 0x0000002C, 0x00000020, 0x000000B1, 0x00000000, 0x00000000, 0x00000000, 0x0000003C, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802414FC_92B7AC
.word 0x00000043, 0x00000003, SetRenderMode, 0x00000080, 0x00000016, 0x00000043, 0x00000003, EnableTexPanning, 0x00000080, 0x00000001, 0x00000043, 0x00000003, EnableTexPanning, 0x00002710, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000003, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000003, 0x00000001, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00001770, 0x00000027, 0x00000002, 0xFE363C81, 0x00001388, 0x00000027, 0x00000002, 0xFE363C82, 0x00000FA0, 0x0000000D, 0x00000002, 0xFE363C80, 0x00020000, 0x00000028, 0x00000002, 0xFE363C80, 0x00020000, 0x00000013, 0x00000000, 0x0000000D, 0x00000002, 0xFE363C81, 0x00020000, 0x00000028, 0x00000002, 0xFE363C81, 0x00020000, 0x00000013, 0x00000000, 0x0000000D, 0x00000002, 0xFE363C82, 0x00020000, 0x00000028, 0x00000002, 0xFE363C82, 0x00020000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241678_92B928
.word 0x00000043, 0x00000003, EnableModel, 0x00000080, 0x00000001, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0xFFFFFF9C, 0x00000005, 0x00000001, 0x00000064, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C82, 0x0000002F, 0x00000002, 0xFE363C83, 0x00000050, 0x00000043, 0x00000005, ScaleModel, 0x00000080, 0xFE363C83, 0xF24A7E80, 0xFE363C83, 0x00000043, 0x00000005, TranslateModel, 0x00000080, 0x00000000, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000027, 0x00000002, 0xFE363C82, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, ScaleModel, 0x00000080, 0xFE363C83, 0xF24A7E80, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241790_92BA40
.word 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, EnableModel, 0x00002710, 0x00000001, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0xFFFFFF9C, 0x00000005, 0x00000001, 0x00000064, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C82, 0x0000002F, 0x00000002, 0xFE363C83, 0x0000006E, 0x00000043, 0x00000005, ScaleModel, 0x00002710, 0xFE363C83, 0xF24A7E80, 0xFE363C83, 0x00000043, 0x00000005, TranslateModel, 0x00002710, 0x00000000, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000027, 0x00000002, 0xFE363C82, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, ScaleModel, 0x00002710, 0xFE363C83, 0xF24A7E80, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802418B4_92BB64
.word 0x00000043, 0x00000003, EnableModel, 0x00000080, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000064, 0x00000026, 0x00000002, 0xFE363C83, 0xF24A7F80, 0x00000005, 0x00000001, 0x00000014, 0x00000043, 0x00000005, ScaleModel, 0x00000080, 0xFE363C83, 0xF24A7E80, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000005, 0x00000001, 0x00000046, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C82, 0x0000002F, 0x00000002, 0xFE363C83, 0x00000050, 0x00000043, 0x00000005, ScaleModel, 0x00000080, 0xFE363C83, 0xFE363C83, 0xFE363C83, 0x00000043, 0x00000005, TranslateModel, 0x00000080, 0x00000000, 0xFE363C80, 0x00000000, 0x00000028, 0x00000002, 0xFE363C80, 0x00000002, 0x00000027, 0x00000002, 0xFE363C82, 0x00000005, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000080, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802419F0_92BCA0
.word 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, EnableModel, 0x00002710, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000064, 0x00000026, 0x00000002, 0xFE363C83, 0xF24A7E23, 0x00000005, 0x00000001, 0x00000014, 0x00000043, 0x00000005, ScaleModel, 0x00002710, 0xFE363C83, 0xF24A7E80, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000005, 0x00000001, 0x00000046, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C82, 0x0000002F, 0x00000002, 0xFE363C83, 0x0000006E, 0x00000043, 0x00000005, ScaleModel, 0x00002710, 0xFE363C83, 0xFE363C83, 0xFE363C83, 0x00000043, 0x00000005, TranslateModel, 0x00002710, 0x00000000, 0xFE363C80, 0x00000000, 0x00000028, 0x00000002, 0xFE363C80, 0x00000002, 0x00000027, 0x00000002, 0xFE363C82, 0x00000005, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00002710, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241B38_92BDE8
.word 0x00000058, 0x00000000, 0x00000043, 0x00000003, EnableTexPanning, 0x0000007E, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000001, 0x00000000, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x000009C4, 0x0000000D, 0x00000002, 0xFE363C80, 0x00008000, 0x00000028, 0x00000002, 0xFE363C80, 0x00008000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000059, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000007E, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFFFFFF38, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x000000C8, 0x00000043, 0x00000005, TranslateModel, 0x0000007E, 0x00000000, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241C90_92BF40
.word 0x00000058, 0x00000000, 0x00000043, 0x00000003, EnableTexPanning, 0x0000007E, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000001, 0x00000000, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x000009C4, 0x0000000D, 0x00000002, 0xFE363C80, 0x00008000, 0x00000028, 0x00000002, 0xFE363C80, 0x00008000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000059, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000007E, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000007E, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000005, 0x00000001, 0x00000064, 0x00000043, 0x00000005, TranslateModel, 0x0000007E, 0x00000000, 0xFE363C80, 0x00000000, 0x00000028, 0x00000002, 0xFE363C80, 0x00000002, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241DE0_92C090
.word 0x00000043, 0x00000002, func_802C971C, 0x00000072, 0x00000043, 0x00000003, EnableGroup, 0x00000072, 0x00000001, 0x00000056, 0x00000000, 0x00000043, 0x00000003, EnableTexPanning, 0x00000071, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000005, 0x00000001, 0x00000258, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000002, 0x00000000, 0x00000000, 0xFE363C80, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000002, 0x00000001, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x000000C8, 0x00000027, 0x00000002, 0xFE363C81, 0xFFFFFF38, 0x00000027, 0x00000002, 0xFE363C82, 0x000002BC, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000071, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000005, 0x00000001, 0x0000001E, 0x00000043, 0x00000003, RandInt, 0x00000122, 0xFE363C80, 0x00000027, 0x00000002, 0xFE363C80, 0xFFFFFF92, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0x00000000, 0xFFFFFFDD, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0xFE363C80, 0x00000000, 0xFFFFFFDD, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000005, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, RandInt, 0x000000B4, 0xFE363C80, 0x00000027, 0x00000002, 0xFE363C80, 0x000000AA, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0x00000000, 0xFFFFFED4, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0xFE363C80, 0x00000000, 0xFFFFFED4, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000005, 0x00000001, 0x00000005, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFFFFFF4C, 0x00000000, 0x00000104, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0xFFFFFF4C, 0x00000000, 0x00000104, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000028, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000006E, 0x00000005, 0x00000001, 0x00000004, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0x000000B4, 0x00000000, 0x00000104, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0x000000B4, 0x00000000, 0x00000104, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000032, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x8000005E, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFECA, 0x00000000, 0x00000136, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x00000072, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802422F0_92C5A0
.word 0x00000043, 0x00000002, func_802C971C, 0x00000072, 0x00000043, 0x00000003, EnableGroup, 0x00000072, 0x00000001, 0x00000056, 0x00000000, 0x00000043, 0x00000003, EnableTexPanning, 0x00000071, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x0000EA60, 0x00000024, 0x00000002, 0xFE363C81, 0xFFFF15A0, 0x00000024, 0x00000002, 0xFE363C82, 0x00033450, 0x00000005, 0x00000001, 0x0000012C, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000002, 0x00000000, 0x00000000, 0xFE363C80, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000002, 0x00000001, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x000000C8, 0x00000027, 0x00000002, 0xFE363C81, 0xFFFFFF38, 0x00000027, 0x00000002, 0xFE363C82, 0x000002BC, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000071, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, RandInt, 0x00000122, 0xFE363C80, 0x00000027, 0x00000002, 0xFE363C80, 0xFFFFFF92, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0x00000000, 0xFFFFFFDD, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0xFE363C80, 0x00000000, 0xFFFFFFDD, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000005, 0x00000001, 0x00000005, 0x00000043, 0x00000003, RandInt, 0x000000B4, 0xFE363C80, 0x00000027, 0x00000002, 0xFE363C80, 0x000000AA, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0x00000000, 0xFFFFFED4, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0xFE363C80, 0x00000000, 0xFFFFFED4, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000003, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFFFFFF4C, 0x00000000, 0x00000104, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0xFFFFFF4C, 0x00000000, 0x00000104, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000028, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000005, 0x00000001, 0x00000002, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0x000000B4, 0x00000000, 0x00000104, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0x000000B4, 0x00000000, 0x00000104, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000032, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFFEC, 0x00000000, 0x00000014, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x00000072, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A7E80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802427F4_92CAA4
.word 0x00000043, 0x00000006, RotateGroup, 0x0000003D, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x0000004E, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000028, 0x00000002, 0xFE363C82, 0xFE363C80, 0x00000043, 0x00000006, RotateGroup, 0x0000001B, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x0000002C, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802428A4_92CB54
.word 0x00000043, 0x00000005, MakeLerp, 0x000000B4, 0x00000000, 0x0000003C, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000046, 0x00000001, D_802427F4_92CAA4, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242928_92CBD8
.word 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000003C, 0x000000B4, 0x00000001, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x00000021, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000022, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000024, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000025, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000024, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000025, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000024, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000025, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000032, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000033, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000035, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000036, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000035, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000036, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000035, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000036, 0x00000014, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000028, 0x00000002, 0xFE363C82, 0xFE363C80, 0x00000043, 0x00000006, RotateModel, 0x00000043, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000044, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000046, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000047, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000046, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000047, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000046, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000047, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000054, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000055, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000057, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000058, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000057, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000058, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000057, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000058, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000003C, 0x000000B4, 0x00000004, 0x00000003, 0x00000001, 0x00000014, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x00000024, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000025, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000024, 0x0000003C, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000025, 0x0000003C, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000024, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000025, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000024, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000025, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000035, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000036, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000035, 0x0000003C, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000036, 0x0000003C, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000035, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000036, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000035, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000036, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000028, 0x00000002, 0xFE363C82, 0xFE363C80, 0x00000043, 0x00000005, TranslateModel, 0x00000046, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000047, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000046, 0xFFFFFFC4, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000047, 0xFFFFFFC4, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000046, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000047, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000046, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000047, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000057, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000058, 0x00000014, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000057, 0xFFFFFFC4, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000058, 0xFFFFFFC4, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000057, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000058, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000057, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000058, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000014, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802431C0_92D470
.word 0x00000043, 0x00000003, EnableGroup, 0x0000007D, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFECA, 0x00000000, 0x00000136, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x0000007D, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243268_92D518
.word 0x00000043, 0x00000003, EnableGroup, 0x0000007D, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFFEC, 0x00000000, 0x00000014, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x0000007D, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243310_92D5C0
.word 0x00000043, 0x00000006, PlaySoundAt, 0x0000005E, 0x00000000, 0x00000000, 0x00000027, 0xFFFFFFB0, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7B4D, 0x00000057, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0xFFFFFF4C, 0x000000B4, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x00000078, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000079, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000007A, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000007B, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0x0000003D, 0x00000002, 0xFFFFFFAD, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0x0000003D, 0x00000002, 0xFFFFFFAD, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFFFFFFC3, 0x00000002, 0xFFFFFFAD, 0x00000014, 0x0000000A, 0x00000000, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000002, 0xFFFFFFC3, 0x00000002, 0xFFFFFFAD, 0x0000003C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7E80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024358C_92D83C
.word 0x00000043, 0x00000002, DisablePulseStone, 0x00000001, 0x00000043, 0x00000001, func_802D6420, 0x0000000E, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000001, func_802D6954, 0x00000043, 0x00000002, DisablePulseStone, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, func_802CF56C, 0x00000001, 0x00000043, 0x00000002, RemoveKeyItemAt, 0xFE363C81, 0x00000043, 0x00000001, func_802D6954, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFC2, 0x00000043, 0x00000001, func_80240338_92A5E8, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000083, 0x00000001, 0x00000008, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x000000D2, 0x00000000, 0x00000089, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xF24CD280, 0xF2524A80, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xF2437280, 0xF242AA80, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AB680, 0xF24A5E80, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF2524A80, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7B4D, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x0000000A, 0x00000024, 0x00000002, 0xFE363C80, 0x000000B4, 0x00000046, 0x00000001, D_802427F4_92CAA4, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000078, 0xF24A7B4D, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000012C, 0xF24A7C80, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000012C, 0xF24A7B4D, 0x00000057, 0x00000000, 0x00000044, 0x00000001, D_80241258_92B508, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000C, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0xFFFFFFB0, 0x00000024, 0x00000002, 0xFBD3E280, 0x00000000, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000050, 0x00000024, 0x00000002, 0xFBD3E280, 0x00000001, 0x00000013, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, SetPlayerSpeed, 0xF24A8680, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C80, 0x00000050, 0x00000000, 0x00000043, 0x00000004, func_802D2884, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000044, 0x00000001, D_80241430_92B6E0, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000003, CloneModel, 0x00000080, 0x00002710, 0x00000044, 0x00000001, D_802414FC_92B7AC, 0x00000044, 0x00000001, D_80241678_92B928, 0x00000044, 0x00000001, D_80241790_92BA40, 0x00000008, 0x00000001, 0x00000064, 0x00000044, 0x00000001, D_80241B38_92BDE8, 0x00000008, 0x00000001, 0x00000096, 0x00000044, 0x00000001, D_80241DE0_92C090, 0x00000044, 0x00000001, D_802431C0_92D470, 0x00000008, 0x00000001, 0x00000064, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A9A80, 0xF24A5680, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7B4D, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000050, 0x00000044, 0x00000001, D_802428A4_92CB54, 0x00000008, 0x00000001, 0x0000003C, 0x00000008, 0x00000001, 0x00000032, 0x0000000A, 0x00000002, 0xFBD3E280, 0x00000000, 0x00000043, 0x00000003, GotoMap, 0x802455F0, 0x00000004, 0x00000012, 0x00000000, 0x00000043, 0x00000003, GotoMap, 0x802455F0, 0x00000005, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFC1, 0x00000043, 0x00000003, EnableGroup, 0x00000016, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000016, 0x7FFFFE00, 0x00000018, 0x00000001, 0xFFFFFFC2, 0x00000043, 0x00000003, EnableGroup, 0x00000016, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000016, 0x7FFFFE00, 0x0000004E, 0x00000006, D_8024358C_92D83C, 0x00000100, 0x0000000D, D_80241250_92B500, 0x00000000, 0x00000001, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000082, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000000F, 0x7FFFFE00, 0x00000023, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000072, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000007D, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000007E, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000080, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x0000005C, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, func_802CF56C, 0x00000001, 0x00000043, 0x00000004, func_802D2884, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000000D, 0x7FFFFE00, 0x00000043, 0x00000003, EnableModel, 0x00000082, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000016, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000190, 0xF24A7B4D, 0x00000057, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x000000D2, 0x00000000, 0x00000089, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xF24CD280, 0xF2524A80, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xF2437280, 0xF242AA80, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A9A80, 0xF24A5680, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF2524A80, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000004, sbk_02_UnkFunc27, 0x00000002, 0x00000000, 0x00000003, 0x00000043, 0x00000004, sbk_02_UnkFunc27, 0x00000001, 0xFFFFFFFF, 0x00000003, 0x00000043, 0x00000004, sbk_02_UnkFunc27, 0x00000001, D_80241418_92B6C8, 0x00000000, 0x00000043, 0x00000004, sbk_02_UnkFunc27, 0x00000000, D_80241424_92B6D4, 0x00000000, 0x00000043, 0x00000008, func_80240364_92A614, 0x0000002C, 0x00000020, 0x000000B1, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000044, 0x00000001, D_802422F0_92C5A0, 0x00000044, 0x00000001, D_80243268_92D518, 0x00000043, 0x00000003, CloneModel, 0x00000080, 0x00002710, 0x00000044, 0x00000001, D_802414FC_92B7AC, 0x00000044, 0x00000001, D_802418B4_92BB64, 0x00000044, 0x00000001, D_802419F0_92BCA0, 0x00000008, 0x00000001, 0x00000014, 0x00000044, 0x00000001, D_80241C90_92BF40, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8A80, 0xF24A6080, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF256D280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7B4D, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000044, 0x00000001, D_80242928_92CBD8, 0x00000008, 0x00000001, 0x00000064, 0x00000046, 0x00000001, D_80243310_92D5C0, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000016, 0x7FFFFE00, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, func_802CF56C, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000

.include "macro.inc"

.section .data

glabel D_80241AE0_BA2210
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243E60, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243E68, 0x00000003, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243E70, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000003, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243E78, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241AE0_BA2210, 0x00080000, 0x00000001, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80241B3C, 0x00080000, 0x00000010, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80241B98, 0x00080000, 0x0000000B, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80241BF4, 0x00080000, 0x00000006, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000C, 0x00000043, 0x00000002, SetSpriteShading, 0x00070004, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x0000028A, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xF70F2E82, 0xF5DE022B, 0x00000043, 0x00000002, GetMapID, 0xF5DE022B, 0x00000046, 0x00000001, 0x80243170, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80243E34, 0x00000024, 0x00000002, 0xFE363C80, 0x80241C50, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x80241AA0, 0x00000046, 0x00000001, 0x80242290, 0x00000043, 0x00000001, func_80240000_BA0730, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8680, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000003C, 0x00000001, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C81, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0xF4ACD480, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C8A, 0xF4ACD481, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C8A, 0xF4ACD482, 0x00000016, 0x00000001, 0x00000004, 0x00000024, 0x00000002, 0xFE363C8A, 0xF4ACD484, 0x00000016, 0x00000001, 0x00000005, 0x00000024, 0x00000002, 0xFE363C8A, 0xF4ACD485, 0x00000023, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0x00000001, 0x00000043, 0x00000006, PlaySoundAt, 0x000003A0, 0x00000000, 0xFFFFFED4, 0x00000000, 0xFFFFFFF6, 0x00000043, 0x00000005, SetTexPanOffset, 0xFE363C81, 0x00000000, 0x00000000, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0xFE363C81, 0x00000000, 0x00000000, 0xFFFF8000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000001, 0x00000028, 0x00000002, 0xFE363C89, 0xFE363C8A, 0x00000014, 0x00000001, 0xFE363C81, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF4ACD480, 0xFE363C89, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xF4ACD481, 0xFE363C89, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xF4ACD482, 0xFE363C89, 0x00000016, 0x00000001, 0x00000004, 0x00000024, 0x00000002, 0xF4ACD484, 0xFE363C89, 0x00000016, 0x00000001, 0x00000005, 0x00000024, 0x00000002, 0xF4ACD485, 0xFE363C89, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, PlaySoundAt, 0x000003A0, 0x00000000, 0xFFFFFED4, 0x00000000, 0xFFFFFFF6, 0x00000044, 0x00000001, 0x80241E20, 0x00000008, 0x00000001, 0x0000001E, 0x00000005, 0x00000001, 0x00000004, 0x00000044, 0x00000001, 0x80241E20, 0x00000008, 0x00000001, 0x00000003, 0x00000044, 0x00000001, 0x80241E20, 0x00000008, 0x00000001, 0x00000003, 0x00000006, 0x00000000, 0x00000044, 0x00000001, 0x80241E20, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000002, 0x00000044, 0x00000001, 0x80242014, 0x00000008, 0x00000001, 0x0000000A, 0x00000024, 0x00000002, 0xFE363C81, 0x00000004, 0x00000044, 0x00000001, 0x80242014, 0x00000008, 0x00000001, 0x0000000A, 0x00000024, 0x00000002, 0xFE363C81, 0x00000005, 0x00000044, 0x00000001, 0x80242014, 0x00000008, 0x00000001, 0x0000000A, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, PlaySoundAt, 0x000003A0, 0x00000000, 0xFFFFFFEC, 0x00000000, 0x0000012C, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000000, 0x00000000, 0x00000000, 0xFFFF8000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, PlaySoundAt, 0x000003A0, 0x00000000, 0x00000014, 0x00000000, 0xFFFFFED4, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000001, 0x00000000, 0x00000000, 0xFFFF8000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, PlaySoundAt, 0x000003A0, 0x00000000, 0x0000012C, 0x00000000, 0x0000000A, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000003, 0x00000000, 0x00000000, 0xFFFF8000, 0x00000008, 0x00000001, 0x00000032, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x0000004D, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x0000004E, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x0000004F, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x00000040, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000041, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000042, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x0000003C, 0x00000003, 0x00000043, 0x00000003, SetTexPanner, 0x0000003D, 0x00000003, 0x00000043, 0x00000003, SetTexPanner, 0x0000003E, 0x00000003, 0x00000043, 0x00000003, SetTexPanner, 0x00000048, 0x00000002, 0x00000043, 0x00000003, SetTexPanner, 0x0000004B, 0x00000002, 0x00000043, 0x00000003, SetTexPanner, 0x00000049, 0x00000004, 0x00000043, 0x00000003, SetTexPanner, 0x0000004A, 0x00000004, 0x00000043, 0x00000003, SetTexPanner, 0x00000044, 0x00000005, 0x00000043, 0x00000003, SetTexPanner, 0x00000045, 0x00000005, 0x00000043, 0x00000003, SetTexPanner, 0x00000046, 0x00000005, 0x00000043, 0x00000003, SetTexPanner, 0x00000047, 0x00000005, 0x0000003E, 0x00000002, 0x00000006, 0xFE363C80, 0x0000003C, 0x00000001, 0xFE363C80, 0x00000024, 0x00000002, 0xF4ACD480, 0x00000000, 0x00000024, 0x00000002, 0xF4ACD481, 0x00000000, 0x00000024, 0x00000002, 0xF4ACD482, 0x00000000, 0x00000024, 0x00000002, 0xF4ACD484, 0x00000000, 0x00000024, 0x00000002, 0xF4ACD485, 0x00000000, 0x00000047, 0x00000005, 0x80242134, 0x00000100, 0x0000001B, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802421A8, 0x00000100, 0x00000017, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802420AC, 0x00000100, 0x00000019, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x8024221C, 0x00000100, 0x00000015, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000014, 0x00000001, 0xFE363C81, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x0000000A, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000008, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000009, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000007, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000002, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000003, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000004, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000005, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x0000000A, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000008, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000009, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000007, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000002, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000003, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000004, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000005, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000000, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, SetZoneEnabled, 0x0000000A, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000008, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000009, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000007, 0x00000000, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000002, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000003, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000004, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000005, 0x00000001, 0x00000043, 0x00000003, SetZoneEnabled, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000002, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000021, 0x00000083, 0x00000043, 0x00000006, RotateGroup, 0x00000085, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000021, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000025, 0x00000089, 0x00000043, 0x00000006, RotateGroup, 0x0000008B, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000025, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000023, 0x00000086, 0x00000043, 0x00000006, RotateGroup, 0x00000088, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000023, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000027, 0x0000008C, 0x00000043, 0x00000006, RotateGroup, 0x0000008E, 0xFE363C82, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000027, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x00000085, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000021, 0x00000043, 0x00000006, RotateGroup, 0x0000008B, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000025, 0x00000043, 0x00000006, RotateGroup, 0x00000088, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000023, 0x00000043, 0x00000006, RotateGroup, 0x0000008E, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000027, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0xFE363C89, 0x000001D4, 0x00000000, 0x00000008, 0x00000001, 0x00000013, 0x00000043, 0x00000004, PlaySoundAtCollider, 0xFE363C89, 0x000001D5, 0x00000000, 0x00000057, 0x00000000, 0x00000014, 0x00000001, 0xF70F2E81, 0x00000016, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x0000000A, 0x0000005A, 0x0000000A, 0x00000001, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0xFE363C8A, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0xFE363C89, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000056, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0xFE363C87, 0x00000027, 0x00000002, 0xFE363C82, 0xFE363C88, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C80, 0xFE363C82, 0x0000000F, 0x00000057, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000044, 0x00000001, 0x802424D0, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000168, 0x0000001E, 0x00000000, 0x00000003, 0x00000001, 0x00000014, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0xFE363C8A, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0xFE363C89, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000014, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0x80242884, 0x00000024, 0x00000002, 0xF70F2E81, 0x00000001, 0x00000024, 0x00000002, 0xF8405F1C, 0x00000001, 0x00000016, 0x00000001, 0x00000001, 0x00000056, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000168, 0x0000010E, 0x0000000A, 0x00000001, 0x00000003, 0x00000001, 0x0000001E, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0xFE363C8A, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0xFE363C89, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000001E, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000056, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0xFE363C87, 0x00000028, 0x00000002, 0xFE363C82, 0xFE363C88, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C80, 0xFE363C82, 0x0000000F, 0x00000057, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000002, 0x00000044, 0x00000001, 0x802424D0, 0x00000043, 0x00000005, MakeLerp, 0x0000010E, 0xFFFFFFF6, 0x0000001E, 0x00000000, 0x00000003, 0x00000001, 0x00000028, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0xFE363C8A, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0xFE363C89, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000028, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xF70F2E81, 0x00000002, 0x00000016, 0x00000001, 0x00000002, 0x00000056, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFFF6, 0x0000005A, 0x0000000A, 0x00000001, 0x00000003, 0x00000001, 0x00000032, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0xFE363C8A, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0xFE363C89, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000032, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000056, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0xFE363C87, 0x00000027, 0x00000002, 0xFE363C82, 0xFE363C88, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C80, 0xFE363C82, 0x0000000F, 0x00000057, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000044, 0x00000001, 0x802424D0, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000168, 0x0000001E, 0x00000000, 0x00000003, 0x00000001, 0x0000003C, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0xFE363C8A, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0xFE363C89, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000003C, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0x80242884, 0x00000024, 0x00000002, 0xF70F2E81, 0x00000001, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0x00000046, 0x00000024, 0x00000002, 0xFE363C89, 0x00000021, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000085, 0x00000046, 0x00000001, 0x80242954, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0xFFFFFFBA, 0x00000024, 0x00000002, 0xFE363C89, 0x00000025, 0x00000024, 0x00000002, 0xFE363C8A, 0x0000008B, 0x00000046, 0x00000001, 0x80242954, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C87, 0xFFFFFFBA, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000023, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000088, 0x00000046, 0x00000001, 0x80242954, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C87, 0x00000046, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000027, 0x00000024, 0x00000002, 0xFE363C8A, 0x0000008E, 0x00000046, 0x00000001, 0x80242954, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8405F1C, 0x00000000, 0x00000024, 0x00000002, 0xF8405F1C, 0x00000001, 0x00000024, 0x00000002, 0xF70F2E81, 0x00000002, 0x00000024, 0x00000002, 0xFE363C81, 0x00000002, 0x00000024, 0x00000002, 0xFE363C82, 0xFFFFFFF6, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xF8405F1C, 0x00000000, 0x00000024, 0x00000002, 0xF70F2E81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x0000000A, 0x00000013, 0x00000000, 0x00000046, 0x00000001, 0x802424D0, 0x00000044, 0x00000001, 0x80242764, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000047, 0x00000005, 0x80242F80, 0x00000100, 0x00000021, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80242FFC, 0x00000100, 0x00000025, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802430F4, 0x00000100, 0x00000027, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80243078, 0x00000100, 0x00000023, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000

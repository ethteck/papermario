.include "macro.inc"

.section .data

glabel D_80245A60_923FD0
.word 0x001D00F0, 0x001D00F1

glabel D_80245A68_923FD8
.word 0x00010002, 0x00030004, 0x00090006, 0x00070008

glabel D_80245A78_923FE8
.word 0x001D00E0, 0x001D00E1, 0x001D00E2, 0x001D00E3, 0x001D00E4, 0x001D00E5, 0x001D00E6, 0x001D00E7, 0x001D00E8, 0x001D00E9, 0x001D00EA, 0x001D00EB, 0x001D00EC, 0x001D00ED, 0x001D00EE, 0x001D00EF

glabel D_80245AB8_924028
.word 0x430C0000, 0x43340000, 0x435C0000

glabel D_80245AC4_924034
.word 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, PlaySound, 0x0000212D, 0x00000043, 0x00000002, iwa_10_UnkFunc21, 0xFD050F8B, 0x00000008, 0x00000001, 0x00000055, 0x00000056, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x0000212E, 0x00000043, 0x00000003, iwa_10_UnkFunc23, 0x00000046, 0x00000046, 0x00000008, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, PlaySound, 0x0000208E, 0x00000043, 0x00000003, iwa_10_UnkFunc23, 0x00000032, 0x00000032, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000002, func_8024032C_91E89C, 0xFD050F8B, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000002F, 0x00000043, 0x00000001, iwa_10_UnkFunc22, 0x00000043, 0x00000001, iwa_10_UnkPartnerPosFunc, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000001, iwa_10_UnkPartnerPosFunc2, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000001, iwa_10_UnkPartnerPosFunc, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000002, func_802408F0_91EE60, 0xFD050F8B, 0x00000008, 0x00000001, 0x0000001E, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80245C28_924198
.word 0x0000000A, 0x00000002, 0xF8405E51, 0x00000001, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, IsStartingConversation, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80240FF8_91F568, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, func_802D585C, 0x00000001, 0x00200000, 0x00000043, 0x00000001, iwa_10_SetOverrideFlags_40, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFC, 0x00000100, 0x00000001, 0x00000043, 0x00000003, iwa_10_UnkFunc20, 0xFD050F8B, 0xFE363C89, 0x00000043, 0x00000003, FindKeyItem, 0x0000000F, 0xFE363C8C, 0x00000043, 0x00000001, func_80240410_91E980, 0x0000000A, 0x00000002, 0xFE363C80, 0xFFFFFFFF, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00DC, 0x000000A0, 0x00000028, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, func_80240800_91ED70, 0xFE363C89, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000003, func_802D585C, 0x00000000, 0x00200000, 0x00000043, 0x00000001, iwa_10_UnkFunc17, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xF8405D36, 0x00000000, 0x00000024, 0x00000002, 0xF8405D36, 0x00000001, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00DA, 0x000000A0, 0x00000028, 0x00000012, 0x00000000, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00DB, 0x000000A0, 0x00000028, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_802404BC_91EA2C, 0x0000000A, 0x00000002, 0xFE363C80, 0xFFFFFFFF, 0x00000043, 0x00000002, func_80240800_91ED70, 0xFE363C89, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000003, func_802D585C, 0x00000000, 0x00200000, 0x00000043, 0x00000001, iwa_10_UnkFunc17, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C81, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0xFE363C8B, 0x00000043, 0x00000002, func_8024070C_91EC7C, 0xFE363C8B, 0x00000012, 0x00000000, 0x00000043, 0x00000002, func_802CF56C, 0x00000002, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00DF, 0x000000A0, 0x00000028, 0x00000043, 0x00000002, ShowChoice, 0x001E000D, 0x00000043, 0x00000001, CloseMessage, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, func_80240800_91ED70, 0xFE363C89, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000003, func_802D585C, 0x00000000, 0x00200000, 0x00000043, 0x00000001, iwa_10_UnkFunc17, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000046, 0x00000001, D_80245AC4_924034, 0x00000043, 0x00000003, iwa_10_UnkFunc18, 0xFE363C8B, 0xFE363C8D, 0x00000024, 0x00000002, 0xF8405E51, 0x00000001, 0x00000043, 0x00000002, func_80240800_91ED70, 0xFE363C89, 0x00000043, 0x00000001, iwa_10_UnkFunc19, 0x0000000A, 0x00000002, 0xFE363C8D, 0x00000001, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00DD, 0x000000A0, 0x00000028, 0x00000012, 0x00000000, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00DE, 0x000000A0, 0x00000028, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000003, func_802D585C, 0x00000000, 0x00200000, 0x00000043, 0x00000001, iwa_10_UnkFunc17, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802460A8_924618
.word 0x00000024, 0x00000002, 0xF8405E50, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8405E50, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802EA1E4, 0xFFFFFBF0, 0x000000A0, 0xFFFFFE57, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_802460A8_924618, 0x00000013, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802EA910, 0xFFFFFABA, 0x000000DC, 0xFFFFFF2E, 0x00000000, D_80000000, 0x00000024, 0x00000002, 0xFD050F8B, 0xFE363C80, 0x00000043, 0x00000002, AssignBlockFlag, 0xF8405E51, 0x00000043, 0x00000002, AssignScript, D_80245C28_924198, 0x00000043, 0x00000008, MakeEntity, 0x802BCD9C, 0xFFFFFCF4, 0x00000000, 0xFFFFFF1D, 0xFFFFFFF1, 0x0000010E, D_80000000, 0x00000043, 0x00000008, MakeEntity, 0x802BCD9C, 0xFFFFFB7B, 0x00000046, 0xFFFFFEE6, 0x00000028, 0x00000078, D_80000000, 0x00000043, 0x00000008, MakeEntity, 0x802BCD9C, 0xFFFFFC7B, 0x000000B9, 0xFFFFFDD5, 0x00000000, 0x00000078, D_80000000, 0x00000043, 0x00000007, MakeEntity, D_802E9A18, 0xFFFFFDF3, 0x00000050, 0x00000073, 0x00000000, D_80000000, 0x00000043, 0x00000007, MakeEntity, 0x802EA7E0, 0xFFFFFD26, 0x00000113, 0xFFFFFE02, 0x00000000, D_80000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000

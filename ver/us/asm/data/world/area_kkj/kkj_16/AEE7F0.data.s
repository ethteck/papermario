.include "macro.inc"

.section .data

glabel D_802413E0_AEE7F0
.word 0x00000000, 0x00240018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x001B0000, 0x00000000, 0x00280018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00190000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x00000262, 0x00000000, 0x00000043, 0x0000000A, ShowEmote, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000014, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, NpcFacePlayer, 0xFFFFFFFF, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, PlayerFaceNpc, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x000C0005, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580001, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00580008, 0x00580001, 0x00000000, 0x00140174, 0x00000043, 0x00000005, func_802406D8_AEDAE8, 0xFFFFFFFF, 0xFE363C83, 0xFE363C80, 0xFE363C82, 0x0000000B, 0x00000002, 0xFE363C83, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580006, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24A8E80, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFE363C80, 0xFE363C82, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580001, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00580008, 0x00580001, 0x00000000, 0x00140175, 0x00000043, 0x00000002, SetPlayerAnimation, 0x000C0017, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000004, GotoMapSpecial, 0x80244828, 0x0000000B, 0x0000000D, 0x00000008, 0x00000001, 0x00000064, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580004, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, func_80240060_AED470, 0xFE363C80, 0x00000055, 0x0000003C, 0x00000026, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x80241438, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24A814D, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580004, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0x00000118, 0x00000032, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580004, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0x00000050, 0x00000032, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580004, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, func_80240060_AED470, 0xFE363C80, 0x00000055, 0x0000003C, 0x00000026, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x80241438, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24A8280, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFF08, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFFAC, 0xFFFFFFB0, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFFAC, 0xFFFFFFF1, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFFA8, 0xFFFFFFF1, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFFA8, 0x00000032, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFF04, 0x00000032, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFF04, 0xFFFFFFF1, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFF08, 0xFFFFFFF1, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580004, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, func_80240060_AED470, 0xFE363C80, 0x00000055, 0x0000003C, 0x00000026, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x80241438, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24A814D, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580001, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580004, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFDA8, 0x00000032, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580001, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00580004, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFE5C, 0x00000032, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000B, 0x00000002, 0xF5DE0180, 0xFFFFFFCA, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFD44, 0x00000000, 0x00000032, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000B, 0x00000002, 0xF5DE0180, 0xFFFFFFCA, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFD1C, 0x00000000, 0x00000032, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x000000B4, 0x00000000, 0x00000032, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x80241630, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000008, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000200, 0x00000001, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFF06, 0x00000000, 0xFFFFFFF1, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x802417CC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFE02, 0x00000000, 0x00000032, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x80241978, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x005A0000, 0x005A0002, 0x005A0004, 0x005A0008, 0x005A000A, 0x005A0013, 0xFFFFFFFF, 0x00580000, 0x00580001, 0x00580004, 0x00580006, 0x00580008, 0x00580012, 0x00580014, 0xFFFFFFFF, 0x00000000, D_802413E0_AEE7F0, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000F0D, 0x80241B14, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x005A0002, 0x005A0004, 0x005A0007, 0x005A0007, 0x005A0002, 0x005A0002, 0x005A000E, 0x005A000E, 0x005A0018, 0x005A0019, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x00000000, 0x00000000, 0x80241CEC, 0x00000000, 0x00000001, 0x8024140C, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000F0D, 0x80241B88, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, 0x80241D08, 0x00000000, 0x00000002, 0x8024140C, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000F0D, 0x80241BFC, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, 0x80241D08, 0x00000000, 0x00000003, 0x8024140C, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000F0D, 0x80241C3C, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, 0x80241D08, 0x00000000, 0x00000004, 0x8024140C, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000F0D, 0x80241CAC, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, 0x80241D08, 0x00000000, 0x00000005, 0x80241D28, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00240018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x001B0000, 0x005A0000, 0x005A0002, 0x005A0003, 0x005A0004, 0x005A0006, 0x005A0007, 0x005A0009, 0x005A000A, 0x005A000B, 0x005A001A, 0xFFFFFFFF, 0x0000000A, 0x00000002, 0xF8405D65, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x005A000A, 0x005A0002, 0x00000010, 0x0014013A, 0x00000043, 0x00000004, ShowGotItem, 0x00000083, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xF8405D65, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x005A000A, 0x005A0002, 0x00000010, 0x0014013B, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x005A000A, 0x005A0002, 0x00000000, 0x00140136, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x005A000A, 0x005A0002, 0x00000000, 0x00140137, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x005A000A, 0x005A0002, 0x00000000, 0x00140138, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x005A000A, 0x005A0002, 0x00000000, 0x00140139, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000001, func_80240EF4_AEE304, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x00000262, 0x00000000, 0x00000043, 0x0000000A, ShowEmote, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000014, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, NpcFacePlayer, 0xFFFFFFFF, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, PlayerFaceNpc, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x000C0005, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0002, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x005A000A, 0x005A0002, 0x00000000, 0x00140174, 0x00000043, 0x00000005, func_80240F10_AEE320, 0xFFFFFFFF, 0xFE363C83, 0xFE363C80, 0xFE363C82, 0x0000000B, 0x00000002, 0xFE363C83, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0007, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24A8E80, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFE363C80, 0xFE363C82, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0002, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x005A000A, 0x005A0002, 0x00000000, 0x00140175, 0x00000043, 0x00000002, SetPlayerAnimation, 0x000C0017, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000004, GotoMapSpecial, 0x80244848, 0x0000000B, 0x0000000D, 0x00000008, 0x00000001, 0x00000064, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_80240EC8_AEE2D8, 0xFE363C81, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x08000000, 0x00000001, 0x00000043, 0x00000005, func_80240850_AEDC60, 0xFE363C80, 0x00000055, 0x0000003C, 0x00000026, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x80242978, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x08000000, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000044, 0x00000001, 0x80242B7C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000044, 0x00000001, 0x80242B7C, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0004, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24A814D, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0002, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0004, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0x00000118, 0x00000032, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0002, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0004, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0x00000050, 0x00000032, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000044, 0x00000001, 0x80242B7C, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0004, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24A814D, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0002, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0004, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFDA8, 0x00000032, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0002, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x0000000F, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x005A0004, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFE5C, 0x00000032, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFD44, 0x00000000, 0x00000032, 0x00000043, 0x00000003, SetNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x80242C54, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, 0x80242748, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x000000B4, 0x00000000, 0x00000032, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x80242C70, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, 0x802427E0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFE02, 0x00000000, 0x00000032, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x80242D98, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, 0x802428AC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x802426F0, 0x00000000, 0xC3FA0000, 0x00000000, 0x00400D0D, 0x80242EC0, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x005A0002, 0x005A0004, 0x005A0007, 0x005A0007, 0x005A0002, 0x005A0002, 0x005A000E, 0x005A000E, 0x005A0018, 0x005A0019, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x00000000, 0x00000000, 0x8024271C, 0x00000000, 0x00000001, 0x802426F0, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000D0D, 0x80242F28, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x005A0002, 0x005A0004, 0x005A0007, 0x005A0007, 0x005A0002, 0x005A0002, 0x005A000E, 0x005A000E, 0x005A0018, 0x005A0019, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x00000000, 0x00000000, 0x8024271C, 0x00000000, 0x00000002, 0x802426F0, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000D0D, 0x80242F7C, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x005A0002, 0x005A0004, 0x005A0007, 0x005A0007, 0x005A0002, 0x005A0002, 0x005A000E, 0x005A000E, 0x005A0018, 0x005A0019, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x005A0002, 0x00000000, 0x00000000, 0x8024271C, 0x00000000, 0x00000003, 0x80242FD0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

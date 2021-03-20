.include "macro.inc"

.section .data

glabel D_80240160_939A90
.word 0xC3ED8000, 0x00000000, 0x00000000, 0x42B40000, 0x43ED8000, 0x00000000, 0x00000000, 0x43870000, 0x00000000, 0x00000000, 0xC3ED8000, 0x43340000, 0x00000000, 0x00000000, 0x43ED8000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x802403D0, D_80240160_939A90, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x00190071, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240E10, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240E18, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240E20, 0x00000003, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000003, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240E28, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802401E0, 0x00080000, 0x00000009, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x8024023C, 0x00080000, 0x00000005, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80240298, 0x00080000, 0x00000003, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802402F4, 0x00080000, 0x00000007, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000A, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x0000000A, 0x00000002, 0xF5DE0180, 0xFFFFFFC1, 0x00000043, 0x00000002, DisablePulseStone, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80240CB8, 0x00000046, 0x00000001, 0x80240CE0, 0x00000043, 0x00000001, sbk_22_SpawnSunEffect, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000017, 0x00000000, 0x00000008, 0x00000024, 0x00000002, 0xFE363C80, 0x80240350, 0x00000044, 0x00000001, EnterWalk, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C80, 0x00000043, 0x00000005, GetNpcPos, 0xFE363C8A, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C82, 0x0000001E, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000001, 0x00000000, 0x00000043, 0x00000004, sbk_22_Bandit_DropCoin, 0xFE363C8A, 0xFE363C80, 0xF9718881, 0x00000043, 0x00000002, RemoveItemEntity, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x402CCCCD, 0x0000002D, 0x0000001E, 0x43E10000, 0x00000000, 0x0000000A, 0x4104CCCD, 0x000000B4, 0x00000064, 0x44098000, 0x42C80000, 0x00000001, 0x00000043, 0x00000002, DoBasicAI, 0x80240588, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000002, func_80045900, 0x00000000, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xF9718881, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000040, 0x00000001, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00320002, 0x00000043, 0x00000002, GetSelfNpcID, 0xFE363C80, 0x00000044, 0x00000001, 0x802404F0, 0x00000043, 0x00000003, SetNpcJumpscale, 0xFFFFFFFF, 0xF24A7E80, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0x00000027, 0x00000002, 0xFE363C87, 0x00000014, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0xFE363C87, 0x00000000, 0xFE363C89, 0x00000006, 0x00000027, 0x00000002, 0xFE363C87, 0x00000014, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0xFE363C87, 0x00000000, 0xFE363C89, 0x00000006, 0x00000043, 0x00000003, GetNpcYaw, 0xFFFFFFFF, 0xFE363C80, 0x00000027, 0x00000002, 0xFE363C80, 0x000000B4, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0xFE363C80, 0x00000005, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00320008, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24ABA80, 0x00000027, 0x00000002, 0xFE363C87, 0x000000C8, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFE363C87, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xF9718881, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x001A0018, 0x00000000, 0x00000000, 0x802405B8, EnemyNpcHit, 0x00000000, 0x802405D8, 0x00000000, 0x00000000, 0x00090005, 0x3FE66666, 0x00000032, 0x0000000A, 0x437A0000, 0x00000000, 0x00000002, 0x40600000, 0x0000002D, 0x00000006, 0x43960000, 0x00000000, 0x00000001, 0x00000043, 0x00000001, sbk_22_SetNpcB5_3, 0x00000043, 0x00000002, DoBasicAI, 0x80240850, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x0048000F, 0x00000000, 0x00000000, 0x80240880, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x00090000, 0x00000000, 0x802408AC, 0xC30C0000, 0x00000000, 0xC3660000, 0x00002800, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, 0x800F00A8, 0x00090000, 0x00890001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0xFFFFFF74, 0x00000000, 0xFFFFFF1A, 0x00000064, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000003E8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00310004, 0x00310008, 0x00310008, 0x00310008, 0x00310004, 0x00310004, 0x0031000C, 0x0031000C, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x80240824, 0x42200000, 0x00000000, 0x42B40000, 0x00002800, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x800500A4, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00030000, 0x00000028, 0x00000000, 0x0000005A, 0x00000064, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000003E8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00320001, 0x00320005, 0x00320007, 0x00320007, 0x00320001, 0x00320001, 0x00320009, 0x00320009, 0x00320000, 0x00320000, 0x00320000, 0x00320000, 0x00320000, 0x00320000, 0x00320000, 0x00320000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x802408D8, 0x0A080001, 0x00000001, 0x80240AC8, 0x0A0E0001, 0x00000000, 0x00000000, 0x00000000, 0x00000000

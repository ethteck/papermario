.include "macro.inc"

.section .data

glabel D_80240860_982CA0
.word 0x3FE66666, 0x00000028, 0x0000000A, 0x42C80000, 0x00000000, 0x00000003, 0x40400000, 0x0000002D, 0x00000006, 0x43960000, 0x00000000, 0x00000001

glabel D_80240890_982CD0
.word 0x00000043, 0x00000001, func_80240000_982440, 0x00000043, 0x00000002, DoBasicAI, D_80240860_982CA0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802408BC_982CFC
.word 0x00000000, 0x0048000F, 0x00000000, 0x00000000, D_80240890_982CD0, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000A0000

glabel D_802408E8_982D28
.word 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8405EEC, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_80240014_982454, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, PlaySound, 0x0000000B, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000001, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8280, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFFFFFF6A, 0xFFFFFE7A, 0x0000023B, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFFFFFF05, 0xFFFFFE7A, 0x00000229, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFF05, 0xFFFFFE7A, 0x00000229, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000007, MakeItemEntity, 0x00000011, 0xFFFFFF06, 0xFFFFFF10, 0x00000221, 0x0000000D, 0xF8405EEB, 0x00000024, 0x00000002, 0xF8405EEC, 0x00000001, 0x00000046, 0x00000001, 0x80241E84, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000002, func_80045900, 0x00000000, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240BAC_982FEC
.word 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x17100000, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000002, 0x00000001, 0x00000003, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xF971888D, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000003, SetNpcYaw, 0xFFFFFFFF, 0x00000069, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000040, 0x00000001, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x17100000, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFF74, 0x00000210, 0x0000000A, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000040, 0x00000000, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x40000000, 0x00000001, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, D_80240890_982CD0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240CD8_983118
.word 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x17100000, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000002, 0x00000001, 0x00000003, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xF971888D, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000040, 0x00000001, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x17100000, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0x0000002F, 0x0000021F, 0x0000000A, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000040, 0x00000000, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x40000000, 0x00000001, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, D_80240890_982CD0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240DFC_98323C
.word 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x17100000, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000002, 0x00000001, 0x00000003, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xF971888D, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000040, 0x00000001, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x17100000, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0x000000E3, 0x000001E9, 0x0000000A, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000040, 0x00000000, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x40000000, 0x00000001, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, D_80240890_982CD0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240F20_983360
.word 0x0000000A, 0x00000002, 0xF8405EEC, 0x00000000, 0x00000043, 0x00000002, SetSelfEnemyFlags, 0x00800000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_80240BAC_982FEC, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, D_802408E8_982D28, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x00000064, 0x00000000, 0x00000043, 0x00000002, func_800457C4, 0x00000003, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240FA8_9833E8
.word 0x0000000A, 0x00000002, 0xF8405EEC, 0x00000000, 0x00000043, 0x00000002, SetSelfEnemyFlags, 0x00800000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_80240CD8_983118, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, D_802408E8_982D28, 0x00000043, 0x00000002, func_800457C4, 0x00000003, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241018_983458
.word 0x0000000A, 0x00000002, 0xF8405EEC, 0x00000000, 0x00000043, 0x00000002, SetSelfEnemyFlags, 0x00800000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_80240DFC_98323C, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, D_802408E8_982D28, 0x00000043, 0x00000002, func_800457C4, 0x00000003, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241088_9834C8
.word 0x00000000, D_802408BC_982CFC, 0xC3040000, 0xC3C30000, 0x43F60000, 0x00000A00, D_80240F20_983360, 0x00000000, 0x00000000, 0x00000130, 0x80050089, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x66650002, 0x3FFF2666, 0x59980002, 0x3FFF3FFF, 0x4CCC0002, 0x33326665, 0x3FFF0002, 0x33327FFF, 0x33320002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00020000, 0xFFFFFED3, 0x00000000, 0x000001AB, 0x000000C8, 0x00000000, 0xFFFF8001, 0x00000000, 0xFFFFFED3, 0x00000000, 0x000001AB, 0x00000190, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00310104, 0x00310108, 0x00310108, 0x00310108, 0x00310104, 0x00310104, 0x0031010C, 0x0031010C, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80241278_9836B8
.word 0x00000001, D_802408BC_982CFC, 0x42340000, 0xC3C30000, 0x43FD8000, 0x00000A00, D_80240FA8_9833E8, 0x00000000, 0x00000000, 0x00000107, 0x80050089, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x66650002, 0x3FFF2666, 0x59980002, 0x3FFF3FFF, 0x4CCC0002, 0x33326665, 0x3FFF0002, 0x33327FFF, 0x33320002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00020000, 0x00000034, 0xFFFFFE7A, 0x0000023D, 0x00000032, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000034, 0xFFFFFE7A, 0x0000023D, 0x00000096, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00310104, 0x00310108, 0x00310108, 0x00310108, 0x00310104, 0x00310104, 0x0031010C, 0x0031010C, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80241468_9838A8
.word 0x00000002, D_802408BC_982CFC, 0x435C0000, 0xC3C28000, 0x43E98000, 0x00000A00, D_80241018_983458, 0x00000000, 0x00000000, 0x000000F4, 0x80050089, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x66650002, 0x3FFF2666, 0x59980002, 0x3FFF3FFF, 0x4CCC0002, 0x33326665, 0x3FFF0002, 0x33327FFF, 0x33320002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00020000, 0x000000F3, 0xFFFFFE7A, 0x0000020B, 0x00000032, 0x00000000, 0xFFFF8001, 0x00000000, 0x000000F3, 0xFFFFFE7A, 0x0000020B, 0x00000096, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00310104, 0x00310108, 0x00310108, 0x00310108, 0x00310104, 0x00310104, 0x0031010C, 0x0031010C, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00310108, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, D_80241088_9834C8, 0x0B00000D, 0x00000001, D_80241278_9836B8, 0x0B02000D, 0x00000001, D_80241468_9838A8, 0x0B03000D, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

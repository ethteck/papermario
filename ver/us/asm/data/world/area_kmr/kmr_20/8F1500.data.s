.include "macro.inc"

.section .data

glabel D_802456E0_8F1500
.word 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000020, 0x7FFFFE00, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000020, 0x000020AB, 0x00000000, 0x00000043, 0x00000001, func_80240DD0_8ECBF0, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0xFFFFF790, 0x0000003C, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0x00000098, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000020, 0x000020AC, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000020, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802457E4_8F1604
.word 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetCamTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80245848_8F1668
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000003, 0x00000008, 0x00000001, 0x00000001, 0x00000045, 0x00000002, D_802457E4_8F1604, 0xFE363C8A, 0x00000043, 0x00000002, SetPlayerJumpscale, 0xF24A7D4D, 0x0000000A, 0x00000002, 0xF971888B, 0x00000000, 0x00000043, 0x00000005, PlayerJump, 0xFFFFFF92, 0xFFFFFFB0, 0xFFFFFFDD, 0x00000014, 0x00000024, 0x00000002, 0xF971888B, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000001, kmr_20_UnsetCamera0MoveFlag1, 0x00000044, 0x00000001, D_802456E0_8F1500, 0x00000043, 0x00000005, PlayerJump, 0xFFFFFF6A, 0x0000001E, 0xFFFFFFA6, 0x0000001E, 0x00000043, 0x00000003, InterpPlayerYaw, 0x000000B4, 0x00000000, 0x00000024, 0x00000002, 0xF971888B, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x0000001E, 0x00000049, 0x00000001, 0xFE363C8A, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802459A0_8F17C0
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, SetEnemyFlagBits, 0x00000001, 0x00000100, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000001, 0x00000200, 0x00000001, 0x00000043, 0x00000004, SetNpcVar, 0x00000001, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x0082000D, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000001, 0x00000001, 0x00000043, 0x00000005, GetNpcPos, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, NpcJump0, 0x00000001, 0xFE363C80, 0x00000000, 0xFE363C82, 0x00000019, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00820004, 0x00000043, 0x00000004, SetNpcVar, 0x00000001, 0x00000000, 0x00000002, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80245AA8_8F18C8
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, SetEnemyFlagBits, 0x00000001, 0x00000100, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0x00000001, 0x00000200, 0x00000001, 0x00000043, 0x00000004, SetNpcVar, 0x00000001, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x0082000D, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000001, 0x00000001, 0x00000043, 0x00000005, GetNpcPos, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000032, 0x00000043, 0x00000006, NpcJump0, 0x00000001, 0xFE363C80, 0x00000000, 0xFE363C82, 0x00000019, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00820004, 0x00000043, 0x00000004, SetNpcVar, 0x00000001, 0x00000000, 0x00000002, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80245BC0_8F19E0
.word 0x00000043, 0x00000003, SetNpcAux, 0x00000001, 0x00000000, 0x00000044, 0x00000001, D_802459A0_8F17C0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80245BF0_8F1A10
.word 0x00000043, 0x00000003, SetNpcAux, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000046, 0x00000001, D_802459A0_8F17C0, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80245C30_8F1A50
.word 0x00000043, 0x00000003, SetNpcAux, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000046, 0x00000001, D_80245AA8_8F18C8, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802EAA30, 0xFFFFFF6A, 0xFFFFFFB0, 0xFFFFFFCE, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80245848_8F1668, 0x00000043, 0x00000002, SetEntityCullMode, 0x00000001, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFB5, 0x00000018, 0x00000001, 0xFFFFFFCB, 0x00000043, 0x00000007, MakeEntity, 0x802BCF00, 0x0000012C, 0x00000000, 0x00000096, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80245BC0_8F19E0, 0x00000018, 0x00000001, 0xFFFFFFF1, 0x00000018, 0x00000001, 0x00000007, 0x00000018, 0x00000001, 0x00000027, 0x00000018, 0x00000001, 0x00000039, 0x00000043, 0x00000007, MakeEntity, 0x802EA22C, 0x0000012C, 0x00000000, 0x00000096, 0x00000037, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80245BF0_8F1A10, 0x00000018, 0x00000001, 0x00000059, 0x00000043, 0x00000007, MakeEntity, D_802EA0C4, 0x0000012C, 0x0000005A, 0x00000096, 0x00000037, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80245C30_8F1A50, 0x00000018, 0x00000001, 0x00000060, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000

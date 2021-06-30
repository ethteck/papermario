.include "macro.inc"

.section .data

glabel D_802A10F0_783C90
.word 0x00000009, 0x00000003, 0x00000009, 0x00000003, 0x00000009, 0x00000003, 0x00000008, 0x00000003, 0x00000007, 0x00000003, 0x00000006, 0x00000002, 0x00000005, 0x00000002, 0x00000004, 0x00000002

glabel D_802A1130_783CD0
.word 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010006, 0x00000005, 0x00000001, 0x00000005, 0x00000043, 0x00000003, CheckButtonPress, 0x00008000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A11AC_783D4C
.word 0x00000043, 0x00000002, SetGoalToFirstTarget, 0xFFFFFF81, 0x00000043, 0x00000005, GetGoalPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x00000028, 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, GetGoalPos, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000028, 0x00000002, 0xFE363C83, 0xF24B9280, 0x0000000C, 0x00000002, 0xFE363C80, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C80, 0x00000013, 0x00000000, 0x00000043, 0x00000005, SetGoalPos, 0x00000000, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000002, UseBattleCamPreset, 0x0000001A, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A8E80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000003, CancelablePlayerRunToGoal, 0x00000000, 0xFE363C80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000046, 0x00000001, D_802A1130_783CD0, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010006, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A1320_783EC0
.word 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, GetGoalPos, 0x00000000, 0xFE363C86, 0xFE363C87, 0xFE363C88, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0x0000000D, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000028, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000012, 0x00000000, 0x00000028, 0x00000002, 0xFE363C87, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000013, 0x00000000, 0x00000028, 0x00000002, 0xFE363C86, 0x00000014, 0x0000002F, 0x00000002, 0xFE363C86, 0xF24AA4DB, 0x0000002C, 0x00000002, 0xFE363C86, 0x0000000F, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C86, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A1408_783FA8
.word 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, GetGoalPos, 0x00000000, 0xFE363C86, 0xFE363C87, 0xFE363C88, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0x0000000D, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000028, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000012, 0x00000000, 0x00000028, 0x00000002, 0xFE363C87, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000013, 0x00000000, 0x00000028, 0x00000002, 0xFE363C86, 0x00000014, 0x0000002F, 0x00000002, 0xFE363C86, 0xF24AD480, 0x0000002C, 0x00000002, 0xFE363C86, 0x0000000F, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C86, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A14F0_784090
.word 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, GetGoalPos, 0x00000000, 0xFE363C86, 0xFE363C87, 0xFE363C88, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0x0000000D, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000028, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000012, 0x00000000, 0x00000028, 0x00000002, 0xFE363C87, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C86, 0xFE363C87, 0x00000013, 0x00000000, 0x00000028, 0x00000002, 0xFE363C86, 0x00000014, 0x0000002F, 0x00000002, 0xFE363C86, 0xF24AC280, 0x0000002C, 0x00000002, 0xFE363C86, 0x00000016, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C86, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A15D8_784178
.word 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000003, SetBattleFlagBits, 0x00000100, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000003, 0x00000043, 0x00000001, func_802693F0, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000005, GetGoalPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000028, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x00010008, 0x00010009, 0x00000043, 0x00000003, SetActorJumpGravity, 0x00000000, 0xF24A7FB4, 0x00000043, 0x00000005, SetGoalPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000001, battle_move_shrink_stomp_UnkMoveFunc1, 0x00000043, 0x00000004, func_80273444, 0xFE363C80, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010009, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000004, func_80273444, 0x00000006, 0x00000000, 0x00000002, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010009, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A9A80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000003, SetBattleFlagBits, 0x00000100, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000003, 0x00000043, 0x00000001, func_802693F0, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x00000032, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000043, 0x00000005, SetGoalPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x00010008, 0x00010009, 0x00000043, 0x00000003, SetActorJumpGravity, 0x00000000, 0xF24A7DB4, 0x00000043, 0x00000001, battle_move_shrink_stomp_UnkMoveFunc1, 0x00000043, 0x00000004, func_80273444, 0xFE363C80, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010009, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0xFFFFFFE2, 0x00000000, 0x00000000, 0x00000043, 0x00000004, func_80273444, 0x00000006, 0x00000000, 0x00000002, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010009, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A9A80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A19B0_784550
.word 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000003, SetBattleFlagBits, 0x00000100, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x0000001D, 0x00000043, 0x00000001, func_802693F0, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x00000028, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000043, 0x00000005, SetGoalPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x00010008, 0x00010009, 0x00000043, 0x00000003, SetActorJumpGravity, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000001, battle_move_shrink_stomp_UnkMoveFunc1, 0x00000043, 0x00000004, func_80273444, 0xFE363C80, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010009, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000004, func_80273444, 0x00000006, 0x00000000, 0x00000002, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010009, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A9A80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000003, SetBattleFlagBits, 0x00000100, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000003, 0x00000043, 0x00000001, func_802693F0, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x0000003C, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000043, 0x00000005, SetGoalPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x00010008, 0x00010009, 0x00000043, 0x00000003, SetActorJumpGravity, 0x00000000, 0xF24A7DB4, 0x00000043, 0x00000001, battle_move_shrink_stomp_UnkMoveFunc1, 0x00000043, 0x00000004, func_80273444, 0xFE363C80, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010009, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000004, func_80273444, 0x00000006, 0x00000000, 0x00000002, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010009, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A9A80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000003, SetBattleFlagBits, 0x00000100, 0x00000000, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000003, 0x00000043, 0x00000001, func_802693F0, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000005, GetGoalPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x0000003C, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000043, 0x00000005, SetGoalPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, SetActorJumpGravity, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010017, 0x00010017, 0x00010009, 0x00000043, 0x00000001, battle_move_shrink_stomp_UnkMoveFunc1, 0x00000043, 0x00000004, func_80273444, 0xFE363C80, 0x00000000, 0x00000000, 0x00000058, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000004, 0xF24A7E80, 0x00000059, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0xFFFFFFE2, 0x00000000, 0x00000000, 0x00000043, 0x00000004, func_80273444, 0x00000008, 0x00000000, 0x00000002, 0x00000058, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000004, 0xF24A7E80, 0x00000059, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0xFFFFFFEC, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetGoalPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, func_80273444, 0x00000006, 0x00000000, 0x00000002, 0x00000058, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000004, 0xF24A7E80, 0x00000059, 0x00000000, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000004, func_80273444, 0x00000004, 0x00000000, 0x00000002, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A1FEC_784B8C
.word 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0001000C, 0x00000043, 0x00000001, PlayerLandJump, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0001000C, 0x00000008, 0x00000001, 0x00000002, 0x00000058, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000005, 0xF24A7E80, 0x00000059, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00000162, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010030, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010031, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, SetBattleFlagBits, 0x00000100, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000003, 0x00000043, 0x00000001, func_802693F0, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A9A80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A2184_784D24
.word 0x00000043, 0x00000002, LoadActionCommand, 0x00000001, 0x00000043, 0x00000001, func_802A9000_4219F0, 0x00000046, 0x00000001, D_802A11AC_783D4C, 0x00000046, 0x00000001, D_802A1320_783EC0, 0x00000043, 0x00000003, func_802A9120_421B10, 0xFE363C8A, 0x00000003, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000022, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x00010008, 0x00030000, 0x00000043, 0x00000003, func_80274A18, 0xFE363C8A, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, LoadActionCommand, 0x00000001, 0x00000043, 0x00000001, func_802A9000_4219F0, 0x00000046, 0x00000001, D_802A11AC_783D4C, 0x00000043, 0x00000001, InitTargetIterator, 0x00000046, 0x00000001, D_802A1408_783FA8, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C8A, 0x00000027, 0x00000002, 0xFE363C8B, 0x0000000E, 0x00000027, 0x00000002, 0xFE363C8B, 0xFFFFFFFD, 0x00000043, 0x00000003, func_802A9120_421B10, 0xFE363C8B, 0x00000003, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000025, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x0001000A, 0x0001000B, 0x00000043, 0x00000003, func_802752AC, 0xFE363C8A, 0x00000000, 0x00000008, 0x00000001, 0x00000007, 0x00000043, 0x00000002, DidActionSucceed, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000019, 0x00000001, 0x00000000, 0x00000043, 0x00000003, func_802752AC, 0x00000003, 0x00000001, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, func_802752AC, 0x00000005, 0x00000001, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, LoadActionCommand, 0x00000001, 0x00000043, 0x00000001, func_802A9000_4219F0, 0x00000046, 0x00000001, D_802A11AC_783D4C, 0x00000046, 0x00000001, D_802A14F0_784090, 0x00000043, 0x00000002, func_8026919C, D_802A10F0_783C90, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C8A, 0x00000028, 0x00000002, 0xFE363C8B, 0x00000004, 0x00000027, 0x00000002, 0xFE363C8B, 0xFFFFFFFD, 0x00000043, 0x00000003, func_802A9120_421B10, 0xFE363C8B, 0x00000003, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000026, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x00080000, 0x00030000, 0x00000043, 0x00000003, func_80275F00, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000001, CloseActionCommandInfo, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000002, DidActionSucceed, 0xFE363C80, 0x0000000D, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030000, 0x00000043, 0x00000005, SetActorRotation, 0xFFFFFF81, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetActorDispOffset, 0xFFFFFF81, 0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000005, SetActorDispOffset, 0xFFFFFF81, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, LoadActionCommand, 0x00000001, 0x00000043, 0x00000001, func_802A9000_4219F0, 0x00000043, 0x00000003, func_802A9120_421B10, 0x0000000D, 0x00000003, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000027, 0x00000043, 0x00000003, func_80275F00, 0x0000000F, 0x00000002, 0x00000004, 0x00000001, 0x0000000A, 0x00000012, 0x00000000, 0x00000043, 0x00000002, LoadActionCommand, 0x00000001, 0x00000043, 0x00000001, func_802A9000_4219F0, 0x00000043, 0x00000003, func_802A9120_421B10, 0x00000002, 0x00000003, 0x00000043, 0x00000003, func_80275F00, 0x00000004, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802694A4, 0x00000001, 0x00000043, 0x00000004, GetMenuSelection, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000014, 0x00000001, 0xFE363C81, 0x00000016, 0x00000001, 0x00000000, 0x00000046, 0x00000001, D_802A2694_785234, 0x00000016, 0x00000001, 0x00000001, 0x00000046, 0x00000001, D_802A2978_785518, 0x00000016, 0x00000001, 0x00000002, 0x00000046, 0x00000001, D_802A2C8C_78582C, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A2694_785234
.word 0x00000046, 0x00000001, D_802A2184_784D24, 0x00000043, 0x00000007, PlayerTestEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000006, 0x00000046, 0x00000001, D_802A1FEC_784B8C, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, DidActionSucceed, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000019, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetActorSounds, 0x00000000, 0x00000003, 0x0000015A, 0x00000000, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x8008034B, 0x00000001, 0x00000050, 0x0000001C, 0x00000000, 0x00000043, 0x00000005, SetActorSounds, 0x00000000, 0x00000003, 0x0000015B, 0x00000000, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x8008034B, 0x00000001, 0x00000030, 0x00000023, 0x00000000, 0x00000014, 0x00000001, 0xFE363C80, 0x0000001D, 0x00000001, 0x00000000, 0x0000001D, 0x00000001, 0x00000002, 0x00000046, 0x00000001, D_802A19B0_784550, 0x00000002, 0x00000000, 0x00000020, 0x00000000, 0x0000001D, 0x00000001, 0x00000001, 0x0000001D, 0x00000001, 0x00000003, 0x00000020, 0x00000000, 0x00000023, 0x00000000, 0x00000058, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x0000001B, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000023, 0x00000059, 0x00000000, 0x00000043, 0x00000002, func_80269524, 0xFE363C8F, 0x00000043, 0x00000001, CloseActionCommandInfo, 0x00000043, 0x00000002, LoadActionCommand, 0x00000001, 0x00000043, 0x00000001, func_802A9000_4219F0, 0x00000043, 0x00000002, func_802694A4, 0x00000000, 0x00000043, 0x00000003, func_802A9120_421B10, 0x00000018, 0x00000003, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x00010008, 0x0001000C, 0x00000043, 0x00000003, func_80274A18, 0x00000018, 0x00000003, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000015A, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x80080364, 0x00000001, 0x000000E0, 0x00000043, 0x00000002, func_80269550, 0xFE363C8F, 0x00000046, 0x00000001, D_802A15D8_784178, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A2978_785518
.word 0x00000046, 0x00000001, D_802A2184_784D24, 0x00000043, 0x00000007, PlayerTestEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000006, 0x00000046, 0x00000001, D_802A1FEC_784B8C, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, DidActionSucceed, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000019, 0x00000001, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000015B, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x8008034B, 0x00000002, 0x00000050, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000015B, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x8008034B, 0x00000002, 0x00000030, 0x00000023, 0x00000000, 0x00000014, 0x00000001, 0xFE363C80, 0x0000001D, 0x00000001, 0x00000000, 0x0000001D, 0x00000001, 0x00000002, 0x00000046, 0x00000001, D_802A19B0_784550, 0x00000002, 0x00000000, 0x00000020, 0x00000000, 0x0000001D, 0x00000001, 0x00000001, 0x0000001D, 0x00000001, 0x00000003, 0x00000020, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000002, func_80269524, 0xFE363C8F, 0x00000058, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x0000001B, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000023, 0x00000059, 0x00000000, 0x00000043, 0x00000001, CloseActionCommandInfo, 0x00000043, 0x00000002, LoadActionCommand, 0x00000001, 0x00000043, 0x00000001, func_802A9000_4219F0, 0x00000043, 0x00000002, func_802694A4, 0x00000000, 0x00000043, 0x00000003, func_802A9120_421B10, 0x00000025, 0x00000003, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000002, EnablePlayerBlur, 0x00000001, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x0001000A, 0x0001000B, 0x00000043, 0x00000003, func_802752AC, 0x00000014, 0x00000004, 0x00000008, 0x00000001, 0x00000007, 0x00000043, 0x00000003, func_802752AC, 0x00000003, 0x00000005, 0x00000043, 0x00000002, EnablePlayerBlur, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000015B, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x80080364, 0x00000002, 0x000000E0, 0x00000043, 0x00000002, func_80269550, 0xFE363C8F, 0x00000046, 0x00000001, D_802A15D8_784178, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802A2C8C_78582C
.word 0x00000046, 0x00000001, D_802A2184_784D24, 0x00000043, 0x00000007, PlayerTestEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000006, 0x00000046, 0x00000001, D_802A1FEC_784B8C, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, DidActionSucceed, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000019, 0x00000001, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000015C, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x8008034B, 0x00000003, 0x00000050, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000015C, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x8008034B, 0x00000003, 0x00000030, 0x00000023, 0x00000000, 0x00000014, 0x00000001, 0xFE363C80, 0x0000001D, 0x00000001, 0x00000000, 0x0000001D, 0x00000001, 0x00000002, 0x00000046, 0x00000001, D_802A19B0_784550, 0x00000002, 0x00000000, 0x00000020, 0x00000000, 0x0000001D, 0x00000001, 0x00000001, 0x0000001D, 0x00000001, 0x00000003, 0x00000020, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000002, func_80269524, 0xFE363C8F, 0x00000058, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x0000001C, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000002, UseBattleCamPreset, 0x00000023, 0x00000059, 0x00000000, 0x00000043, 0x00000001, CloseActionCommandInfo, 0x00000043, 0x00000002, LoadActionCommand, 0x00000001, 0x00000043, 0x00000001, func_802A9000_4219F0, 0x00000043, 0x00000002, func_802694A4, 0x00000000, 0x00000043, 0x00000003, func_802A9120_421B10, 0x00000019, 0x00000003, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000002, EnablePlayerBlur, 0x00000001, 0x00000043, 0x00000006, SetJumpAnimations, 0x00000000, 0x00000000, 0x00010007, 0x00010007, 0x0001000C, 0x00000043, 0x00000003, func_80275F00, 0x00000019, 0x00000004, 0x00000043, 0x00000002, EnablePlayerBlur, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000015C, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x00000080, 0x00000000, 0x80080364, 0x00000003, 0x000000E0, 0x00000043, 0x00000002, func_80269550, 0xFE363C8F, 0x00000046, 0x00000001, D_802A15D8_784178, 0x00000002, 0x00000000, 0x00000001, 0x00000000

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel make_item_entity_nodelay
/* C8194 80131A94 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* C8198 80131A98 8FA20038 */  lw        $v0, 0x38($sp)
/* C819C 80131A9C 8FA8003C */  lw        $t0, 0x3c($sp)
/* C81A0 80131AA0 2403FFFF */  addiu     $v1, $zero, -1
/* C81A4 80131AA4 AFBF0020 */  sw        $ra, 0x20($sp)
/* C81A8 80131AA8 AFA00014 */  sw        $zero, 0x14($sp)
/* C81AC 80131AAC AFA30018 */  sw        $v1, 0x18($sp)
/* C81B0 80131AB0 AFA20010 */  sw        $v0, 0x10($sp)
/* C81B4 80131AB4 0C04C4FD */  jal       make_item_entity
/* C81B8 80131AB8 AFA8001C */   sw       $t0, 0x1c($sp)
/* C81BC 80131ABC 8FBF0020 */  lw        $ra, 0x20($sp)
/* C81C0 80131AC0 03E00008 */  jr        $ra
/* C81C4 80131AC4 27BD0028 */   addiu    $sp, $sp, 0x28

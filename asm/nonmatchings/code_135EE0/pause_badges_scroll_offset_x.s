.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pause_badges_scroll_offset_x
/* 13A5E8 802472A8 03E00008 */  jr        $ra
/* 13A5EC 802472AC 0080102D */   daddu    $v0, $a0, $zero

#include "isk_04.h"

#include "world/common/set_script_owner_npc_anim.inc.c"

INCLUDE_ASM(s32, "world/area_isk/isk_04/97B670", func_802400BC_97B6EC);
/*
void N(func_802400BC_97B6EC)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    if ((npc->duration <= 0) || (--npc->duration <= 0)) {
        if (npc->turnAroundYawAdjustment == 0) {
            npc->currentAnim = enemy->animList[9];
            npc->moveSpeed = aiSettings->chaseSpeed;
            if ((enemy->varTable[7] == 5) || (enemy->varTable[7] == 0) || (enemy->varTable[7] == 1)) {
                npc->collisionHeight = enemy->varTable[6] / 2;
            }
            npc->duration = (dist2D(npc->pos.x, npc->pos.z, gPlayerStatusPtr->position.x, gPlayerStatusPtr->position.z) / npc->moveSpeed) + 0.8;
            if (npc->duration < enemy->varTable[3]) {
                npc->duration = enemy->varTable[3];
            }
            enemy->varTable[4] = npc->duration;
            script->functionTemp[0].s = 14;
        }
    }
}
*/

#include "world/common/UnkNpcAIFunc12.inc.c"

#include "world/common/set_script_owner_npc_col_height.inc.c"

INCLUDE_ASM(s32, "world/area_isk/isk_04/97B670", func_802403D4_97BA04);

#include "world/common/AwaitPlayerNearNpc.inc.c"

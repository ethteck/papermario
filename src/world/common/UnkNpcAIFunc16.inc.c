#include "common.h"
#include "map.h"

void N(UnkNpcAIFunc16)(ScriptInstance* script, NpcAISettings* aiSettings, s32 arg2) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    npc->duration = enemy->varTable[10];
    npc->currentAnim = enemy->animList[13];
    script->functionTemp[0].s = 21;
}

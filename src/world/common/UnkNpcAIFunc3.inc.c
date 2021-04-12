#include "common.h"
#include "map.h"

void N(UnkNpcAIFunc3)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
    Npc* npc = get_npc_unsafe(script->owner1.enemy->npcID);

    if ((npc->duration <= 0) || (--npc->duration <= 0)) {
        if (npc->unk_8C == 0) {
            npc->duration = 0;
            script->functionTemp[0].s = 14;
        }
    }
}

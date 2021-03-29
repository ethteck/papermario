#include "common.h"
#include "map.h"

void N(UnkDurationCheck)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing* shape) {
    Npc* npc = get_npc_unsafe(script->owner1.enemy->npcID);

    npc->duration--;
    if (npc->duration <= 0) {
        script->functionTemp[0].s = 0;
    }
}
